// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `appRail`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftAppRailRecipe].
class RaftAppRailRecipeStyle {
  const RaftAppRailRecipeStyle({
    required this.root,
    required this.header,
    required this.nav,
    required this.footer,
    required this.item,
    required this.itemIcon,
    required this.itemLabel,
    required this.itemBadge,
    required this.itemIndicator,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `header`.
  final RaftSlotStyle header;

  /// Slot `nav`.
  final RaftSlotStyle nav;

  /// Slot `footer`.
  final RaftSlotStyle footer;

  /// Slot `item`.
  final RaftSlotStyle item;

  /// Slot `itemIcon`.
  final RaftSlotStyle itemIcon;

  /// Slot `itemLabel`.
  final RaftSlotStyle itemLabel;

  /// Slot `itemBadge`.
  final RaftSlotStyle itemBadge;

  /// Slot `itemIndicator`.
  final RaftSlotStyle itemIndicator;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'header': header,
    'nav': nav,
    'footer': footer,
    'item': item,
    'itemIcon': itemIcon,
    'itemLabel': itemLabel,
    'itemBadge': itemBadge,
    'itemIndicator': itemIndicator,
  };
}

/// raft-ui recipe `appRail` (`src/components/app-rail/app-rail.recipe.ts`, index.mjs:2080).
///
/// Used by: AppRailFooter, AppRailHeader, AppRailItem, AppRailItemBadge, AppRailItemIcon, AppRailItemIndicator, AppRailItemLabel, AppRailNav, AppRailRoot.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftAppRailRecipe {
  static const String recipeName = 'appRail';
  static const List<String> slotNames = [
    'root',
    'header',
    'nav',
    'footer',
    'item',
    'itemIcon',
    'itemLabel',
    'itemBadge',
    'itemIndicator',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftAppRailRecipeStyle resolve({
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
    return RaftAppRailRecipeStyle(
      root: s[0],
      header: s[1],
      nav: s[2],
      footer: s[3],
      item: s[4],
      itemIcon: s[5],
      itemLabel: s[6],
      itemBadge: s[7],
      itemIndicator: s[8],
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
    [965, 1764, 967, 1318, 1722, 1915, 636, 634, 600, 1822, 393],
    [1677, 965, 1922, 1735, 1318, 1323, 1167, 623, 634, 385],
    [965, 1922, 966, 967, 1318, 1666, 1021, 1641, 1601, 960, 388, 384],
    [965, 1922, 1735, 967, 1318, 1323, 1195, 1021, 1601, 387],
    [
      1677,
      1304,
      1735,
      1318,
      1323,
      1573,
      935,
      933,
      277,
      1741,
      1705,
      622,
      641,
      1822,
      282,
      1270,
      426,
      741,
      740,
      745,
      746,
      748,
      995,
      392,
    ],
    [1677, 1304, 1318, 1323],
    [1775],
    [
      422,
      102,
      105,
      1304,
      1318,
      1323,
      1181,
      1485,
      1711,
      1651,
      571,
      1838,
      1309,
      1312,
      1690,
      1694,
      1013,
      1790,
      1007,
      1335,
      1777,
    ],
    [1625, 422, 105, 102],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8],
  ];
}
