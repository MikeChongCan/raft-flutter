import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'parity/parity_harness.dart';

Map<String, dynamic> _case(String id) => {
  'id': id,
  'viewport': {'width': 320, 'height': 240, 'density': 1},
  'variants': [
    {'id': 'default', 'props': <String, dynamic>{}},
  ],
  'capture': {
    'androidInteractions': [
      {'type': 'tap', 'key': 'action'},
    ],
  },
};

void main() {
  setUpAll(loadParityFonts);

  testWidgets('tap scrolls a built action into the viewport before clicking', (
    t,
  ) async {
    final out = Directory.systemTemp.createTempSync('parity-action-scroll-');
    addTearDown(() => out.deleteSync(recursive: true));
    var taps = 0;
    Widget page() => CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: SizedBox(height: 600)),
        SliverToBoxAdapter(
          child: TextButton(
            key: const ValueKey('action'),
            onPressed: () => taps++,
            child: const Text('Open'),
          ),
        ),
      ],
    );
    t.view.devicePixelRatio = 1;
    t.view.physicalSize = const Size(320, 240);
    addTearDown(t.view.reset);
    await t.pumpWidget(MaterialApp(home: page()));
    await t.pump();
    expect(find.byKey(const ValueKey('action')), findsNothing);
    expect(
      find.byKey(const ValueKey('action'), skipOffstage: false),
      findsOneWidget,
    );
    await captureParityCase(
      t,
      visualCase: _case('scroll-action'),
      mapping: ParityCase(widgets: const ['TextButton'], build: (_) => page()),
      fixtures: const {},
      outputDir: out,
      runInfo: const {},
    );
    expect(taps, 1);
    expect(File('${out.path}/scroll-action.png').existsSync(), isTrue);
  });

  testWidgets('an offstage action never produces a successful capture', (
    t,
  ) async {
    final out = Directory.systemTemp.createTempSync('parity-action-hidden-');
    addTearDown(() => out.deleteSync(recursive: true));
    var taps = 0;
    Object? failure;
    try {
      await captureParityCase(
        t,
        visualCase: _case('hidden-action'),
        mapping: ParityCase(
          widgets: const ['TextButton'],
          build: (_) => Offstage(
            child: TextButton(
              key: const ValueKey('action'),
              onPressed: () => taps++,
              child: const Text('Hidden'),
            ),
          ),
        ),
        fixtures: const {},
        outputDir: out,
        runInfo: const {},
      );
    } on StateError catch (error) {
      failure = error;
    }
    expect(failure, isA<StateError>());
    expect(taps, 0);
    expect(File('${out.path}/hidden-action.png').existsSync(), isFalse);
  });
}
