import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raft_ui/raft_ui.dart';

/// `RaftPanelIconButton` follows `panelAction.surface` (contract section 4).
///
/// Raft: raft-ui 0.7.0 `PanelAction` (`panelActionBase`: `h-11 min-w-11` below md,
/// `md:h-8 md:min-w-8`, `rounded-control`, svg `22px` / `md:18px`), read from the
/// pack. Elegant and Brutal keep the a57b9dab `Button icon-sm outline`.
Widget _host(
  RaftThemePack pack, {
  bool dark = false,
  VoidCallback? onPressed,
}) => MaterialApp(
  theme: raftTheme(pack: pack, dark: dark),
  home: Scaffold(
    body: Center(
      child: RaftPanelIconButton(
        glyph: RaftGlyph.ellipsisVertical,
        tooltip: 'More',
        onPressed: onPressed,
      ),
    ),
  ),
);

RaftThemePack _user(Map<String, Object?> geometry) => RaftThemePack.parse(
  jsonEncode({
    'format': 'raft-theme/1',
    'id': 'user:panel-icon-fixture',
    'name': 'Panel icon fixture',
    'version': '1.0.0',
    'extends': 'raft',
    'modes': {
      'light': {'geometry': geometry},
      'dark': <String, Object?>{},
    },
  }),
);

Size _glyph(WidgetTester t) =>
    Size.square(t.widget<RaftIcon>(find.byType(RaftIcon)).size);

double _radius(WidgetTester t) {
  final box = t
      .widgetList<DecoratedBox>(
        find.descendant(
          of: find.byType(RaftPanelIconButton),
          matching: find.byType(DecoratedBox),
        ),
      )
      .map((b) => b.decoration)
      .whereType<BoxDecoration>()
      .firstWhere((d) => d.borderRadius != null);
  return (box.borderRadius! as BorderRadius).topLeft.x;
}

void main() {
  Future<void> viewport(WidgetTester t, double width) async {
    t.view.physicalSize = Size(width, 800);
    t.view.devicePixelRatio = 1;
    addTearDown(t.view.resetPhysicalSize);
    addTearDown(t.view.resetDevicePixelRatio);
  }

  testWidgets('Raft: 44px with a 22px glyph below md, 32px with 18px from md', (
    t,
  ) async {
    await viewport(t, 390);
    await t.pumpWidget(
      _host(packForThemeId(raftThemePackId), onPressed: () {}),
    );
    expect(t.getSize(find.byType(RaftPanelIconButton)), const Size(44, 44));
    expect(_glyph(t), const Size.square(22));
    expect(_radius(t), 8);
    await viewport(t, 800);
    await t.pumpWidget(
      _host(packForThemeId(raftThemePackId), onPressed: () {}),
    );
    expect(t.getSize(find.byType(RaftPanelIconButton)), const Size(32, 32));
    expect(_glyph(t), const Size.square(18));
    expect(t.takeException(), isNull);
  });

  testWidgets('a user pack moves the Raft panel action', (t) async {
    await viewport(t, 390);
    await t.pumpWidget(
      _host(
        _user({
          'size.control.lg': 60,
          'size.buttonGlyph.iconLg': 30,
          'radius.control': 25,
        }),
        onPressed: () {},
      ),
    );
    expect(t.getSize(find.byType(RaftPanelIconButton)), const Size(60, 60));
    expect(_glyph(t), const Size.square(30));
    expect(_radius(t), 25);
    expect(t.takeException(), isNull);
  });

  for (final id in [elegantThemePackId, brutalThemePackId]) {
    testWidgets('$id keeps the a57b9dab outline Button icon-sm', (t) async {
      for (final width in [390.0, 800.0]) {
        await viewport(t, width);
        await t.pumpWidget(_host(packForThemeId(id), onPressed: () {}));
        expect(t.getSize(find.byType(RaftPanelIconButton)), const Size(28, 28));
        expect(_glyph(t), const Size.square(14));
      }
      expect(t.takeException(), isNull);
    });
  }
}
