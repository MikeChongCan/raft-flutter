// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `switchRecipe`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftSwitchRecipe].
class RaftSwitchRecipeStyle {
  const RaftSwitchRecipeStyle({required this.root, required this.thumb});

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `thumb`.
  final RaftSlotStyle thumb;

  Map<String, RaftSlotStyle> get slots => {'root': root, 'thumb': thumb};
}

/// raft-ui recipe `switchRecipe` (`src/components/switch/switch.tsx`, index.mjs:6117).
///
/// Used by: Switch, SwitchThumb.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftSwitchRecipe {
  static const String recipeName = 'switchRecipe';
  static const List<String> slotNames = ['root', 'thumb'];
  static const List<RaftRecipeAxis> axes = [];

  static RaftSwitchRecipeStyle resolve({
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
    return RaftSwitchRecipeStyle(root: s[0], thumb: s[1]);
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
      1727,
      1853,
      1310,
      1565,
      1863,
      946,
      1493,
      1523,
      828,
      440,
      435,
      438,
      448,
      985,
      987,
      1183,
      1903,
      1699,
      620,
      633,
      579,
      1586,
      938,
      807,
      805,
      814,
      815,
      984,
      986,
      988,
      827,
      825,
      809,
      808,
    ],
    [
      1617,
      616,
      1880,
      946,
      1493,
      1748,
      1699,
      594,
      1720,
      670,
      940,
      947,
      806,
      816,
      825,
      832,
      808,
      810,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1],
  ];
}
