// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `sidebarRecipe`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftSidebarRecipe].
class RaftSidebarRecipeStyle {
  const RaftSidebarRecipeStyle({
    required this.sidebarRoot,
    required this.sidebarHeader,
    required this.sidebarHeaderMask,
    required this.sidebarHeaderMaskLayer,
    required this.sidebarHeaderTitle,
    required this.sidebarGroupLabel,
    required this.sidebarBody,
    required this.sidebarContent,
    required this.sidebarViewport,
    required this.sidebarContentInner,
    required this.sidebarScrollbar,
    required this.sidebarLiveActivity,
  });

  /// Slot `sidebarRoot`.
  final RaftSlotStyle sidebarRoot;

  /// Slot `sidebarHeader`.
  final RaftSlotStyle sidebarHeader;

  /// Slot `sidebarHeaderMask`.
  final RaftSlotStyle sidebarHeaderMask;

  /// Slot `sidebarHeaderMaskLayer`.
  final RaftSlotStyle sidebarHeaderMaskLayer;

  /// Slot `sidebarHeaderTitle`.
  final RaftSlotStyle sidebarHeaderTitle;

  /// Slot `sidebarGroupLabel`.
  final RaftSlotStyle sidebarGroupLabel;

  /// Slot `sidebarBody`.
  final RaftSlotStyle sidebarBody;

  /// Slot `sidebarContent`.
  final RaftSlotStyle sidebarContent;

  /// Slot `sidebarViewport`.
  final RaftSlotStyle sidebarViewport;

  /// Slot `sidebarContentInner`.
  final RaftSlotStyle sidebarContentInner;

  /// Slot `sidebarScrollbar`.
  final RaftSlotStyle sidebarScrollbar;

  /// Slot `sidebarLiveActivity`.
  final RaftSlotStyle sidebarLiveActivity;

  Map<String, RaftSlotStyle> get slots => {
    'sidebarRoot': sidebarRoot,
    'sidebarHeader': sidebarHeader,
    'sidebarHeaderMask': sidebarHeaderMask,
    'sidebarHeaderMaskLayer': sidebarHeaderMaskLayer,
    'sidebarHeaderTitle': sidebarHeaderTitle,
    'sidebarGroupLabel': sidebarGroupLabel,
    'sidebarBody': sidebarBody,
    'sidebarContent': sidebarContent,
    'sidebarViewport': sidebarViewport,
    'sidebarContentInner': sidebarContentInner,
    'sidebarScrollbar': sidebarScrollbar,
    'sidebarLiveActivity': sidebarLiveActivity,
  };
}

/// raft-ui recipe `sidebarRecipe` (`src/components/sidebar/sidebar.recipe.ts`, index.mjs:2620).
///
/// Used by: SidebarBody, SidebarContent, SidebarGroupLabel, SidebarHeader, SidebarHeaderTitle, SidebarLiveActivity, SidebarRoot.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftSidebarRecipe {
  static const String recipeName = 'sidebarRecipe';
  static const List<String> slotNames = [
    'sidebarRoot',
    'sidebarHeader',
    'sidebarHeaderMask',
    'sidebarHeaderMaskLayer',
    'sidebarHeaderTitle',
    'sidebarGroupLabel',
    'sidebarBody',
    'sidebarContent',
    'sidebarViewport',
    'sidebarContentInner',
    'sidebarScrollbar',
    'sidebarLiveActivity',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftSidebarRecipeStyle resolve({
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
    return RaftSidebarRecipeStyle(
      sidebarRoot: s[0],
      sidebarHeader: s[1],
      sidebarHeaderMask: s[2],
      sidebarHeaderMaskLayer: s[3],
      sidebarHeaderTitle: s[4],
      sidebarGroupLabel: s[5],
      sidebarBody: s[6],
      sidebarContent: s[7],
      sidebarViewport: s[8],
      sidebarContentInner: s[9],
      sidebarScrollbar: s[10],
      sidebarLiveActivity: s[11],
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
    [1677, 965, 1764, 1465, 1722, 967, 1211, 603, 1816, 1375, 634, 1436, 1449],
    [
      965,
      1318,
      1167,
      1735,
      1022,
      623,
      634,
      1658,
      603,
      1816,
      1376,
      1390,
      1394,
      385,
    ],
    [1625, 422, 1313, 1856, 111, 1264],
    [422, 1313, 1856],
    [1891, 1007, 1015, 1827, 1816, 1394],
    [1653, 1643, 1600, 1015, 1815, 1007, 1525, 1867, 1818],
    [1677, 965, 1465, 966, 1579, 603, 1375],
    [1677, 965, 1465, 1481, 966],
    [1764, 1465, 966, 1582, 1583],
    [1480, 1481, 1922, 1653, 1640, 1596],
    [1935, 965, 1902, 1323, 1663, 1554, 1888, 942, 1625, 900, 899, 898],
    [1625, 422, 1313, 1381, 643, 1936],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
  ];
}
