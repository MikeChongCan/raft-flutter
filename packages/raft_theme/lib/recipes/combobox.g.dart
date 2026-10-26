// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `combobox`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `inputOwner` axis of `combobox`.
enum RaftComboboxRecipeInputOwner {
  group('group'),
  control('control');

  const RaftComboboxRecipeInputOwner(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftComboboxRecipe].
class RaftComboboxRecipeStyle {
  const RaftComboboxRecipeStyle({
    required this.trigger,
    required this.triggerCount,
    required this.triggerIndicator,
    required this.control,
    required this.inputGroup,
    required this.input,
    required this.positioner,
    required this.content,
    required this.header,
    required this.separator,
    required this.list,
    required this.item,
    required this.itemIndicator,
    required this.label,
    required this.clear,
    required this.empty,
    required this.groupLabel,
    required this.chips,
    required this.chip,
    required this.chipRemove,
  });

  /// Slot `trigger`.
  final RaftSlotStyle trigger;

  /// Slot `triggerCount`.
  final RaftSlotStyle triggerCount;

  /// Slot `triggerIndicator`.
  final RaftSlotStyle triggerIndicator;

  /// Slot `control`.
  final RaftSlotStyle control;

  /// Slot `inputGroup`.
  final RaftSlotStyle inputGroup;

  /// Slot `input`.
  final RaftSlotStyle input;

  /// Slot `positioner`.
  final RaftSlotStyle positioner;

  /// Slot `content`.
  final RaftSlotStyle content;

  /// Slot `header`.
  final RaftSlotStyle header;

  /// Slot `separator`.
  final RaftSlotStyle separator;

  /// Slot `list`.
  final RaftSlotStyle list;

  /// Slot `item`.
  final RaftSlotStyle item;

  /// Slot `itemIndicator`.
  final RaftSlotStyle itemIndicator;

  /// Slot `label`.
  final RaftSlotStyle label;

  /// Slot `clear`.
  final RaftSlotStyle clear;

  /// Slot `empty`.
  final RaftSlotStyle empty;

  /// Slot `groupLabel`.
  final RaftSlotStyle groupLabel;

  /// Slot `chips`.
  final RaftSlotStyle chips;

  /// Slot `chip`.
  final RaftSlotStyle chip;

  /// Slot `chipRemove`.
  final RaftSlotStyle chipRemove;

  Map<String, RaftSlotStyle> get slots => {
    'trigger': trigger,
    'triggerCount': triggerCount,
    'triggerIndicator': triggerIndicator,
    'control': control,
    'inputGroup': inputGroup,
    'input': input,
    'positioner': positioner,
    'content': content,
    'header': header,
    'separator': separator,
    'list': list,
    'item': item,
    'itemIndicator': itemIndicator,
    'label': label,
    'clear': clear,
    'empty': empty,
    'groupLabel': groupLabel,
    'chips': chips,
    'chip': chip,
    'chipRemove': chipRemove,
  };
}

/// raft-ui recipe `combobox` (`src/components/combobox/combobox.tsx`, index.mjs:5311).
///
/// Used by: ComboboxChip, ComboboxChipRemove, ComboboxChips, ComboboxClear, ComboboxContent, ComboboxControl, ComboboxEmpty, ComboboxGroupLabel, ComboboxHeader, ComboboxInput, ComboboxInputGroup, ComboboxItem, ComboboxItemIndicator, ComboboxLabel, ComboboxList, ComboboxPopup, ComboboxSeparator, ComboboxTrigger, ComboboxTriggerCount, ComboboxTriggerIndicator.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftComboboxRecipe {
  static const String recipeName = 'combobox';
  static const List<String> slotNames = [
    'trigger',
    'triggerCount',
    'triggerIndicator',
    'control',
    'inputGroup',
    'input',
    'positioner',
    'content',
    'header',
    'separator',
    'list',
    'item',
    'itemIndicator',
    'label',
    'clear',
    'empty',
    'groupLabel',
    'chips',
    'chip',
    'chipRemove',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('inputOwner', ['group', 'control'], null, true),
  ];

