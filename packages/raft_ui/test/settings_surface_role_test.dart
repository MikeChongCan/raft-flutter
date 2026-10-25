import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raft_theme/raft_theme.dart';
import 'package:raft_ui/raft_ui.dart';

/// Settings surfaces (Web v1.21.23 SettingsPanel.tsx): the Card is
/// `bg-layer-card` and the content div `bg-layer-canvas`. A pack states that
/// with `layer-settings-card` / `layer-settings-content`; without the roles
/// the a57b9dab surfaces stay (card = layer-panel, content = layer-panel, or
/// layer-card in the dark Feedback tab).
void main() {
  RaftTokens tokens(RaftThemePack pack, {bool dark = false}) =>
      RaftTokens.theme(pack: pack, dark: dark);

  test('a pack without the roles keeps the a57b9dab surfaces', () {
    for (final id in [elegantThemePackId, brutalThemePackId]) {
      final t = tokens(packForThemeId(id), dark: true);
      expect(RaftSettingsCard.decoration(t).color, t.panel);
      expect(RaftSettingsPanelFrame.feedbackSurface(t), t.colors['layer-card']);
    }
  });

  test('the roles move the card and the content surface', () {
    final base = tokens(packForThemeId(raftThemePackId), dark: true);
    final t = RaftTokens(
      true,
      {
        ...base.colors,
        'layer-settings-card': base.colors['layer-card']!,
        'layer-settings-content': base.colors['layer-canvas']!,
      },
      tokens: RaftTokenSet.of(raftThemeId(dark: true)),
      mode: RaftModeValues(),
    );
    expect(RaftSettingsCard.decoration(t).color, const Color(0xff242422));
    expect(RaftSettingsPanelFrame.feedbackSurface(t), const Color(0xff1b1b19));
  });
}
