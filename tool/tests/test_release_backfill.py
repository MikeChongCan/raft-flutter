import importlib.util
import json
from pathlib import Path
import sys
import unittest
from unittest.mock import patch


TOOL = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOL))
SPEC = importlib.util.spec_from_file_location('release_backfill', TOOL / 'release_backfill.py')
backfill = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(backfill)


class ReleaseBackfillTests(unittest.TestCase):
    tag = 'v1.21.23+10'
    commit = '5e7f6f56863e5af2cf6fae174b795880dffa3ca9'

    def remote(self, **changes):
        metadata = {'tag': self.tag, 'version': '1.21.23', 'buildNumber': '87',
                    'commit': self.commit, 'platforms': [{'platform': 'macos', 'arch': 'arm64'}], **changes}
        return {'tag_name': self.tag, 'body': f'<!-- raft-release:{json.dumps(metadata)} -->'}

    def test_original_provenance_reuses_build_number_instead_of_new_workflow_counter(self):
        identity = backfill.validate_release(self.remote(), self.tag, self.commit, '87')
        self.assertEqual(identity, {'version': '1.21.23', 'build_number': '87',
                                    'tag': self.tag, 'asset_version': '1.21.23+10'})

    def test_wrong_source_number_tag_or_platform_stops(self):
        for change in ({'commit': 'a' * 40}, {'buildNumber': '88'}, {'tag': 'v1.21.23+11'},
                       {'platforms': [{'platform': 'windows', 'arch': 'x64'}]}):
            with self.subTest(change=change), self.assertRaises(ValueError):
                backfill.validate_release(self.remote(**change), self.tag, self.commit, '87')

    def test_branch_names_short_hashes_and_shell_payloads_are_rejected(self):
        for tag, sha, number in [('main', self.commit, '87'), (self.tag, '5e7f6f568', '87'),
                                 (self.tag + '; echo bad', self.commit, '87'),
                                 (self.tag, self.commit, '87\n'), (self.tag, self.commit, '0')]:
            with self.subTest(tag=tag, sha=sha, number=number), self.assertRaises(ValueError):
                backfill.validate_inputs(tag, sha, number)

    def test_checkout_and_tag_both_have_to_match(self):
        for responses in ([self.commit, 'a' * 40], ['a' * 40], [self.commit, self.commit, ' M tracked']):
            with self.subTest(responses=responses), patch.object(backfill.subprocess, 'check_output',
                    side_effect=[s + '\n' for s in responses]), self.assertRaises(ValueError):
                backfill.checked_source(Path('/source'), self.tag, self.commit)

    def test_normal_publisher_still_rejects_manual_events(self):
        with patch.dict(backfill.release.os.environ, {'GITHUB_EVENT_NAME': 'workflow_dispatch'}), \
                self.assertRaisesRegex(ValueError, 'version-tag push'):
            backfill.release.publish('macos')


if __name__ == '__main__':
    unittest.main()