  static RaftComboboxRecipeStyle resolve({
    RaftComboboxRecipeInputOwner? inputOwner,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [inputOwner?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftComboboxRecipeStyle(
      trigger: s[0],
      triggerCount: s[1],
      triggerIndicator: s[2],
      control: s[3],
      inputGroup: s[4],
      input: s[5],
      positioner: s[6],
      content: s[7],
      header: s[8],
      separator: s[9],
      list: s[10],
      item: s[11],
      itemIndicator: s[12],
      label: s[13],
      clear: s[14],
      empty: s[15],
      groupLabel: s[16],
      chips: s[17],
      chip: s[18],
      chipRemove: s[19],
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
      1714,
      1310,
      1314,
      1565,
      1877,
      3,
      2,
      154,
      153,
      152,
      1179,
      1013,
      1697,
      639,
      613,
      1646,
      1806,
      1008,
      1811,
      1300,
      1303,
      1266,
      854,
      858,
      857,
      855,
      988,
      926,
      486,
      150,
      151,
    ],
    [1296, 1727, 1310, 1315, 1187, 1473, 1641, 1005, 1823, 999],
    [
      1487,
      959,
      1727,
      1310,
      1315,
      1867,
      937,
      176,
      1703,
      1808,
      1547,
      1266,
      1277,
      178,
      185,
      193,
    ],
    [
      959,
      1473,
      1310,
      1014,
      1565,
      172,
      176,
      210,
      209,
      4,
      213,
      211,
      1459,
      1697,
      620,
      633,
      594,
      1647,
      1653,
      1007,
      1795,
      1807,
      1879,
      943,
      946,
      993,
      187,
      159,
      161,
      212,
    ],
    [
      959,
      1310,
      621,
      1164,
      1014,
      631,
      613,
      1647,
      1653,
      1798,
      1808,
      179,
      176,
      957,
      991,
      992,
    ],
    [1912, 1565],
    [1308, 1927, 1565],
    [1187, 1349, 1484, 1571, 1565, 1696, 600, 1807, 1724, 1681, 1685],
    [959, 1310, 1314, 1647, 1014, 1656, 1622, 1609],
    [1190, 1727, 619, 602],
    [1353, 1575, 1577, 959, 961, 1582, 1711],
    [
      959,
      1912,
      1727,
      658,
      1714,
      1310,
      1314,
      1571,
      1820,
      1565,
      1877,
      1469,
      1015,
      1697,
      1646,
      1653,
      1007,
      1798,
      1004,
      1807,
      613,
      1261,
      859,
      900,
      831,
      833,
      274,
      276,
      264,
      270,
    ],
    [1617, 1487, 959, 1727, 1310, 1315, 1807, 179, 176, 185, 193],
    [1348, 1007, 1799, 999, 1808],
    [
      1296,
      1310,
      1315,
      1617,
      1546,
      1565,
      1867,
      937,
      910,
      909,
      1177,
      1473,
      1697,
      1645,
      1007,
      1806,
      1008,
      1811,
      1263,
      1276,
      425,
      988,
      179,
      185,
      193,
    ],
    [1649, 1661, 1820, 1798, 1808],
    [1658, 1646, 1632, 1591, 1799, 999, 1808],
    [
      959,
      965,
      1310,
      1459,
      1013,
      1697,
      620,
      633,
      594,
      1656,
      1625,
      1604,
      1879,
      943,
      946,
      993,
    ],
    [1296, 1310, 1177, 1013, 1695, 579, 1620, 1605, 1806, 1008, 1807],
    [1296, 1310, 1315, 1565, 1877, 1748, 1703, 1808, 1263, 425, 988, 178],
    [1912, 1565, 1473, 960, 619, 613, 1580, 1007, 1798, 1807, 1615],
    [
      1912,
      1473,
      960,
      1701,
      619,
      613,
      1580,
      1725,
      1565,
      1680,
      994,
      996,
      984,
      986,
      1007,
      1795,
      1006,
      1807,
      1615,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19],
    [0, 1, 2, 3, 4, 20, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19],
    [0, 1, 2, 3, 4, 21, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19],
  ];
}
