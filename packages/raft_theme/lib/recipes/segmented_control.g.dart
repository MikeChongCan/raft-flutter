// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `segmentedControl`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftSegmentedControlRecipe].
class RaftSegmentedControlRecipeStyle {
  const RaftSegmentedControlRecipeStyle({
    required this.root,
    required this.item,
    required this.label,
    required this.count,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `item`.
  final RaftSlotStyle item;

  /// Slot `label`.
  final RaftSlotStyle label;

  /// Slot `count`.
  final RaftSlotStyle count;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'item': item,
    'label': label,
    'count': count,
  };
}

/// raft-ui recipe `segmentedControl` (`src/components/segmented-control/segmented-control.tsx`, index.mjs:6163).
///
/// Used by: SegmentedControl, SegmentedControlCount, SegmentedControlItem, SegmentedControlLabel.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftSegmentedControlRecipe {
  static const String recipeName = 'segmentedControl';
  static const List<String> slotNames = ['root', 'item', 'label', 'count'];
  static const List<RaftRecipeAxis> axes = [];

  static RaftSegmentedControlRecipeStyle resolve({
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
    return RaftSegmentedControlRecipeStyle(
      root: s[0],
      item: s[1],
      label: s[2],
      count: s[3],
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
    [1296, 1414, 1310, 1911, 963, 1011, 1689, 579, 1587],
    [
      1296,
      1473,
      1727,
      1310,
      1013,
      1565,
      931,
      274,
      276,
      1179,
      1315,
      1697,
      620,
      639,
      613,
      1647,
      1007,
      1798,
      1008,
      1811,
      264,
      1263,
      807,
      805,
      811,
      818,
      814,
      815,
      812,
      813,
      804,
      988,
      828,
      833,
      829,
    ],
    [1881],
    [1005, 1823, 1006],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3],
  ];
}
