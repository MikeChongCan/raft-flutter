import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raft_theme/raft_theme.dart';
import 'package:raft_ui/raft_ui.dart';

void main() {
  for (final edge in ['inkBorder', 'ring']) {
    for (final motion in ['overlay', 'scale', 'offsetShadow']) {
      testWidgets('Select elevation stays independent of $edge/$motion', (
        t,
      ) async {
        TestGesture? mouse;
        addTearDown(() async {
          if (mouse != null) await mouse.removePointer();
          await t.pumpWidget(const SizedBox());
        });
        const shadow = RaftShadowSpec(
          offset: Offset(9, 7),
          blur: 0,
          spread: 0,
          color: Color(0xff123456),
        );
        final pack = RaftThemePack(
          id: 'independent-select',
          name: {'en': 'Independent select'},
          version: '1.0.0',
          light: RaftModeValues(
            colors: const {
              'layer-select': Color(0xffaabbcc),
              'layer-select-hover': Color(0xff8899aa),
            },
            shadows: const {
              'shadow.select': [shadow],
              'shadow.selectHover': [shadow],
              'shadow.selectPressed': [shadow],
              'shadow.selectFocus': [shadow],
            },
            options: {
              'press.effect': motion,
              'control.edge': edge,
              'control.sheen': 'none',
            },
          ).mergedWith(builtInRaftTheme.light),
          dark: builtInRaftTheme.dark,
        );
        await t.pumpWidget(
          MaterialApp(
            theme: raftTheme(pack: pack)
                .copyWith(platform: TargetPlatform.linux),
            home: Scaffold(
              body: Center(
                child: SizedBox(
                  width: 300,
                  child: RaftSelectField<String>(
                    value: 'a',
                    items: const [
                      DropdownMenuItem(value: 'a', child: Text('Alpha')),
                    ],
                    onChanged: (_) {},
                  ),
                ),
              ),
            ),
          ),
        );
        await t.pumpAndSettle();
        void expectElevation() {
          final box = t.widget<RaftRecipeBox>(find.byType(RaftRecipeBox).first);
          final layers = box.style.cssShadows(box.tokens);
          expect(
            layers.where((layer) => layer.offset == shadow.offset),
            hasLength(1),
          );
          expect(
            layers.singleWhere((layer) => layer.offset == shadow.offset).color,
            shadow.color,
          );
        }

        Color? fill() {
          final box = t.widget<RaftRecipeBox>(find.byType(RaftRecipeBox).first);
          return box.style.backgroundColor?.resolve(box.tokens);
        }

        expectElevation();
        expect(fill(), const Color(0xffaabbcc));
        await t.sendKeyEvent(LogicalKeyboardKey.tab);
        await t.pumpAndSettle();
        expectElevation();
        mouse = await t.createGesture(kind: PointerDeviceKind.mouse);
        await mouse.addPointer(location: const Offset(1, 1));
        final center = t.getCenter(find.byType(RaftSelectField<String>));
        await mouse.moveTo(center);
        await t.pump(const Duration(milliseconds: 200));
        expectElevation();
        expect(fill(), const Color(0xff8899aa));
        await mouse.down(center);
        await t.pump(const Duration(milliseconds: 200));
        expectElevation();
        await mouse.up();
        expect(t.takeException(), isNull);
      });
    }
  }
}
