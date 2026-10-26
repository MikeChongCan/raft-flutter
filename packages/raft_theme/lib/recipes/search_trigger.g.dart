// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `searchTrigger`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftSearchTriggerRecipe].
class RaftSearchTriggerRecipeStyle {
  const RaftSearchTriggerRecipeStyle({
    required this.root,
    required this.label,
    required this.shortcut,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `label`.
  final RaftSlotStyle label;

  /// Slot `shortcut`.
  final RaftSlotStyle shortcut;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'label': label,
    'shortcut': shortcut,
  };
}

/// raft-ui recipe `searchTrigger` (`src/components/search/search-trigger.tsx`, index.mjs:16808).
///
/// Used by: SearchTrigger, SearchTriggerLabel, SearchTriggerShortcut.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftSearchTriggerRecipe {
  static const String recipeName = 'searchTrigger';
  static const List<String> slotNames = ['root', 'label', 'shortcut'];
  static const List<RaftRecipeAxis> axes = [];

  static RaftSearchTriggerRecipeStyle resolve({
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
    return RaftSearchTriggerRecipeStyle(
      root: s[0],
      label: s[1],
      shortcut: s[2],
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
      1669,
      1296,
      1180,
      1907,
      1414,
      1473,
      1727,
      1310,
      1014,
      1647,
      1697,
      620,
      633,
      594,
      1820,
      1007,
      1795,
      1006,
      1808,
      1714,
      1565,
      1877,
      937,
      1274,
      427,
      988,
      924,
      921,
      918,
      919,
      934,
      483,
      481,
      478,
      479,
      490,
      274,
      276,
      160,
    ],
    [1473, 960, 1881],
    [1487, 1727],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2],
  ];
}
