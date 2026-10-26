// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `avatar`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `type` axis of `avatar`.
enum RaftAvatarRecipeType {
  agent('agent'),
  human('human');

  const RaftAvatarRecipeType(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// `size` axis of `avatar`.
enum RaftAvatarRecipeSize {
  xl('xl'),
  lg('lg'),
  md('md'),
  sm('sm'),
  xs('xs'),
  v2xs('2xs'),
  v3xs('3xs');

  const RaftAvatarRecipeSize(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftAvatarRecipe].
class RaftAvatarRecipeStyle {
  const RaftAvatarRecipeStyle({
    required this.root,
    required this.image,
    required this.fallback,
    required this.badge,
    required this.dot,
    required this.group,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `image`.
  final RaftSlotStyle image;

  /// Slot `fallback`.
  final RaftSlotStyle fallback;

  /// Slot `badge`.
  final RaftSlotStyle badge;

  /// Slot `dot`.
  final RaftSlotStyle dot;

  /// Slot `group`.
  final RaftSlotStyle group;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'image': image,
    'fallback': fallback,
    'badge': badge,
    'dot': dot,
    'group': group,
  };
}

/// raft-ui recipe `avatar` (`src/components/avatar/avatar.tsx`, index.mjs:6406).
///
/// Used by: Avatar, AvatarBadge, AvatarFallback, AvatarGroup, AvatarGroupCount, AvatarImage, LiveAgentActivityBarAvatar.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftAvatarRecipe {
  static const String recipeName = 'avatar';
  static const List<String> slotNames = [
    'root',
    'image',
    'fallback',
    'badge',
    'dot',
    'group',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('type', ['agent', 'human'], null, true),
    RaftRecipeAxis(
      'size',
      ['xl', 'lg', 'md', 'sm', 'xs', '2xs', '3xs'],
      null,
      true,
    ),
  ];

  static RaftAvatarRecipeStyle resolve({
    RaftAvatarRecipeType? type_,
    RaftAvatarRecipeSize? size,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [type_?.css, size?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftAvatarRecipeStyle(
      root: s[0],
      image: s[1],
      fallback: s[2],
      badge: s[3],
      dot: s[4],
      group: s[5],
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
    [1126, 1669, 959, 1727, 1310, 1315, 1714, 1703, 620, 635, 1828, 1722],
    [1755, 1542, 1691],
    [
      959,
      1755,
      1310,
      1315,
      179,
      1067,
      1075,
      1091,
      1571,
      1691,
      1007,
      1785,
      1337,
      999,
      1856,
      1828,
      1090,
      1071,
      1081,
      1096,
      1057,
      1064,
      1086,
      1077,
      1052,
      1060,
    ],
    [
      420,
      1923,
      1714,
      1746,
      102,
      93,
      1691,
      1562,
      1567,
      1564,
      1089,
      1084,
      1083,
      1070,
      1069,
      1068,
      1076,
      1080,
      1079,
      1078,
      1095,
      1094,
      1092,
      1056,
      1055,
      1053,
      1063,
      1059,
      1058,
    ],
    [
      1296,
      1310,
      1315,
      1562,
      168,
      1087,
      1085,
      1066,
      1065,
      1074,
      1073,
      1093,
      1054,
      1062,
      1691,
      620,
      635,
      566,
      1828,
      1564,
      1088,
      1061,
    ],
    [1127, 959, 1310, 1758, 67, 65],
    [1126, 1669, 959, 1727, 1310, 1315, 1714, 1703, 620, 635, 1828, 1752, 1721],
    [1126, 1669, 959, 1727, 1310, 1315, 1714, 1703, 620, 635, 1828, 1722, 1751],
    [1126, 1669, 959, 1727, 1310, 1315, 1714, 1703, 620, 635, 1828, 1722, 1750],
    [1126, 1669, 959, 1727, 1310, 1315, 1714, 1703, 620, 635, 1828, 1722, 1749],
    [1126, 1669, 959, 1727, 1310, 1315, 1714, 1703, 620, 635, 1828, 1722, 1747],
    [1126, 1669, 959, 1727, 1310, 1315, 1714, 1703, 620, 635, 1828, 1722, 1739],
    [1126, 1669, 959, 1727, 1310, 1315, 1714, 1703, 620, 635, 1828, 1722, 588],
    [
      1126,
      1669,
      959,
      1727,
      1310,
      1315,
      1714,
      1703,
      620,
      635,
      1828,
      588,
      1752,
      1721,
    ],
    [
      1126,
      1669,
      959,
      1727,
      1310,
      1315,
      1714,
      1703,
      620,
      635,
      1828,
      1722,
      588,
      1751,
    ],
    [
      1126,
      1669,
      959,
      1727,
      1310,
      1315,
      1714,
      1703,
      620,
      635,
      1828,
      1722,
      588,
      1750,
    ],
    [
      1126,
      1669,
      959,
      1727,
      1310,
      1315,
      1714,
      1703,
      620,
      635,
      1828,
      1722,
      588,
      1749,
    ],
    [
      1126,
      1669,
      959,
      1727,
      1310,
      1315,
      1714,
      1703,
      620,
      635,
      1828,
      1722,
      588,
      1747,
    ],
    [
      1126,
      1669,
      959,
      1727,
      1310,
      1315,
      1714,
      1703,
      620,
      635,
      1828,
      1722,
      588,
      1739,
    ],
    [1126, 1669, 959, 1727, 1310, 1315, 1714, 1703, 620, 635, 1828, 1722, 603],
    [
      1126,
      1669,
      959,
      1727,
      1310,
      1315,
      1714,
      1703,
      620,
      635,
      1828,
      603,
      1752,
      1721,
    ],
    [
      1126,
      1669,
      959,
      1727,
      1310,
      1315,
      1714,
      1703,
      620,
      635,
      1828,
      1722,
      603,
      1751,
    ],
    [
      1126,
      1669,
      959,
      1727,
      1310,
      1315,
      1714,
      1703,
      620,
      635,
      1828,
      1722,
      603,
      1750,
    ],
    [
      1126,
      1669,
      959,
      1727,
      1310,
      1315,
      1714,
      1703,
      620,
      635,
      1828,
      1722,
      603,
      1749,
    ],
    [
      1126,
      1669,
      959,
      1727,
      1310,
      1315,
      1714,
      1703,
      620,
      635,
      1828,
      1722,
      603,
      1747,
    ],
    [
      1126,
      1669,
      959,
      1727,
      1310,
      1315,
      1714,
      1703,
      620,
      635,
      1828,
      1722,
      603,
      1739,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5],
    [6, 1, 2, 3, 4, 5],
    [7, 1, 2, 3, 4, 5],
    [8, 1, 2, 3, 4, 5],
    [9, 1, 2, 3, 4, 5],
    [10, 1, 2, 3, 4, 5],
    [10, 1, 2, 3, 4, 5],
    [11, 1, 2, 3, 4, 5],
    [12, 1, 2, 3, 4, 5],
    [13, 1, 2, 3, 4, 5],
    [14, 1, 2, 3, 4, 5],
    [15, 1, 2, 3, 4, 5],
    [16, 1, 2, 3, 4, 5],
    [17, 1, 2, 3, 4, 5],
    [17, 1, 2, 3, 4, 5],
    [18, 1, 2, 3, 4, 5],
    [19, 1, 2, 3, 4, 5],
    [20, 1, 2, 3, 4, 5],
    [21, 1, 2, 3, 4, 5],
    [22, 1, 2, 3, 4, 5],
    [23, 1, 2, 3, 4, 5],
    [24, 1, 2, 3, 4, 5],
    [24, 1, 2, 3, 4, 5],
    [25, 1, 2, 3, 4, 5],
  ];
}
