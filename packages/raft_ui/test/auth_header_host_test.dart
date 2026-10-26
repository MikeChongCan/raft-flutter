import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raft_ui/raft_ui.dart';

void main() {
  testWidgets(
    'external desktop frame avoids duplicate branding and keeps server action',
    (tester) async {
      tester.view.physicalSize = const Size(390, 800);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      var serverEdits = 0;
      await tester.pumpWidget(
        MaterialApp(
          theme: raftTheme(),
          home: RaftAuthHeaderScope(
            external: true,
            child: RaftAuthShell(
              server: 'example.invalid',
              onServer: () => serverEdits++,
              child: const Text('Sign In'),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(RaftAuthTopBar), findsNothing);
      expect(find.text('Sign In'), findsOneWidget);
      final semantics = tester.ensureSemantics();
      try {
        expect(
          find.bySemanticsLabel('Server URL: example.invalid'),
          findsOneWidget,
        );
        await tester.tap(find.text('example.invalid'));
        expect(serverEdits, 1);
        expect(tester.takeException(), isNull);
      } finally {
        semantics.dispose();
      }
    },
  );

  testWidgets(
    'a page without an external frame keeps its own brand and server action',
    (tester) async {
      var serverEdits = 0;
      await tester.pumpWidget(
        MaterialApp(
          theme: raftTheme(),
          home: RaftAuthShell(
            server: 'example.invalid',
            onServer: () => serverEdits++,
            child: const Text('Sign In'),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(RaftAuthTopBar), findsOneWidget);
      await tester.tap(find.text('example.invalid'));
      expect(serverEdits, 1);
    },
  );
}
