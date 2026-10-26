// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `messageReplies`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftMessageRepliesRecipe].
class RaftMessageRepliesRecipeStyle {
  const RaftMessageRepliesRecipeStyle({
    required this.root,
    required this.summary,
    required this.summaryItem,
    required this.reply,
    required this.sender,
    required this.content,
    required this.time,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `summary`.
  final RaftSlotStyle summary;

  /// Slot `summaryItem`.
  final RaftSlotStyle summaryItem;

  /// Slot `reply`.
  final RaftSlotStyle reply;

  /// Slot `sender`.
  final RaftSlotStyle sender;

  /// Slot `content`.
  final RaftSlotStyle content;

  /// Slot `time`.
  final RaftSlotStyle time;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'summary': summary,
    'summaryItem': summaryItem,
    'reply': reply,
    'sender': sender,
    'content': content,
    'time': time,
  };
}

/// raft-ui recipe `messageReplies` (`src/components/message-replies/message-replies.recipe.ts`, index.mjs:8222).
///
/// Used by: MessageReplies, MessageRepliesItem, MessageRepliesItemContent, MessageRepliesItemSender, MessageRepliesItemTime, MessageRepliesSummary, MessageRepliesSummaryItem.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftMessageRepliesRecipe {
  static const String recipeName = 'messageReplies';
  static const List<String> slotNames = [
    'root',
    'summary',
    'summaryItem',
    'reply',
    'sender',
    'content',
    'time',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftMessageRepliesRecipeStyle resolve({
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftMessageRepliesRecipeStyle(
      root: s[0],
      summary: s[1],
      summaryItem: s[2],
      reply: s[3],
      sender: s[4],
      content: s[5],
      time: s[6],
    );
  }

  /// Resolve by raw tailwind-variants props (`{'size': 'md'}`); for tooling and tests.
  static Map<String, RaftSlotStyle> resolveProps(
    Map<String, String?> props, {
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [for (final a in axes) props[a.name]],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return {for (var i = 0; i < slotNames.length; i++) slotNames[i]: s[i]};
  }

  /// Distinct class lists (indices into [raftRecipeUtilities]).
  static const List<List<int>> _lists = [
    [
      1143,
      959,
      1473,
      1912,
      961,
      1820,
      1877,
      974,
      978,
      1501,
      1407,
      1012,
      1696,
      619,
      1646,
      1658,
      579,
      1811,
      1274,
      427,
      979,
      988,
    ],
    [
      959,
      1727,
      965,
      1310,
      1877,
      1013,
      1806,
      999,
      1811,
      1231,
      250,
      249,
      255,
      253,
      254,
      259,
      256,
      248,
      260,
      247,
      246,
      261,
      251,
      252,
      257,
      258,
    ],
    [1296, 1310, 1011, 467, 278],
    [959, 1473, 1310, 1013, 1806],
    [1473, 1726, 1881, 1008, 1811],
    [1473, 960, 1881, 1808],
    [1487, 1727, 1005, 1823, 1768, 1808],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6],
  ];
}
