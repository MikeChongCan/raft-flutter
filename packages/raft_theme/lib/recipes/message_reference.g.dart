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
      1309,
      1012,
      1653,
      466,
      415,
      1333,
      1414,
      1881,
      1715,
      1565,
      988,
      285,
      276,
      275,
      1201,
      1199,
      1198,
      1200,
      1296,
      661,
      1703,
      1652,
      1008,
      1828,
      1516,
      573,
      1301,
      1304,
      1682,
      1686,
      1275,
    ],
    [1473, 1881],
    [1617, 420, 103, 1846, 1296, 1737, 1727, 1310, 1315, 82],
    [
      1309,
      1012,
      1653,
      466,
      415,
      1333,
      1414,
      1881,
      1715,
      1565,
      988,
      285,
      276,
      275,
      1201,
      1199,
      1198,
      1200,
      1294,
      661,
      999,
      1807,
      1882,
      913,
      912,
      1884,
      1273,
    ],
    [
      1296,
      1653,
      1414,
      1881,
      1715,
      1516,
      1565,
      988,
      276,
      275,
      1201,
      1199,
      1198,
      1200,
      1182,
      1310,
      1011,
      1703,
      1644,
      1210,
      465,
      414,
      1329,
      1008,
      278,
      293,
      570,
      1807,
      661,
      1274,
      427,
    ],
    [
      1296,
      1653,
      1414,
      1881,
      1715,
      1516,
      1565,
      988,
      276,
      275,
      1201,
      1199,
      1198,
      1200,
      1182,
      1310,
      1011,
      1703,
      1644,
      1210,
      465,
      414,
      1329,
      1008,
      278,
      293,
      589,
      1807,
      661,
      1274,
      427,
    ],
    [
      1296,
      1653,
      1414,
      1881,
      1715,
      1516,
      1565,
      988,
      276,
      275,
      1201,
      1199,
      1198,
      1200,
      1182,
      1310,
      1011,
      1703,
      1644,
      1210,
      465,
      414,
      1329,
      1008,
      278,
      293,
      591,
      1807,
      661,
      1274,
      427,
    ],
    [
      1296,
      1653,
      1414,
      1881,
      1715,
      1516,
      1565,
      988,
      276,
      275,
      1201,
      1199,
      1198,
      1200,
      1182,
      1310,
      1011,
      1703,
      1644,
      1210,
      465,
      414,
      1329,
      1008,
      278,
      293,
      662,
      589,
      1811,
    ],
    [
      1296,
      1653,
      1414,
      1881,
      1715,
      1516,
      1565,
      988,
      276,
      275,
      1201,
      1199,
      1198,
      1200,
      1182,
      1310,
      1011,
      1703,
      1644,
      1210,
      465,
      414,
      1329,
      1008,
      278,
      293,
      658,
      589,
      1808,
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
