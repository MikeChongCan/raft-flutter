// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `sidebarItemRecipe`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftSidebarItemRecipe].
class RaftSidebarItemRecipeStyle {
  const RaftSidebarItemRecipeStyle({
    required this.sidebarItem,
    required this.sidebarItemIcon,
    required this.sidebarItemChannelIcon,
    required this.sidebarItemContent,
    required this.sidebarItemTitle,
    required this.sidebarItemSubtitle,
    required this.sidebarItemMeta,
    required this.sidebarItemStatus,
    required this.sidebarItemIndicator,
    required this.sidebarItemMetaIcon,
    required this.sidebarItemAside,
    required this.sidebarItemCount,
    required this.sidebarItemCountSeparator,
    required this.sidebarItemThreadCount,
  });

  /// Slot `sidebarItem`.
  final RaftSlotStyle sidebarItem;

  /// Slot `sidebarItemIcon`.
  final RaftSlotStyle sidebarItemIcon;

  /// Slot `sidebarItemChannelIcon`.
  final RaftSlotStyle sidebarItemChannelIcon;

  /// Slot `sidebarItemContent`.
  final RaftSlotStyle sidebarItemContent;

  /// Slot `sidebarItemTitle`.
  final RaftSlotStyle sidebarItemTitle;

  /// Slot `sidebarItemSubtitle`.
  final RaftSlotStyle sidebarItemSubtitle;

  /// Slot `sidebarItemMeta`.
  final RaftSlotStyle sidebarItemMeta;

  /// Slot `sidebarItemStatus`.
  final RaftSlotStyle sidebarItemStatus;

  /// Slot `sidebarItemIndicator`.
  final RaftSlotStyle sidebarItemIndicator;

  /// Slot `sidebarItemMetaIcon`.
  final RaftSlotStyle sidebarItemMetaIcon;

  /// Slot `sidebarItemAside`.
  final RaftSlotStyle sidebarItemAside;

  /// Slot `sidebarItemCount`.
  final RaftSlotStyle sidebarItemCount;

  /// Slot `sidebarItemCountSeparator`.
  final RaftSlotStyle sidebarItemCountSeparator;

  /// Slot `sidebarItemThreadCount`.
  final RaftSlotStyle sidebarItemThreadCount;

  Map<String, RaftSlotStyle> get slots => {
    'sidebarItem': sidebarItem,
    'sidebarItemIcon': sidebarItemIcon,
    'sidebarItemChannelIcon': sidebarItemChannelIcon,
    'sidebarItemContent': sidebarItemContent,
    'sidebarItemTitle': sidebarItemTitle,
    'sidebarItemSubtitle': sidebarItemSubtitle,
    'sidebarItemMeta': sidebarItemMeta,
    'sidebarItemStatus': sidebarItemStatus,
    'sidebarItemIndicator': sidebarItemIndicator,
    'sidebarItemMetaIcon': sidebarItemMetaIcon,
    'sidebarItemAside': sidebarItemAside,
    'sidebarItemCount': sidebarItemCount,
    'sidebarItemCountSeparator': sidebarItemCountSeparator,
    'sidebarItemThreadCount': sidebarItemThreadCount,
  };
}

