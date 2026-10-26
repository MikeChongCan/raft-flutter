// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `contextMenu`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftContextMenuRecipe].
class RaftContextMenuRecipeStyle {
  const RaftContextMenuRecipeStyle({
    required this.trigger,
    required this.positioner,
    required this.content,
    required this.item,
    required this.radioItem,
    required this.submenuTrigger,
    required this.itemLabel,
    required this.footer,
    required this.label,
    required this.shortcut,
    required this.separator,
    required this.indicator,
  });

  /// Slot `trigger`.
  final RaftSlotStyle trigger;

  /// Slot `positioner`.
  final RaftSlotStyle positioner;

  /// Slot `content`.
  final RaftSlotStyle content;

  /// Slot `item`.
  final RaftSlotStyle item;

  /// Slot `radioItem`.
  final RaftSlotStyle radioItem;

  /// Slot `submenuTrigger`.
  final RaftSlotStyle submenuTrigger;

  /// Slot `itemLabel`.
  final RaftSlotStyle itemLabel;

  /// Slot `footer`.
  final RaftSlotStyle footer;

  /// Slot `label`.
  final RaftSlotStyle label;

  /// Slot `shortcut`.
  final RaftSlotStyle shortcut;

  /// Slot `separator`.
  final RaftSlotStyle separator;

  /// Slot `indicator`.
  final RaftSlotStyle indicator;

  Map<String, RaftSlotStyle> get slots => {
    'trigger': trigger,
    'positioner': positioner,
    'content': content,
    'item': item,
    'radioItem': radioItem,
    'submenuTrigger': submenuTrigger,
    'itemLabel': itemLabel,
    'footer': footer,
    'label': label,
    'shortcut': shortcut,
    'separator': separator,
    'indicator': indicator,
  };
}

/// raft-ui recipe `contextMenu` (`src/components/context-menu/context-menu.tsx`, index.mjs:3730).
///
/// Used by: ContextMenuCheckboxItem, ContextMenuContent, ContextMenuFooter, ContextMenuItem, ContextMenuItemLabel, ContextMenuLabel, ContextMenuPopup, ContextMenuRadioItem, ContextMenuSeparator, ContextMenuShortcut, ContextMenuSubmenuTrigger, ContextMenuTrigger.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftContextMenuRecipe {
  static const String recipeName = 'contextMenu';
  static const List<String> slotNames = [
    'trigger',
    'positioner',
    'content',
    'item',
    'radioItem',
    'submenuTrigger',
    'itemLabel',
    'footer',
    'label',
    'shortcut',
    'separator',
    'indicator',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftContextMenuRecipeStyle resolve({
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
    return RaftContextMenuRecipeStyle(
      trigger: s[0],
      positioner: s[1],
      content: s[2],
      item: s[3],
      radioItem: s[4],
      submenuTrigger: s[5],
      itemLabel: s[6],
      footer: s[7],
      label: s[8],
      shortcut: s[9],
      separator: s[10],
      indicator: s[11],
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
    [1308, 1927, 1565],
    [
      959,
      961,
      1349,
      1571,
      1565,
      1481,
      1010,
      1696,
      600,
      1582,
      1807,
      1724,
      1681,
      1685,
    ],
    [
      959,
      1912,
      658,
      1714,
      1310,
      388,
      1820,
      1565,
      1877,
      1469,
      1015,
      1697,
      1646,
      1656,
      1007,
      1798,
      1004,
      1807,
      1261,
      859,
      811,
      831,
      833,
      274,
      276,
      158,
      188,
      824,
    ],
    [
      959,
      1912,
      658,
      1714,
      1310,
      1820,
      1565,
      1877,
      1469,
      1015,
      1697,
      1646,
      1656,
      1007,
      1798,
      1004,
      1807,
      1261,
      859,
      811,
      831,
      833,
      274,
      276,
      158,
      188,
      824,
    ],
    [
      959,
      1912,
      658,
      1714,
      1310,
      388,
      1820,
      1565,
      1877,
      1469,
      1015,
      1697,
      1646,
      1656,
      1007,
      1798,
      1004,
      1807,
      1261,
      859,
      882,
      831,
      833,
      274,
      276,
      158,
      188,
      824,
    ],
    [1473, 960, 1881, 1820],
    [1647, 1658, 1844, 1811, 1768],
    [1646, 1632, 1591, 1007, 1799, 999, 1808],
    [1487, 1187, 1473, 1701, 613, 1580, 1725, 1680, 1005, 1823, 1006, 1808],
    [98, 1511, 1190, 619, 602],
    [1617, 1487, 959, 1727, 1310, 1315, 1740, 1807, 279],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
  ];
}
