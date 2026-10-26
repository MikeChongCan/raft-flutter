// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `searchMessage`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftSearchMessageRecipe].
class RaftSearchMessageRecipeStyle {
  const RaftSearchMessageRecipeStyle({
    required this.message,
    required this.messageHeader,
    required this.messageBody,
    required this.messageMeta,
    required this.messageThreadMeta,
    required this.messageSender,
    required this.messageTimestamp,
    required this.messageMatch,
  });

  /// Slot `message`.
  final RaftSlotStyle message;

  /// Slot `messageHeader`.
  final RaftSlotStyle messageHeader;

  /// Slot `messageBody`.
  final RaftSlotStyle messageBody;

  /// Slot `messageMeta`.
  final RaftSlotStyle messageMeta;

  /// Slot `messageThreadMeta`.
  final RaftSlotStyle messageThreadMeta;

  /// Slot `messageSender`.
  final RaftSlotStyle messageSender;

  /// Slot `messageTimestamp`.
  final RaftSlotStyle messageTimestamp;

  /// Slot `messageMatch`.
  final RaftSlotStyle messageMatch;

  Map<String, RaftSlotStyle> get slots => {
    'message': message,
    'messageHeader': messageHeader,
    'messageBody': messageBody,
    'messageMeta': messageMeta,
    'messageThreadMeta': messageThreadMeta,
    'messageSender': messageSender,
    'messageTimestamp': messageTimestamp,
    'messageMatch': messageMatch,
  };
}

/// raft-ui recipe `searchMessage` (`src/components/search/search-message.recipe.ts`, index.mjs:16577).
///
/// Used by: SearchMessageResult, SearchMessageResultBody, SearchMessageResultHeader, SearchMessageResultMatch, SearchMessageResultMeta, SearchMessageResultSender, SearchMessageResultThreadMeta, SearchMessageResultTimestamp, SearchThreadMessageResult.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftSearchMessageRecipe {
  static const String recipeName = 'searchMessage';
  static const List<String> slotNames = [
    'message',
    'messageHeader',
    'messageBody',
    'messageMeta',
    'messageThreadMeta',
    'messageSender',
    'messageTimestamp',
    'messageMatch',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftSearchMessageRecipeStyle resolve({
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
    return RaftSearchMessageRecipeStyle(
      message: s[0],
      messageHeader: s[1],
      messageBody: s[2],
      messageMeta: s[3],
      messageThreadMeta: s[4],
      messageSender: s[5],
      messageTimestamp: s[6],
      messageMatch: s[7],
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
      1912,
      1820,
      1877,
      1669,
      616,
      1701,
      619,
      613,
      1649,
      1660,
      1807,
      1725,
      1531,
      1538,
      1537,
      1535,
      1534,
      1533,
      1263,
      425,
      923,
      925,
      917,
      735,
      740,
      1565,
      972,
      973,
    ],
    [959, 1310, 1473, 963, 1013, 1005, 1823, 1808],
    [1473, 1344, 1498, 1007, 1798, 1811],
    [1473, 1881],
    [1296, 1310, 1012, 1727, 277],
    [1296, 1310, 1554, 1727, 1013, 1916, 1007, 1798, 999, 1807],
    [1487, 1727, 1916],
    [416, 1000, 1703, 573, 1652, 648, 1828, 1301, 1304, 1682, 1686],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7],
  ];
}
