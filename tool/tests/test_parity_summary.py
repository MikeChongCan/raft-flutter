"""Summaries preserve variant identity without re-reading the manifest per row."""
import importlib.machinery
import importlib.util
import json
import sys
from pathlib import Path
import tempfile
import unittest
from unittest import mock

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'tool'))
loader = importlib.machinery.SourceFileLoader('parity_summary_test_adapter', str(ROOT / 'tool/parity'))
parity = importlib.util.module_from_spec(importlib.util.spec_from_loader(loader.name, loader))
loader.exec_module(parity)


class SummaryManifestTest(unittest.TestCase):
    def test_manifest_read_once_and_exact_variant_identity_preserved(self):
        with tempfile.TemporaryDirectory() as temp:
            results = Path(temp)
            (results / 'diff').mkdir()
            rows = [
                {'id': 'a', 'status': 'same', 'baselineImage': 'a.png', 'currentImage': 'a2.png',
                 'metrics': {'pixelPerfectSimilarity': 1.0}},
                {'id': 'b', 'status': 'different', 'baselineImage': 'b.png', 'currentImage': 'b2.png',
                 'metrics': {'pixelPerfectSimilarity': 0.6124284511784511}},
                {'id': 'missing', 'status': 'missing'},
            ]
            (results / 'diff' / f'{parity.PAIR}.json').write_text(json.dumps({'results': rows}))
            (results / 'android-case-map.json').write_text(json.dumps({
                key: {'status': 'mapped'} for key in ('a', 'b')
            }))
            manifest = [
                {'id': 'a', 'variants': [{'id': 'chosen-a'}]},
                {'id': 'b', 'variants': [{'id': 'chosen-b'}]},
                # Match the original first-match behavior even for a duplicate.
                {'id': 'a', 'variants': [{'id': 'later-a'}]},
            ]
            with mock.patch.object(parity, 'RESULTS', results), \
                    mock.patch.object(parity, 'OUT', results), \
                    mock.patch.object(parity, 'manifest_cases', return_value=manifest) as read_manifest, \
                    mock.patch.object(parity, 'git', return_value='test-head'):
                summary = parity.summarize()
            self.assertEqual([row['variant'] for row in summary['cases']], ['chosen-a', 'chosen-b', None])
            self.assertEqual([row['verdict'] for row in summary['cases']], ['passing', 'failing', 'not-covered'])
            self.assertEqual(summary['cases'][1]['pixelPerfectSimilarity'], 0.6124284511784511)
            self.assertEqual(summary['totals']['passing'], 1)
            self.assertEqual(summary['totals']['total'], 3)
            self.assertEqual(read_manifest.call_count, 1)


if __name__ == '__main__':
    unittest.main()
