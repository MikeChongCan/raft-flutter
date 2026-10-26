// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `searchEntity`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftSearchEntityRecipe].
class RaftSearchEntityRecipeStyle {
  const RaftSearchEntityRecipeStyle({
    required this.entity,
    required this.entityLeading,
    required this.entityIcon,
    required this.entityActivity,
    required this.entityContent,
    required this.entityHeader,
    required this.entityTitle,
    required this.entityDescription,
  });

  /// Slot `entity`.
  final RaftSlotStyle entity;

  /// Slot `entityLeading`.
  final RaftSlotStyle entityLeading;

  /// Slot `entityIcon`.
  final RaftSlotStyle entityIcon;

  /// Slot `entityActivity`.
  final RaftSlotStyle entityActivity;

  /// Slot `entityContent`.
  final RaftSlotStyle entityContent;

  /// Slot `entityHeader`.
  final RaftSlotStyle entityHeader;

  /// Slot `entityTitle`.
  final RaftSlotStyle entityTitle;

  /// Slot `entityDescription`.
  final RaftSlotStyle entityDescription;

  Map<String, RaftSlotStyle> get slots => {
    'entity': entity,
    'entityLeading': entityLeading,
    'entityIcon': entityIcon,
    'entityActivity': entityActivity,
    'entityContent': entityContent,
    'entityHeader': entityHeader,
    'entityTitle': entityTitle,
    'entityDescription': entityDescription,
  };
}

/// raft-ui recipe `searchEntity` (`src/components/search/search-entity.recipe.ts`, index.mjs:16437).
///
/// Used by: SearchEntityResult, SearchEntityResultActivity, SearchEntityResultContent, SearchEntityResultDescription, SearchEntityResultHeader, SearchEntityResultIcon, SearchEntityResultLeading, SearchEntityResultTitle.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftSearchEntityRecipe {
  static const String recipeName = 'searchEntity';
  static const List<String> slotNames = [
    'entity',
    'entityLeading',
    'entityIcon',
    'entityActivity',
    'entityContent',
    'entityHeader',
    'entityTitle',
    'entityDescription',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftSearchEntityRecipeStyle resolve({
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
    return RaftSearchEntityRecipeStyle(
      entity: s[0],
      entityLeading: s[1],
      entityIcon: s[2],
      entityActivity: s[3],
      entityContent: s[4],
      entityHeader: s[5],
      entityTitle: s[6],
      entityDescription: s[7],
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
      959,
      1473,
      1912,
      1310,
      1016,
      1584,
      1820,
      1877,
      1669,
      1701,
      619,
      613,
      1649,
      1660,
      1807,
      1725,
      1375,
      1531,
      1538,
      1537,
      1536,
      1534,
      1533,
      1263,
      425,
      923,
      925,
      917,
      735,
      740,
      1565,
      972,
      973,
    ],
    [1669, 959, 1727],
    [959, 1310, 1315, 1571, 1749, 1703, 579, 1811, 278],
    [420, 1295, 1727, 1679, 646, 1753, 1691, 620, 635, 604, 1723],
    [1473, 960, 959, 961, 1011],
    [959, 1473, 1310, 1014],
    [1881, 1007, 1795, 1008, 1807, 874],
    [616, 1881, 1798, 1811, 874],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7],
  ];
}
