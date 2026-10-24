#!/usr/bin/env python3
"""Mounted Web MainLayout versus the real Flutter workspace navigation.

Explicit Raft theme identities avoid the historical brutal-light label. Old
Elegant/Brutal references remain the immutable a57b9dab captures, not this Web.
"""
import json
from pathlib import Path

from builders import manifest_path

ORDER = 1100
HERE = Path(__file__).resolve().parent
shell = json.loads((HERE / 'fixtures/shell.json').read_text())
base = shell['presets']['default']
order = {
    'pinned': base['pinned'], 'customSections': base['customSections'],
    'sectionOrder': base['sectionOrder'], 'sectionPlacements': base['placements'],
    'channelSortMode': 'manual', 'jointChannelSortMode': 'manual',
    'dmSortMode': 'manual', 'pinnedSortMode': 'manual',
}
# Scoped by extFixture: these reads must not replace another family's fixture.
routes = {
    **shell['routes'],
    'GET /channels': shell['channels'],
    'GET /channels/dm': shell['dms'],
    'GET /servers/visual-server/sidebar-order': order,
    'GET /servers/visual-server/machines': {'machines': [], 'latestComputerVersion': None},
    'GET /channels/threads/followed': {'threads': []},
    'POST /feature-flags/evaluate': {'evaluations': []},
    'GET /channels/unread': {
        key: {'unreadCount': value, 'hasMention': key in base['mentions'], 'hasAnyMention': key in base['mentions']}
        for key, value in base['unread'].items()
    },
    **{f'GET /tasks/channel/{channel["id"]}': {'tasks': []} for channel in shell['channels']},
}
(HERE / 'fixtures/framework.json').write_text(json.dumps({'routes': routes}, indent=1) + '\n')

viewports = {
    'desktop': {'width': 1280, 'height': 800, 'density': 1},
    'mobile': {'width': 390, 'height': 844, 'density': 3},
    'tablet': {'width': 856, 'height': 944, 'density': 3},
}
cases = []
for platform, viewport in viewports.items():
    for mode in ['light', 'dark']:
        for region in (['frame'] if platform == 'mobile' else ['frame', 'navigation']):
            name = f'components.framework.{platform}.{region}.default.raft-{mode}'
            cases.append({
                'id': name, 'title': f'Mounted native-content framework {region}, {platform}, Raft {mode}',
                'captureType': 'component-fixture', 'surface': 'framework',
                'category': 'extension/framework', 'suite': 'raft-flutter-extension',
                'viewport': {**viewport, 'touch': platform != 'desktop'},
                'theme': f'raft-{mode}', 'locale': 'en',
                'variants': [{'id': 'default', 'name': 'Default', 'props': {
                    'extKind': 'framework', 'extFixture': 'framework', 'platform': platform,
                    'preset': 'mobile' if platform == 'mobile' else 'default',
                    'shell': 'browser' if platform == 'mobile' else 'desktop',
                    'region': region, 'parityTheme': f'raft-{mode}',
                    'captureTimeoutMs': 120000,
                }}],
                'capture': {
                    'selector': f'[data-testid="framework-{region if region == "navigation" else "shell"}"]',
                    'metadataSelector': ':is([data-testid="workspace-left-rail"], [data-testid="sidebar-root"])'
                                        if region == 'navigation' else '[data-testid="framework-shell"]',
                    'crop': 'element', 'contract': 'component-bounds',
                    'androidKey': f'framework-{region}',
                },
                'reactPathHint': 'packages/web/src/components/layout/MainLayout.tsx',
                'androidCaseHint': 'apps/raft_flutter/test/parity/cases/ext_framework.dart',
                'tolerance': {'pixelRatio': 0.02, 'layoutDp': 1, 'ignoreAntialiasing': True},
            })
path = manifest_path()
manifest = json.loads(path.read_text())
manifest['cases'] = [c for c in manifest['cases'] if not c['id'].startswith('components.framework.')] + cases
path.write_text(json.dumps(manifest, indent=1) + '\n')
print(f'{len(cases)} mounted framework cases appended')
