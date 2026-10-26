// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `tooltip`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftTooltipRecipe].
class RaftTooltipRecipeStyle {
  const RaftTooltipRecipeStyle({
    required this.trigger,
    required this.positioner,
    required this.content,
    required this.body,
    required this.bodyIcon,
    required this.bodyText,
    required this.arrow,
  });

  /// Slot `trigger`.
  final RaftSlotStyle trigger;

  /// Slot `positioner`.
  final RaftSlotStyle positioner;

  /// Slot `content`.
  final RaftSlotStyle content;

  /// Slot `body`.
  final RaftSlotStyle body;

  /// Slot `bodyIcon`.
  final RaftSlotStyle bodyIcon;

  /// Slot `bodyText`.
  final RaftSlotStyle bodyText;

  /// Slot `arrow`.
  final RaftSlotStyle arrow;

  Map<String, RaftSlotStyle> get slots => {
    'trigger': trigger,
    'positioner': positioner,
    'content': content,
    'body': body,
    'bodyIcon': bodyIcon,
    'bodyText': bodyText,
    'arrow': arrow,
  };
}

/// raft-ui recipe `tooltip` (`src/components/tooltip/tooltip.tsx`, index.mjs:1295).
///
/// Used by: FloatButton, MessageReactionTooltipContent, TooltipContent, TooltipTrigger.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftTooltipRecipe {
  static const String recipeName = 'tooltip';
  static const List<String> slotNames = [
    'trigger',
    'positioner',
    'content',
    'body',
    'bodyIcon',
    'bodyText',
    'arrow',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('hasLeadingIcon', ['true', 'false'], null, true),
  ];

  static RaftTooltipRecipeStyle resolve({
    bool? hasLeadingIcon,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [hasLeadingIcon?.toString()],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftTooltipRecipeStyle(
      trigger: s[0],
      positioner: s[1],
      content: s[2],
      body: s[3],
      bodyIcon: s[4],
      bodyText: s[5],
      arrow: s[6],
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
    [1714],
    [1308, 1927, 1617, 1565],
    [
      1617,
      1669,
      1295,
      1410,
      1473,
      1646,
      1655,
      1557,
      1565,
      1872,
      938,
      945,
      904,
      903,
      846,
      844,
      865,
      1493,
      1695,
      599,
      1813,
      1007,
      1004,
      1724,
      1226,
      1225,
    ],
    [
      616,
      1473,
      1784,
      1328,
      1915,
      1921,
      28,
      30,
      224,
      222,
      223,
      225,
      226,
      29,
      27,
      221,
    ],
    [1727, 165, 178, 176],
    [1473, 960],
    [1617, 959, 1572, 762, 749, 748, 758, 756, 760, 761, 755, 753, 751, 752],
    [
      1473,
      1784,
      1328,
      1915,
      1921,
      28,
      30,
      224,
      222,
      223,
      225,
      226,
      29,
      27,
      221,
      959,
      1310,
      1022,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6],
    [0, 1, 2, 7, 4, 5, 6],
    [0, 1, 2, 3, 4, 5, 6],
  ];
}
