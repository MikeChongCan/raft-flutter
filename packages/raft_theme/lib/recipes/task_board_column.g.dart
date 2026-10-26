// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `taskBoardColumn`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftTaskBoardColumnRecipe].
class RaftTaskBoardColumnRecipeStyle {
  const RaftTaskBoardColumnRecipeStyle({
    required this.root,
    required this.trigger,
    required this.heading,
    required this.badge,
    required this.count,
    required this.chevron,
    required this.panel,
    required this.items,
    required this.empty,
    required this.emptyIdle,
    required this.emptyAllowed,
    required this.emptyBlocked,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `trigger`.
  final RaftSlotStyle trigger;

  /// Slot `heading`.
  final RaftSlotStyle heading;

  /// Slot `badge`.
  final RaftSlotStyle badge;

  /// Slot `count`.
  final RaftSlotStyle count;

  /// Slot `chevron`.
  final RaftSlotStyle chevron;

  /// Slot `panel`.
  final RaftSlotStyle panel;

  /// Slot `items`.
  final RaftSlotStyle items;

  /// Slot `empty`.
  final RaftSlotStyle empty;

  /// Slot `emptyIdle`.
  final RaftSlotStyle emptyIdle;

  /// Slot `emptyAllowed`.
  final RaftSlotStyle emptyAllowed;

  /// Slot `emptyBlocked`.
  final RaftSlotStyle emptyBlocked;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'trigger': trigger,
    'heading': heading,
    'badge': badge,
    'count': count,
    'chevron': chevron,
    'panel': panel,
    'items': items,
    'empty': empty,
    'emptyIdle': emptyIdle,
    'emptyAllowed': emptyAllowed,
    'emptyBlocked': emptyBlocked,
  };
}

/// raft-ui recipe `taskBoardColumn` (`src/components/task-board/task-board-column.recipe.ts`, index.mjs:14619).
///
/// Used by: TaskBoardColumn, TaskBoardColumnBadge, TaskBoardColumnChevron, TaskBoardColumnCount, TaskBoardColumnEmpty, TaskBoardColumnEmptyAllowed, TaskBoardColumnEmptyBlocked, TaskBoardColumnEmptyIdle, TaskBoardColumnHeading, TaskBoardColumnItems, TaskBoardColumnPanel, TaskBoardColumnTrigger.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftTaskBoardColumnRecipe {
  static const String recipeName = 'taskBoardColumn';
  static const List<String> slotNames = [
    'root',
    'trigger',
    'heading',
    'badge',
    'count',
    'chevron',
    'panel',
    'items',
    'empty',
    'emptyIdle',
    'emptyAllowed',
    'emptyBlocked',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftTaskBoardColumnRecipeStyle resolve({
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
    return RaftTaskBoardColumnRecipeStyle(
      root: s[0],
      trigger: s[1],
      heading: s[2],
      badge: s[3],
      count: s[4],
      chevron: s[5],
      panel: s[6],
      items: s[7],
      empty: s[8],
      emptyIdle: s[9],
      emptyAllowed: s[10],
      emptyBlocked: s[11],
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
    [1041, 959, 1727, 1718, 961, 1899, 1155, 1696, 1580, 684, 685],
    [
      1041,
      959,
      1912,
      1853,
      1310,
      1314,
      1820,
      1565,
      1468,
      1014,
      1697,
      1007,
      1806,
      999,
      1811,
      727,
      988,
    ],
    [959, 1473, 1310, 1014],
    [1296, 1310, 1014, 1580, 1007, 1806, 999, 1811, 176],
    [1005, 1823, 1006, 1808],
    [1296, 1727, 104, 1310, 1880, 278, 1111, 1493, 1808, 1122],
    [843],
    [959, 961, 1014],
    [
      1647,
      1045,
      959,
      1462,
      1310,
      1315,
      1660,
      1696,
      618,
      624,
      632,
      1801,
      1806,
      1808,
      1048,
    ],
    [1045, 1047],
    [1256, 1044],
    [1256, 1046],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
  ];
}
