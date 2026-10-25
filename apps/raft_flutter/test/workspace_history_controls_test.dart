import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raft_client/raft_client.dart';
import 'package:raft_flutter/data/raft_location.dart';
import 'package:raft_flutter/data/raft_navigation_history.dart';
import 'package:raft_flutter/features/workspace_history_controls.dart';

import 'mounted_message_navigation_test.dart' show pageFixture, mountPage;

void main() {
  for (final width in [856.0, 1280.0]) {
    testWidgets('desktop history restores channels and forward branch/$width', (
      t,
    ) async {
      final (w, api) = await pageFixture(t);
      w.channels = [
        RaftChannel({'id': 'c1', 'name': 'first', 'joined': true}),
        RaftChannel({'id': 'c2', 'name': 'second', 'joined': true}),
      ];
      for (final id in ['c1', 'c2']) {
        api.routes['GET /messages/channel/$id'] = (_) => {
          'messages': [
            {
              'id': 'm-$id',
              'channelId': id,
              'seq': '1',
              'senderId': 'alice',
              'senderName': 'Alice',
              'content': 'Content of $id',
              'createdAt': '2026-10-25T00:00:00Z',
            },
          ],
          'hasMore': false,
        };
      }
      await t.runAsync(() => w.selectChannel(w.channels.first));
      await mountPage(t, w, false, width: width);
      await t.runAsync(() => w.selectChannel(w.channels.last));
      await t.pumpAndSettle();
      expect(find.text('Content of c2'), findsWidgets);
      final depth = w.navigation.entries.length, index = w.navigation.index;
      Future<void> press(String key, String label) async {
        if (width < 1000) {
          await t.tap(find.byKey(const Key('topbar-history')));
          await t.pumpAndSettle();
          await t.tap(find.text(label).last);
        } else {
          await t.tap(find.byKey(Key(key)));
        }
        await t.runAsync(
          () => Future<void>.delayed(const Duration(milliseconds: 30)),
        );
        await t.pumpAndSettle();
      }

      await press('topbar-back', 'Go back');
      expect(w.navigation.index, index - 1);
      expect(w.location.entityId, 'c1');
      expect(w.channel?.id, 'c1');
      expect(find.text('Content of c1', findRichText: true), findsWidgets);
      await press('topbar-forward', 'Go forward');
      expect(w.navigation.index, index);
      expect(w.channel?.id, 'c2');
      expect(find.text('Content of c2'), findsWidgets);
      expect(w.navigation.entries, hasLength(depth));
      await t.tap(find.byKey(const Key('topbar-history')));
      await t.pumpAndSettle();
      await t.tap(find.text('#first').last);
      await t.pumpAndSettle();
      expect(w.channel?.id, 'c1');
      expect(w.navigation.entries, hasLength(depth));
      expect(w.navigation.entries.last.entityId, 'c2');
      expect(t.takeException(), isNull);
      await t.pumpWidget(const SizedBox.shrink());
    }, variant: TargetPlatformVariant.only(TargetPlatform.linux));
  }
  testWidgets(
    'stale history cannot cross a workspace epoch or replace its entry',
    (t) async {
      final (w, _) = await pageFixture(t);
      final start = w.location;
      w.setSection('home');
      final authority = w.navigationAuthority;
      final index = w.navigation.index;
      // The observed menu entry is replaced before its delayed action runs.
      w.navigation.navigate(
        RaftLocation.at(serverSlug: start.serverSlug, route: RaftRoute.search),
        kind: RaftNavigationKind.replace,
      );
      final current = w.location;
      await visitWorkspaceHistory(
        w,
        index,
        authority: authority,
        expectedUri: RaftLocation.at(
          serverSlug: start.serverSlug,
          route: RaftRoute.home,
        ).uri,
      );
      expect(w.location.uri, current.uri);
      w.server = RaftRecord({'id': 'other', 'slug': 'other', 'role': 'owner'});
      final next = w.location;
      await visitWorkspaceHistory(
        w,
        0,
        authority: authority,
        expectedUri: start.uri,
      );
      expect(w.location.uri, next.uri);
      expect(w.navigation.entries, hasLength(1));
    },
  );
}
