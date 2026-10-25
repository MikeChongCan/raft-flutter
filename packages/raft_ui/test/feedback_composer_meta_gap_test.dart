import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raft_ui/raft_ui.dart';

// hands-feedback-react 0.4.3 mounts raft-ui 0.7.0 ComposerMeta (`gap-2`).
// Exercise the toolbar under a narrow constraint inside a 390px phone.
void main() {
  setUpAll(() async {
    for (final family in ['SpaceGrotesk', 'SpaceMono']) {
      final data = await rootBundle.load(
        'packages/raft_ui/assets/fonts/$family.ttf',
      );
      await (FontLoader(
        'packages/raft_ui/$family',
      )..addFont(Future.value(data))).load();
    }
  });
  for (final dark in [false, true]) {
    testWidgets('phone new-feedback keeps all four actions reachable/$dark', (
      t,
    ) async {
      t.view.physicalSize = const Size(390, 844);
      t.view.devicePixelRatio = 1;
      addTearDown(t.view.reset);
      final controller = TextEditingController();
      addTearDown(controller.dispose);
      final calls = <String>[];
      await t.pumpWidget(
        MaterialApp(
          theme: raftTheme(dark: dark),
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 344.6094,
                child: RaftFeedbackComposer(
                  controller: controller,
                  label: 'Feedback',
                  newFeedback: true,
                  onAttachImage: () => calls.add('image'),
                  onAttachFile: () => calls.add('file'),
                  actions: [
                    RaftRecipeButton(
                      key: const ValueKey('cancel'),
                      label: 'Cancel',
                      variant: RaftButtonRecipeVariant.ghost,
                      size: RaftButtonRecipeSize.sm,
                      onPressed: () => calls.add('cancel'),
                    ),
                    RaftRecipeButton(
                      key: const ValueKey('submit'),
                      glyph: RaftGlyph.send,
                      label: 'Submit',
                      variant: RaftButtonRecipeVariant.accent,
                      size: RaftButtonRecipeSize.sm,
                      onPressed: () => calls.add('submit'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
      await t.pumpAndSettle();
      expect(t.takeException(), isNull);
      final image = find.byKey(const ValueKey('feedback-attach-image'));
      final file = find.byKey(const ValueKey('feedback-attach-file'));
      expect(t.getRect(file).left - t.getRect(image).right, 8);
      expect(find.text('0/10000'), findsOneWidget);
      for (final target in [
        image,
        file,
        find.byKey(const ValueKey('cancel')),
        find.byKey(const ValueKey('submit')),
      ]) {
        expect(target.hitTestable(), findsOneWidget);
        await t.tap(target);
        await t.pump();
      }
      expect(calls, ['image', 'file', 'cancel', 'submit']);
      await t.pumpWidget(const SizedBox.shrink());
    });
  }
}
