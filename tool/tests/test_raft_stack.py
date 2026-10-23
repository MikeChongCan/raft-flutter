"""tool/raft-stack: multi-config selection, version patches, env and flag SQL."""
import hashlib
import importlib.machinery
import importlib.util
import json
import os
import pathlib
import subprocess
import tempfile
import unittest

ROOT = pathlib.Path(__file__).resolve().parents[2]
_loader = importlib.machinery.SourceFileLoader('raft_stack_cli', str(ROOT / 'tool/raft-stack'))
_spec = importlib.util.spec_from_loader('raft_stack_cli', _loader)
stack = importlib.util.module_from_spec(_spec)
_loader.exec_module(stack)

PATCH_DIR = ROOT / 'tool/reference-patches'


class ArgsTest(unittest.TestCase):
    def test_default_config_and_explicit_config(self):
        self.assertEqual(stack.parse_args(['start']), (stack.LOCAL / 'stack.json', 'start'))
        config, action = stack.parse_args(['--config', '/x/y.json', 'flags'])
        self.assertEqual((config, action), (pathlib.Path('/x/y.json'), 'flags'))

    def test_bad_usage_exits(self):
        for argv in ([], ['restart'], ['--config'], ['--config', 'a.json'], ['start', 'stop']):
            with self.assertRaises(SystemExit):
                stack.parse_args(argv)


class PatchSelectionTest(unittest.TestCase):
    def test_legacy_config_keeps_original_patches(self):
        self.assertEqual(stack.select_patches({}), ['seed-history', 'risingwave-memory'])

    def test_version_specific_patch_wins_and_others_fall_back(self):
        names = stack.select_patches({'sourceVersion': 'v1.21.23'})
        self.assertEqual(names, ['seed-history', 'risingwave-memory-v1.21.23'])

    def test_unknown_version_falls_back_and_patches_can_be_narrowed(self):
        self.assertEqual(stack.select_patches({'sourceVersion': 'v9.9.9'}), ['seed-history', 'risingwave-memory'])
        self.assertEqual(stack.select_patches({'patches': ['risingwave-memory']}), ['risingwave-memory'])

    def test_every_patch_manifest_has_matching_patch_and_hashes(self):
        for manifest in PATCH_DIR.glob('risingwave-memory*.json'):
            data = json.loads(manifest.read_text())
            self.assertTrue(manifest.with_suffix('.patch').exists(), manifest.name)
            self.assertEqual(len(data['beforeSHA256']), 64)
            self.assertEqual(len(data['afterSHA256']), 64)
            self.assertNotEqual(data['beforeSHA256'], data['afterSHA256'])


class ApplyPatchesTest(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        base = pathlib.Path(self.tmp.name)
        self.source = base / 'source'
        self.patches = base / 'patches'
        self.source.mkdir()
        self.patches.mkdir()
        subprocess.run(['git', 'init', '-q'], cwd=self.source, check=True)
        self.target = self.source / 'a.txt'
        self.target.write_text('one\ntwo\nthree\n')
        subprocess.run(['git', 'add', 'a.txt'], cwd=self.source, check=True)
        diff = ('--- a/a.txt\n+++ b/a.txt\n@@ -1,3 +1,3 @@\n one\n-two\n+TWO\n three\n')
        (self.patches / 'p.patch').write_text(diff)
        sha = lambda text: hashlib.sha256(text.encode()).hexdigest()
        (self.patches / 'p.json').write_text(json.dumps({
            'path': 'a.txt', 'beforeSHA256': sha('one\ntwo\nthree\n'), 'afterSHA256': sha('one\nTWO\nthree\n')}))

    def test_applies_once_and_is_idempotent(self):
        stack.apply_patches(self.source, ['p'], self.patches)
        self.assertEqual(self.target.read_text(), 'one\nTWO\nthree\n')
        stack.apply_patches(self.source, ['p'], self.patches)
        self.assertEqual(self.target.read_text(), 'one\nTWO\nthree\n')

    def test_refuses_unknown_file_state(self):
        self.target.write_text('something else\n')
        with self.assertRaises(SystemExit):
            stack.apply_patches(self.source, ['p'], self.patches)
        self.assertEqual(self.target.read_text(), 'something else\n')


class EnvTest(unittest.TestCase):
    CONFIG = {'toolchain': {'binDir': '/opt/node/bin', 'env': {'COREPACK_HOME': '~/cp', 'COREPACK_ENABLE_DOWNLOAD_PROMPT': '0'}}}

    def test_env_strips_npm_config_and_sets_local_only_flags(self):
        env = stack.build_env(self.CONFIG, {'PATH': '/usr/bin', 'npm_config_call': 'x', 'NPM_CONFIG_package': 'y', 'HOME': '/h'})
        self.assertNotIn('npm_config_call', env)
        self.assertNotIn('NPM_CONFIG_package', env)
        self.assertTrue(env['PATH'].startswith('/opt/node/bin' + os.pathsep))
        self.assertEqual((env['SLOCKDEV_TUNNEL'], env['SLOCKDEV_IDLE_TTL_SECONDS'], env['SLOCKDEV_TRACE_OBSERVE']), ('0', '0', '0'))
        self.assertIn('@sha256:', env['RAFTDEV_RISINGWAVE_IMAGE'])
        self.assertEqual(env['COREPACK_HOME'], os.path.expanduser('~/cp'))

    def test_wrapper_dir_exports_env_for_tmux_windows(self):
        with tempfile.TemporaryDirectory() as tmp:
            directory = stack.write_wrapper_dir(self.CONFIG, pathlib.Path(tmp) / 'w')
            script = (directory / 'pnpm').read_text()
            self.assertIn('export COREPACK_ENABLE_DOWNLOAD_PROMPT=0', script)
            self.assertIn('exec /opt/node/bin/pnpm "$@"', script)
            self.assertTrue(os.access(directory / 'pnpm', os.X_OK))
            env = stack.build_env(self.CONFIG, {'PATH': '/usr/bin'}, directory)
            self.assertTrue(env['PATH'].startswith(str(directory) + os.pathsep + '/opt/node/bin'))

    def test_no_wrapper_without_toolchain_env(self):
        self.assertIsNone(stack.write_wrapper_dir({'toolchain': {'binDir': '/opt/node/bin'}}, pathlib.Path('/nonexistent/w')))


class FlagSqlTest(unittest.TestCase):
    SERVER = '0530fbb6-4480-47ec-9e0b-7be783818f39'

    def test_sql_is_idempotent_and_scoped_to_server(self):
        sql = stack.feature_flag_sql(['raftbench_overview_v0'], self.SERVER)
        self.assertIn('ON CONFLICT (key) DO NOTHING', sql)
        self.assertIn('WHERE NOT EXISTS', sql)
        self.assertIn("default_enabled", sql)
        self.assertIn(self.SERVER, sql)
        self.assertTrue(sql.startswith('BEGIN;') and sql.rstrip().endswith('COMMIT;'))

    def test_rejects_unsafe_input(self):
        with self.assertRaises(SystemExit):
            stack.feature_flag_sql(["x'; DROP TABLE feature_flags;--"], self.SERVER)
        with self.assertRaises(SystemExit):
            stack.feature_flag_sql(['ok_flag'], "x' OR '1'='1")


if __name__ == '__main__':
    unittest.main()
