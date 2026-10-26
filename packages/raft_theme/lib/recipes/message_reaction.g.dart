// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `messageReaction`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftMessageReactionRecipe].
class RaftMessageReactionRecipeStyle {
  const RaftMessageReactionRecipeStyle({
    required this.chip,
    required this.errorIndicator,
    required this.glyph,
    required this.count,
    required this.addButton,
    required this.quickRow,
    required this.quickButton,
    required this.pickerContent,
    required this.pickerStatic,
    required this.tooltip,
    required this.tooltipNames,
    required this.tooltipName,
    required this.tooltipNameText,
    required this.tooltipSeparator,
    required this.tooltipMeta,
  });

  /// Slot `chip`.
  final RaftSlotStyle chip;

  /// Slot `errorIndicator`.
  final RaftSlotStyle errorIndicator;

  /// Slot `glyph`.
  final RaftSlotStyle glyph;

  /// Slot `count`.
  final RaftSlotStyle count;

  /// Slot `addButton`.
  final RaftSlotStyle addButton;

  /// Slot `quickRow`.
  final RaftSlotStyle quickRow;

  /// Slot `quickButton`.
  final RaftSlotStyle quickButton;

  /// Slot `pickerContent`.
  final RaftSlotStyle pickerContent;

  /// Slot `pickerStatic`.
  final RaftSlotStyle pickerStatic;

  /// Slot `tooltip`.
  final RaftSlotStyle tooltip;

  /// Slot `tooltipNames`.
  final RaftSlotStyle tooltipNames;

  /// Slot `tooltipName`.
  final RaftSlotStyle tooltipName;

  /// Slot `tooltipNameText`.
  final RaftSlotStyle tooltipNameText;

  /// Slot `tooltipSeparator`.
  final RaftSlotStyle tooltipSeparator;

  /// Slot `tooltipMeta`.
  final RaftSlotStyle tooltipMeta;

  Map<String, RaftSlotStyle> get slots => {
    'chip': chip,
    'errorIndicator': errorIndicator,
    'glyph': glyph,
    'count': count,
    'addButton': addButton,
    'quickRow': quickRow,
    'quickButton': quickButton,
    'pickerContent': pickerContent,
    'pickerStatic': pickerStatic,
    'tooltip': tooltip,
    'tooltipNames': tooltipNames,
    'tooltipName': tooltipName,
    'tooltipNameText': tooltipNameText,
    'tooltipSeparator': tooltipSeparator,
    'tooltipMeta': tooltipMeta,
  };
}

/// raft-ui recipe `messageReaction` (`src/components/message-item/message-reaction.recipe.ts`, index.mjs:7466).
///
/// Used by: MessageReactionAddButton, MessageReactionChip, MessageReactionCount, MessageReactionErrorIndicator, MessageReactionGlyph, MessageReactionPickerContent, MessageReactionPickerStatic, MessageReactionQuickButton, MessageReactionQuickRow, MessageReactionTooltipContent, MessageReactionTooltipMeta, MessageReactionTooltipName, MessageReactionTooltipNameText, MessageReactionTooltipNames, MessageReactionTooltipSeparator.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftMessageReactionRecipe {
  static const String recipeName = 'messageReaction';
  static const List<String> slotNames = [
    'chip',
    'errorIndicator',
    'glyph',
    'count',
    'addButton',
    'quickRow',
    'quickButton',
    'pickerContent',
    'pickerStatic',
    'tooltip',
    'tooltipNames',
    'tooltipName',
    'tooltipNameText',
    'tooltipSeparator',
    'tooltipMeta',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftMessageReactionRecipeStyle resolve({
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
    return RaftMessageReactionRecipeStyle(
      chip: s[0],
      errorIndicator: s[1],
      glyph: s[2],
      count: s[3],
      addButton: s[4],
      quickRow: s[5],
      quickButton: s[6],
      pickerContent: s[7],
      pickerStatic: s[8],
      tooltip: s[9],
      tooltipNames: s[10],
      tooltipName: s[11],
      tooltipNameText: s[12],
      tooltipSeparator: s[13],
      tooltipMeta: s[14],
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
      1296,
      1473,
      1414,
      1310,
      1571,
      1916,
      1877,
      1176,
      1012,
      1695,
      1623,
      1604,
      1798,
      1807,
      579,
      1274,
      427,
      886,
      1247,
      1565,
      988,
      228,
    ],
    [1766],
    [1296, 1310, 1315, 1337, 183, 176],
    [1295, 1559, 1005, 1768, 1823, 999],
    [
      1296,
      1473,
      1310,
      1315,
      1877,
      276,
      1176,
      1695,
      1644,
      279,
      579,
      1811,
      1274,
      427,
      1565,
      988,
    ],
    [959, 1727, 1310, 1314, 1011, 600, 1642, 1654, 145, 144, 64],
    [
      959,
      1310,
      1315,
      613,
      1877,
      1745,
      1697,
      1580,
      1843,
      1337,
      1811,
      1261,
      859,
      423,
      1565,
      988,
    ],
    [1296, 1310, 1473, 964, 1011, 1581, 145, 144],
    [1296, 1310, 1473, 964, 1011, 1696, 1581, 600, 1681, 1685, 1724, 1565],
    [1295, 1399, 1646, 1655, 1806, 1004],
    [959, 1396, 965, 1310, 1028],
    [1296, 1473, 1309, 1329],
    [1392, 1881],
    [1727, 1814],
    [1329, 1814],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
  ];
}