/// raft-ui recipe `sidebarItemRecipe` (`src/components/sidebar/sidebar-item.recipe.ts`, index.mjs:2877).
///
/// Used by: SidebarItem, SidebarItemAside, SidebarItemChannelIcon, SidebarItemContent, SidebarItemCount, SidebarItemCountSeparator, SidebarItemIcon, SidebarItemIndicator, SidebarItemMeta, SidebarItemMetaIcon, SidebarItemStatus, SidebarItemSubtitle, SidebarItemThreadCount, SidebarItemTitle.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftSidebarItemRecipe {
  static const String recipeName = 'sidebarItemRecipe';
  static const List<String> slotNames = [
    'sidebarItem',
    'sidebarItemIcon',
    'sidebarItemChannelIcon',
    'sidebarItemContent',
    'sidebarItemTitle',
    'sidebarItemSubtitle',
    'sidebarItemMeta',
    'sidebarItemStatus',
    'sidebarItemIndicator',
    'sidebarItemMetaIcon',
    'sidebarItemAside',
    'sidebarItemCount',
    'sidebarItemCountSeparator',
    'sidebarItemThreadCount',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('interactive', ['true', 'false'], 'true', false),
    RaftRecipeAxis('wrap', ['false', 'true'], 'false', false),
    RaftRecipeAxis('stacked', ['false', 'true'], 'false', false),
  ];

  static RaftSidebarItemRecipeStyle resolve({
    bool? interactive,
    bool? wrap,
    bool? stacked,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [interactive?.toString(), wrap?.toString(), stacked?.toString()],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftSidebarItemRecipeStyle(
      sidebarItem: s[0],
      sidebarItemIcon: s[1],
      sidebarItemChannelIcon: s[2],
      sidebarItemContent: s[3],
      sidebarItemTitle: s[4],
      sidebarItemSubtitle: s[5],
      sidebarItemMeta: s[6],
      sidebarItemStatus: s[7],
      sidebarItemIndicator: s[8],
      sidebarItemMetaIcon: s[9],
      sidebarItemAside: s[10],
      sidebarItemCount: s[11],
      sidebarItemCountSeparator: s[12],
      sidebarItemThreadCount: s[13],
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
      1150,
      959,
      1912,
      1310,
      1645,
      1820,
      1877,
      1515,
      1180,
      1014,
      1697,
      620,
      639,
      1653,
      1624,
      1605,
      1453,
      387,
      1007,
      1829,
      1004,
      1807,
      793,
      792,
      795,
      803,
      796,
      797,
      1521,
      1520,
      1565,
      1263,
      425,
      1522,
      988,
    ],
    [959, 1727, 1310, 1315, 176, 1747, 1808, 179, 185, 1103],
    [959, 1727, 1310, 1315, 276, 1747, 1808, 279, 291, 1103],
    [1202, 1473, 959, 960, 1309, 1012, 1820],
    [616, 1473, 1726, 1881, 1098],
    [616, 1473, 960, 1881, 1728, 1806, 1006, 1811, 1103],
    [1487, 1727, 1005, 1823, 1006, 1768, 1808, 1103],
    [1727, 1296, 1310],
    [
      1727,
      1310,
      1315,
      1010,
      115,
      276,
      294,
      1741,
      1480,
      1703,
      619,
      1580,
      573,
      1828,
      1301,
      1304,
      1682,
      1686,
      288,
      291,
    ],
    [1296, 1740, 1727, 1310, 1315, 276, 1808, 278, 1103],
    [959, 1727, 1310, 1012],
    [
      1727,
      1174,
      1480,
      1310,
      1315,
      1010,
      1703,
      619,
      1644,
      1653,
      767,
      568,
      1828,
      1301,
      1304,
      1682,
      1686,
      1005,
      1823,
      999,
      1768,
      1857,
    ],
    [1507, 1549],
    [1296, 1310, 1011, 177, 176, 191],
    [1202, 1473, 960, 1820],
    [
      1150,
      959,
      1912,
      1645,
      1820,
      1877,
      1515,
      1014,
      1697,
      620,
      639,
      1624,
      1605,
      1007,
      1829,
      1004,
      1807,
      793,
      792,
      795,
      803,
      796,
      797,
      1521,
      1520,
      1565,
      1263,
      425,
      1522,
      988,
      1187,
      1312,
      1915,
      1469,
      1666,
      1454,
      389,
      37,
      38,
      39,
      66,
    ],
    [
      1150,
      959,
      1912,
      1310,
      1645,
      1820,
      1877,
      1515,
      1180,
      1014,
      1697,
      620,
      639,
      1653,
      1624,
      1605,
      1453,
      387,
      1007,
      1829,
      1004,
      1807,
      793,
      792,
      795,
      803,
      796,
      797,
      1521,
      1520,
      1565,
      658,
    ],
    [
      1150,
      959,
      1912,
      1645,
      1820,
      1877,
      1515,
      1014,
      1697,
      620,
      639,
      1624,
      1605,
      1007,
      1829,
      1004,
      1807,
      793,
      792,
      795,
      803,
      796,
      797,
      1521,
      1520,
      1565,
      658,
      1187,
      1312,
      1915,
      1469,
      1666,
      1454,
      389,
      37,
      38,
      39,
      66,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
    [0, 1, 2, 14, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
    [15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
    [15, 1, 2, 14, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
    [16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
    [16, 1, 2, 14, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
    [17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
    [17, 1, 2, 14, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
  ];
}
