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
    [959, 1755, 961, 1310, 1714, 1905, 634, 632, 598, 1812, 391],
    [1669, 959, 1912, 1727, 1310, 1315, 1159, 621, 632, 384],
    [959, 1912, 960, 961, 1310, 1658, 1013, 1633, 1593, 954, 386, 383],
    [959, 1912, 1727, 961, 1310, 1315, 1187, 1013, 1593, 385],
    [
      1669,
      1296,
      1727,
      1310,
      1315,
      1565,
      931,
      929,
      276,
      1733,
      1697,
      620,
      639,
      1812,
      281,
      1262,
      424,
      738,
      737,
      742,
      743,
      745,
      988,
      390,
    ],
    [1669, 1296, 1310, 1315],
    [1766],
    [
      420,
      102,
      105,
      1296,
      1310,
      1315,
      1173,
      1477,
      1703,
      1643,
      569,
      1828,
      1301,
      1304,
      1682,
      1686,
      1005,
      1781,
      999,
      1327,
      1768,
    ],
    [1617, 420, 105, 102],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8],
  ];
}
