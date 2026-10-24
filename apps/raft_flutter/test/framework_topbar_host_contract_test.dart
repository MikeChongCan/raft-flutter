import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raft_ui/raft_ui.dart';

import 'mounted_message_navigation_test.dart' show pageFixture, mountPage;

// MainLayout shouldShowTopBar: a wide browser/tablet shell owns the bar; a
// native desktop window owns its own chrome, and a narrow phone has no bar.
void main() {
  testWidgets(
    'short browser host keeps the bottom bar without a native side rail',
    (t) async {
      final (w, _) = await pageFixture(t);
      w.setSection('home');
      await mountPage(t, w, false, width: 390, height: 480, browserHost: true);
      expect(find.byType(RaftWorkspaceRail), findsNothing);
      expect(find.byKey(const Key('rail-workspace')), findsNothing);
      expect(find.byKey(const ValueKey('workspace-top-bar')), findsNothing);
      expect(find.bySemanticsLabel('Home'), findsWidgets);
      expect(t.takeException(), isNull);
      await t.pumpWidget(const SizedBox.shrink());
    },
    variant: TargetPlatformVariant.only(TargetPlatform.android),
  );
  testWidgets(
    'wide browser on Linux uses browser chrome rather than native window chrome',
    (t) async {
      final (w, _) = await pageFixture(t);
      await mountPage(t, w, false, width: 856, browserHost: true);
      expect(find.byKey(const ValueKey('workspace-top-bar')), findsOneWidget);
      expect(find.byKey(const Key('rail-workspace')), findsNothing);
      expect(find.byKey(const Key('rail-search')), findsNothing);
      await t.pumpWidget(const SizedBox.shrink());
    },
    variant: TargetPlatformVariant.only(TargetPlatform.linux),
  );
  for (final platform in [TargetPlatform.android, TargetPlatform.linux]) {
    for (final width in [390.0, 856.0]) {
      testWidgets('$platform/$width mounted frame places global actions once', (
        t,
      ) async {
        final (w, _) = await pageFixture(t);
        await mountPage(t, w, false, width: width);
        final bar = find.byKey(const ValueKey('workspace-top-bar'));
        final shows = platform == TargetPlatform.android && width >= 768;
        expect(bar, shows ? findsOneWidget : findsNothing);
        if (shows) {
          expect(t.getRect(bar), Rect.fromLTWH(0, 0, width, 48));
          expect(t.getTopLeft(find.byType(RaftWorkspaceRail)).dy, 48);
          expect(find.byKey(const Key('rail-search')), findsNothing);
          expect(find.byKey(const Key('rail-workspace')), findsNothing);
          expect(find.byType(RaftChatSidebarHeading), findsNothing);
          expect(find.byKey(const Key('topbar-notifications')), findsOneWidget);
          // The existing switcher menu remains real and keyboard dismissible.
          await t.tap(find.byKey(const Key('topbar-workspace')));
          await t.pumpAndSettle();
          final menu = find.byKey(const Key('server-switcher-menu'));
          expect(menu, findsOneWidget);
          expect(t.getTopLeft(menu).dy, greaterThanOrEqualTo(48));
          await t.sendKeyEvent(LogicalKeyboardKey.escape);
          await t.pumpAndSettle();
          expect(menu, findsNothing);
          await t.tap(find.byKey(const Key('topbar-search')));
          await t.pumpAndSettle();
          expect(find.byKey(const Key('quick-switcher-input')), findsOneWidget);
          final anchor = t.getRect(find.byKey(const Key('topbar-search')));
          final overlay = t.getRect(find.byType(RaftQuickSwitcherFrame));
          expect(overlay.top, anchor.top);
          expect(overlay.center.dx, width / 2);
          expect(overlay.width, 720);
        } else if (width >= 768) {
          expect(find.byKey(const Key('rail-search')), findsOneWidget);
          expect(find.byKey(const Key('rail-workspace')), findsOneWidget);
        }
        expect(t.takeException(), isNull);
        await t.pumpWidget(const SizedBox.shrink());
      }, variant: TargetPlatformVariant.only(platform));
    }
  }
}
