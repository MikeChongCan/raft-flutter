"""Release-gate regression checks against the actual backfill workflow."""
import itertools
from pathlib import Path
import re
import unittest


WORKFLOW = Path(__file__).resolve().parents[2] / '.github/workflows/release-backfill.yml'


class BackfillWorkflowTests(unittest.TestCase):
    def test_publisher_requires_successful_linux_startup_and_fedora_checks(self):
        text = WORKFLOW.read_text()
        publish = text.split('\n  publish:\n', 1)[1]
        self.assertRegex(publish, r'needs: \[build, appimage-startup, appimage-compatibility\]')
        expression = re.search(r'if: >-\n(.*?)\n    needs:', publish, re.S).group(1).strip()
        expression = expression.removeprefix('${{').removesuffix('}}').strip()
        for platform, enabled, cancelled, build, startup, compatibility in itertools.product(
                ['macos', 'appimage'], [False, True], [False, True],
                ['success', 'failure', 'cancelled', 'skipped'],
                ['success', 'failure', 'cancelled', 'skipped'],
                ['success', 'failure', 'cancelled', 'skipped']):
            rendered = expression
            values = {'!cancelled()': not cancelled, 'inputs.publish': enabled,
                      'inputs.platform': platform, 'needs.build.result': build,
                      'needs.appimage-startup.result': startup,
                      'needs.appimage-compatibility.result': compatibility}
            for key, value in values.items():
                rendered = rendered.replace(key, repr(value))
            rendered = rendered.replace('&&', ' and ').replace('||', ' or ')
            allowed = eval(' '.join(rendered.split()), {'__builtins__': {}}, {})
            expected = enabled and not cancelled and build == 'success' and (
                platform != 'appimage' or (startup == 'success' and compatibility == 'success'))
            self.assertEqual(allowed, expected, (platform, enabled, cancelled, build, startup, compatibility))

    def test_startup_uses_original_source_and_preserves_failure_evidence(self):
        text = WORKFLOW.read_text()
        build = text.split('\n  appimage-startup:\n', 1)[1].split('\n  appimage-compatibility:\n', 1)[0]
        self.assertIn('runs-on: ubuntu-24.04', build)
        self.assertIn('ref: ${{ inputs.release_tag }}', build)
        self.assertIn('needs: build', build)
        self.assertIn("-screen 0 2880x1800x24", build)
        for mode in ['direct', 'extract']:
            self.assertIn(f'python tool/appimage-smoke.py --artifact "$artifact" --output build/appimage-smoke --mode {mode}', build)
        self.assertIn('working-directory: source', build)
        self.assertIn('if: always()', build)
        compatibility = text.split('\n  appimage-compatibility:\n', 1)[1].split('\n  publish:\n', 1)[0]
        self.assertIn('needs: build', compatibility)
        self.assertIn('ref: ${{ inputs.release_tag }}', compatibility)
        self.assertIn('fedora:44 bash /source/tool/appimage-fedora-test.sh', compatibility)
        self.assertNotIn('/dev/fuse', compatibility)
        self.assertIn('if: always()', compatibility)


if __name__ == '__main__':
    unittest.main()
