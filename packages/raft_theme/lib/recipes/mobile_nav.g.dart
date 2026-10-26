// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `mobileNav`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftMobileNavRecipe].
class RaftMobileNavRecipeStyle {
  const RaftMobileNavRecipeStyle({
    required this.root,
    required this.item,
    required this.itemLabel,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `item`.
  final RaftSlotStyle item;

  /// Slot `itemLabel`.
  final RaftSlotStyle itemLabel;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'item': item,
    'itemLabel': itemLabel,
  };
}

/// raft-ui recipe `mobileNav` (`src/components/mobile-nav/mobile-nav.tsx`, index.mjs:4643).
///
/// Used by: MobileNavItem, MobileNavLabel, MobileNavRoot.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftMobileNavRecipe {
  static const String recipeName = 'mobileNav';
  static const List<String> slotNames = ['root', 'item', 'itemLabel'];
  static const List<RaftRecipeAxis> axes = [];

  static RaftMobileNavRecipeStyle resolve({
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
    return RaftMobileNavRecipeStyle(root: s[0], item: s[1], itemLabel: s[2]);
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
      1031,
      1912,
      962,
      1040,
      502,
      1312,
      1010,
      637,
      632,
      594,
      1645,
      1631,
      1808,
      1600,
    ],
    [
      1669,
      1296,
      1727,
      1310,
      1565,
      931,
      929,
      276,
      1308,
      1473,
      961,
      1319,
      1020,
      619,
      1641,
      1630,
      1589,
      1007,
      1782,
      1008,
      1808,
      91,
      92,
      290,
      291,
      543,
      511,
      552,
      537,
      563,
      509,
      531,
      560,
      548,
      521,
      525,
      527,
      422,
      739,
      744,
      729,
      732,
      731,
      733,
      734,
      730,
      1697,
      988,
    ],
    [1473, 1881, 1414],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2],
  ];
}
