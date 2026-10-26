// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `threadPanel`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftThreadPanelRecipe].
class RaftThreadPanelRecipeStyle {
  const RaftThreadPanelRecipeStyle({
    required this.root,
    required this.header,
    required this.content,
    required this.title,
    required this.titleMeta,
    required this.actions,
    required this.search,
    required this.searchTrailing,
    required this.searchCount,
    required this.originalMessage,
    required this.replySummary,
    required this.replyCount,
    required this.footer,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `header`.
  final RaftSlotStyle header;

  /// Slot `content`.
  final RaftSlotStyle content;

  /// Slot `title`.
  final RaftSlotStyle title;

  /// Slot `titleMeta`.
  final RaftSlotStyle titleMeta;

  /// Slot `actions`.
  final RaftSlotStyle actions;

  /// Slot `search`.
  final RaftSlotStyle search;

  /// Slot `searchTrailing`.
  final RaftSlotStyle searchTrailing;

  /// Slot `searchCount`.
  final RaftSlotStyle searchCount;

  /// Slot `originalMessage`.
  final RaftSlotStyle originalMessage;

  /// Slot `replySummary`.
  final RaftSlotStyle replySummary;

  /// Slot `replyCount`.
  final RaftSlotStyle replyCount;

  /// Slot `footer`.
  final RaftSlotStyle footer;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'header': header,
    'content': content,
    'title': title,
    'titleMeta': titleMeta,
    'actions': actions,
    'search': search,
    'searchTrailing': searchTrailing,
    'searchCount': searchCount,
    'originalMessage': originalMessage,
    'replySummary': replySummary,
    'replyCount': replyCount,
    'footer': footer,
  };
}

/// raft-ui recipe `threadPanel` (`src/components/thread-panel/thread-panel.recipe.ts`, index.mjs:14244).
///
/// Used by: ThreadPanelActions, ThreadPanelContent, ThreadPanelFooter, ThreadPanelHeader, ThreadPanelOriginalMessage, ThreadPanelReplyCount, ThreadPanelReplySummary, ThreadPanelRoot, ThreadPanelSearch, ThreadPanelSearchCount, ThreadPanelSearchTrailing, ThreadPanelTitle, ThreadPanelTitleMeta.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftThreadPanelRecipe {
  static const String recipeName = 'threadPanel';
  static const List<String> slotNames = [
    'root',
    'header',
    'content',
    'title',
    'titleMeta',
    'actions',
    'search',
    'searchTrailing',
    'searchCount',
    'originalMessage',
    'replySummary',
    'replyCount',
    'footer',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftThreadPanelRecipeStyle resolve({
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
    return RaftThreadPanelRecipeStyle(
      root: s[0],
      header: s[1],
      content: s[2],
      title: s[3],
      titleMeta: s[4],
      actions: s[5],
      search: s[6],
      searchTrailing: s[7],
      searchCount: s[8],
      originalMessage: s[9],
      replySummary: s[10],
      replyCount: s[11],
      footer: s[12],
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
    [1308, 959, 1755, 1457, 961, 1669, 593, 1007, 1807],
    [
      959,
      1159,
      1727,
      1310,
      1016,
      1372,
      1625,
      1610,
      1380,
      1378,
      1365,
      126,
      1364,
      621,
      632,
      593,
    ],
    [959, 1457, 1473, 960, 961, 1669, 593],
    [1348, 1473, 960, 1881, 999, 1007, 1817, 1807],
    [1006, 1808],
    [959, 1727, 1310, 1011, 1496, 1450, 1434],
    [1669, 1924, 959, 1727, 1310, 1013, 1658, 137, 71, 621, 631, 593, 1650],
    [1487, 959, 1727, 1310, 1013],
    [1727, 1916, 1005, 1768, 1823, 1808],
    [1669, 1727, 621, 631, 613, 1593, 60],
    [1632, 1650],
    [1421, 621, 1593, 1801, 1005, 631, 1823, 1808],
    [1799, 1808],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
  ];
}
