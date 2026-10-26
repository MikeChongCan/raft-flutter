// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `select`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `chrome` axis of `select` (default `default`).
enum RaftSelectRecipeChrome {
  default_('default'),
  field('field');

  const RaftSelectRecipeChrome(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftSelectRecipe].
class RaftSelectRecipeStyle {
  const RaftSelectRecipeStyle({
    required this.trigger,
    required this.icon,
    required this.value,
    required this.positioner,
    required this.content,
    required this.list,
    required this.item,
    required this.itemLeading,
    required this.itemIndicator,
    required this.itemText,
    required this.label,
    required this.group,
    required this.groupLabel,
    required this.separator,
    required this.scrollArrow,
    required this.empty,
  });

  /// Slot `trigger`.
  final RaftSlotStyle trigger;

  /// Slot `icon`.
  final RaftSlotStyle icon;

  /// Slot `value`.
  final RaftSlotStyle value;

  /// Slot `positioner`.
  final RaftSlotStyle positioner;

  /// Slot `content`.
  final RaftSlotStyle content;

  /// Slot `list`.
  final RaftSlotStyle list;

  /// Slot `item`.
  final RaftSlotStyle item;

  /// Slot `itemLeading`.
  final RaftSlotStyle itemLeading;

  /// Slot `itemIndicator`.
  final RaftSlotStyle itemIndicator;

  /// Slot `itemText`.
  final RaftSlotStyle itemText;

  /// Slot `label`.
  final RaftSlotStyle label;

  /// Slot `group`.
  final RaftSlotStyle group;

  /// Slot `groupLabel`.
  final RaftSlotStyle groupLabel;

  /// Slot `separator`.
  final RaftSlotStyle separator;

  /// Slot `scrollArrow`.
  final RaftSlotStyle scrollArrow;

  /// Slot `empty`.
  final RaftSlotStyle empty;

  Map<String, RaftSlotStyle> get slots => {
    'trigger': trigger,
    'icon': icon,
    'value': value,
    'positioner': positioner,
    'content': content,
    'list': list,
    'item': item,
    'itemLeading': itemLeading,
    'itemIndicator': itemIndicator,
    'itemText': itemText,
    'label': label,
    'group': group,
    'groupLabel': groupLabel,
    'separator': separator,
    'scrollArrow': scrollArrow,
    'empty': empty,
  };
}

/// raft-ui recipe `select` (`src/components/select/select.tsx`, index.mjs:5760).
///
/// Used by: SelectContent, SelectGroup, SelectGroupLabel, SelectIcon, SelectItem, SelectItemIndicator, SelectItemLeading, SelectItemText, SelectLabel, SelectList, SelectPopup, SelectScrollDownArrow, SelectScrollUpArrow, SelectSeparator, SelectTrigger, SelectValue, Step, Steps, useComposerSuggestions.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftSelectRecipe {
  static const String recipeName = 'select';
  static const List<String> slotNames = [
    'trigger',
    'icon',
    'value',
    'positioner',
    'content',
    'list',
    'item',
    'itemLeading',
    'itemIndicator',
    'itemText',
    'label',
    'group',
    'groupLabel',
    'separator',
    'scrollArrow',
    'empty',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('chrome', ['default', 'field'], 'default', false),
  ];

  static RaftSelectRecipeStyle resolve({
    RaftSelectRecipeChrome? chrome,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [chrome?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftSelectRecipeStyle(
      trigger: s[0],
      icon: s[1],
      value: s[2],
      positioner: s[3],
      content: s[4],
      list: s[5],
      item: s[6],
      itemLeading: s[7],
      itemIndicator: s[8],
      itemText: s[9],
      label: s[10],
      group: s[11],
      groupLabel: s[12],
      separator: s[13],
      scrollArrow: s[14],
      empty: s[15],
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
      1304,
      1722,
      1318,
      1322,
      1573,
      1887,
      872,
      3,
      2,
      156,
      155,
      217,
      1173,
      1922,
      1022,
      1633,
      1616,
      1839,
      1016,
      1816,
      883,
      884,
      869,
      873,
      870,
      871,
      215,
      216,
    ],
    [1495, 965, 1735, 1318, 1323, 1890, 177, 1818, 1555, 180, 186, 194],
    [965, 1481, 966, 1891, 1830],
    [1316, 1937, 1573],
    [1677, 1357, 1493, 1579, 1573, 1704, 602, 1590, 1816, 1732, 1689, 1693],
    [1361, 1583, 1585, 1720, 965, 967],
    [
      965,
      1922,
      1735,
      660,
      1722,
      1318,
      1322,
      1579,
      1830,
      1573,
      1887,
      1477,
      1023,
      1705,
      1654,
      1661,
      1807,
      1012,
      1816,
      615,
      1269,
      862,
      903,
      901,
      834,
      836,
      173,
      177,
      189,
      159,
      162,
    ],
    [965, 1735, 1318, 1323, 275, 277, 1748, 1821, 173, 177, 159, 162],
    [1625, 1495, 965, 1735, 1318, 1323, 1816, 180, 177, 186, 194],
    [1481, 966, 1891],
    [1356, 1015, 1815, 1016, 1821],
    [965, 967],
    [1666, 1654, 1640, 1599, 1808, 1007, 1818],
    [1198, 1735, 621, 98, 1519, 604],
    [
      422,
      1313,
      1933,
      965,
      1184,
      1922,
      660,
      1318,
      1323,
      1573,
      1887,
      675,
      674,
      275,
      277,
      602,
      1818,
    ],
    [1654, 1666, 1830, 1807, 1818],
    [
      1304,
      1722,
      1318,
      1322,
      1573,
      1887,
      872,
      3,
      2,
      156,
      155,
      217,
      1922,
      1022,
      1816,
      884,
      869,
      873,
      870,
      871,
      215,
      216,
      1655,
      1814,
      1010,
      1,
      6,
      1173,
      1661,
      882,
    ],
    [
      965,
      1922,
      1735,
      660,
      1722,
      1318,
      1322,
      1579,
      1830,
      1573,
      1887,
      1477,
      1023,
      1705,
      1654,
      1661,
      1816,
      615,
      1269,
      862,
      903,
      901,
      834,
      836,
      173,
      177,
      189,
      159,
      162,
      1814,
      1010,
      5,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15],
    [16, 1, 2, 3, 4, 5, 17, 7, 8, 9, 10, 11, 12, 13, 14, 15],
  ];
}
