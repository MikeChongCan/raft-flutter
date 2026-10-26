// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `messageReference`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `variant` axis of `messageReference` (default `muted`).
enum RaftMessageReferenceRecipeVariant {
  primary('primary'),
  secondary('secondary'),
  accent('accent'),
  muted('muted'),
  info('info'),
  link('link'),
  pending('pending'),
  unavailable('unavailable');

  const RaftMessageReferenceRecipeVariant(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftMessageReferenceRecipe].
class RaftMessageReferenceRecipeStyle {
  const RaftMessageReferenceRecipeStyle({
    required this.root,
    required this.chipLabel,
    required this.indicator,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `chipLabel`.
  final RaftSlotStyle chipLabel;

  /// Slot `indicator`.
  final RaftSlotStyle indicator;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'chipLabel': chipLabel,
    'indicator': indicator,
  };
}

/// raft-ui recipe `messageReference` (`src/components/message-item/message-reference.recipe.ts`, index.mjs:7705).
///
/// Used by: MessageReferenceChip, MessageReferenceIndicator, MessageReferenceLabel, MessageReferencePending, MessageReferenceText, MessageReferenceUnavailable.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftMessageReferenceRecipe {
  static const String recipeName = 'messageReference';
  static const List<String> slotNames = ['root', 'chipLabel', 'indicator'];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis(
      'variant',
      [
        'primary',
        'secondary',
        'accent',
        'muted',
        'info',
        'link',
        'pending',
        'unavailable',
      ],
      'muted',
      false,
    ),
  ];

  static RaftMessageReferenceRecipeStyle resolve({
    RaftMessageReferenceRecipeVariant? variant,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [variant?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftMessageReferenceRecipeStyle(
      root: s[0],
      chipLabel: s[1],
      indicator: s[2],
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
      1317,
      1020,
      1661,
      468,
      417,
      1341,
      1422,
      1891,
      1723,
      1573,
      995,
      286,
      277,
      276,
      1209,
      1207,
      1206,
      1208,
      1304,
      664,
      1711,
      1660,
      1016,
      1838,
      1524,
      575,
      1309,
      1312,
      1690,
      1694,
      1283,
    ],
    [1481, 1891],
    [1625, 422, 103, 1856, 1304, 1745, 1735, 1318, 1323, 82],
    [
      1317,
      1020,
      1661,
      468,
      417,
      1341,
      1422,
      1891,
      1723,
      1573,
      995,
      286,
      277,
      276,
      1209,
      1207,
      1206,
      1208,
      1302,
      664,
      1007,
      1816,
      1892,
      916,
      915,
      1894,
      1281,
    ],
    [
      1304,
      1661,
      1422,
      1891,
      1723,
      1524,
      1573,
      995,
      277,
      276,
      1209,
      1207,
      1206,
      1208,
      1190,
      1318,
      1019,
      1711,
      1652,
      1218,
      467,
      416,
      1337,
      1016,
      279,
      294,
      572,
      1816,
      664,
      1282,
      429,
    ],
    [
      1304,
      1661,
      1422,
      1891,
      1723,
      1524,
      1573,
      995,
      277,
      276,
      1209,
      1207,
      1206,
      1208,
      1190,
      1318,
      1019,
      1711,
      1652,
      1218,
      467,
      416,
      1337,
      1016,
      279,
      294,
      591,
      1816,
      664,
      1282,
      429,
    ],
    [
      1304,
      1661,
      1422,
      1891,
      1723,
      1524,
      1573,
      995,
      277,
      276,
      1209,
      1207,
      1206,
      1208,
      1190,
      1318,
      1019,
      1711,
      1652,
      1218,
      467,
      416,
      1337,
      1016,
      279,
      294,
      593,
      1816,
      664,
      1282,
      429,
    ],
    [
      1304,
      1661,
      1422,
      1891,
      1723,
      1524,
      1573,
      995,
      277,
      276,
      1209,
      1207,
      1206,
      1208,
      1190,
      1318,
      1019,
      1711,
      1652,
      1218,
      467,
      416,
      1337,
      1016,
      279,
      294,
      665,
      591,
      1821,
    ],
    [
      1304,
      1661,
      1422,
      1891,
      1723,
      1524,
      1573,
      995,
      277,
      276,
      1209,
      1207,
      1206,
      1208,
      1190,
      1318,
      1019,
      1711,
      1652,
      1218,
      467,
      416,
      1337,
      1016,
      279,
      294,
      660,
      591,
      1818,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2],
    [3, 1, 2],
    [4, 1, 2],
    [5, 1, 2],
    [6, 1, 2],
    [6, 1, 2],
    [7, 1, 2],
    [8, 1, 2],
  ];
}
