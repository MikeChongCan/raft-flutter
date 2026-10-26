// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `tasksPanel`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftTasksPanelRecipe].
class RaftTasksPanelRecipeStyle {
  const RaftTasksPanelRecipeStyle({
    required this.root,
    required this.toolbar,
    required this.toolbarGroup,
    required this.toolbarNewTask,
    required this.toolbarFilters,
    required this.toolbarView,
    required this.toolbarLabel,
    required this.viewport,
    required this.empty,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `toolbar`.
  final RaftSlotStyle toolbar;

  /// Slot `toolbarGroup`.
  final RaftSlotStyle toolbarGroup;

  /// Slot `toolbarNewTask`.
  final RaftSlotStyle toolbarNewTask;

  /// Slot `toolbarFilters`.
  final RaftSlotStyle toolbarFilters;

  /// Slot `toolbarView`.
  final RaftSlotStyle toolbarView;

  /// Slot `toolbarLabel`.
  final RaftSlotStyle toolbarLabel;

  /// Slot `viewport`.
  final RaftSlotStyle viewport;

  /// Slot `empty`.
  final RaftSlotStyle empty;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'toolbar': toolbar,
    'toolbarGroup': toolbarGroup,
    'toolbarNewTask': toolbarNewTask,
    'toolbarFilters': toolbarFilters,
    'toolbarView': toolbarView,
    'toolbarLabel': toolbarLabel,
    'viewport': viewport,
    'empty': empty,
  };
}

/// raft-ui recipe `tasksPanel` (`src/components/tasks/tasks-panel.recipe.ts`, index.mjs:15421).
///
/// Used by: TasksPanelEmpty, TasksPanelRoot, TasksPanelToolbar, TasksPanelToolbarFilters, TasksPanelToolbarGroup, TasksPanelToolbarLabel, TasksPanelToolbarNewTask, TasksPanelToolbarView, TasksPanelViewport.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftTasksPanelRecipe {
  static const String recipeName = 'tasksPanel';
  static const List<String> slotNames = [
    'root',
    'toolbar',
    'toolbarGroup',
    'toolbarNewTask',
    'toolbarFilters',
    'toolbarView',
    'toolbarLabel',
    'viewport',
    'empty',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftTasksPanelRecipeStyle resolve({
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
    return RaftTasksPanelRecipeStyle(
      root: s[0],
      toolbar: s[1],
      toolbarGroup: s[2],
      toolbarNewTask: s[3],
      toolbarFilters: s[4],
      toolbarView: s[5],
      toolbarLabel: s[6],
      viewport: s[7],
      empty: s[8],
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
    [959, 1457, 1473, 960, 961, 593, 1807],
    [
      1031,
      1727,
      1035,
      1310,
      1014,
      1429,
      1431,
      1444,
      1445,
      1461,
      621,
      632,
      593,
      1650,
      1660,
      1382,
    ],
    [959, 965, 1310, 1014],
    [655, 1708, 1318, 959, 965, 1310, 1014],
    [651, 1709, 1473, 1543, 1544, 1449, 959, 965, 1310, 1014],
    [656, 1708, 1317, 959, 965, 1310, 1014],
    [
      1296,
      1310,
      278,
      276,
      157,
      1179,
      1013,
      1697,
      1646,
      613,
      1300,
      1303,
      1007,
      1806,
      1008,
      1811,
      1916,
    ],
    [1457, 960, 1569, 1577, 1585, 1597, 593, 1650, 1382],
    [959, 1189, 961, 1310, 1315],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8],
  ];
}
