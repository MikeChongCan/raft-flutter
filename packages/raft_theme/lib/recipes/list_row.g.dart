// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `listRow`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `variant` axis of `listRow` (default `default`).
enum RaftListRowRecipeVariant {
  default_('default'),
  plain('plain'),
  entry('entry');

  const RaftListRowRecipeVariant(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftListRowRecipe].
class RaftListRowRecipeStyle {
  const RaftListRowRecipeStyle({
    required this.group,
    required this.root,
    required this.icon,
    required this.body,
    required this.line,
    required this.title,
    required this.description,
    required this.meta,
    required this.value,
    required this.chevron,
  });

  /// Slot `group`.
  final RaftSlotStyle group;

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `icon`.
  final RaftSlotStyle icon;

  /// Slot `body`.
  final RaftSlotStyle body;

  /// Slot `line`.
  final RaftSlotStyle line;

  /// Slot `title`.
  final RaftSlotStyle title;

  /// Slot `description`.
  final RaftSlotStyle description;

  /// Slot `meta`.
  final RaftSlotStyle meta;

  /// Slot `value`.
  final RaftSlotStyle value;

  /// Slot `chevron`.
  final RaftSlotStyle chevron;

  Map<String, RaftSlotStyle> get slots => {
    'group': group,
    'root': root,
    'icon': icon,
    'body': body,
    'line': line,
    'title': title,
    'description': description,
    'meta': meta,
    'value': value,
    'chevron': chevron,
  };
}

/// raft-ui recipe `listRow` (`src/components/list-row/list-row.recipe.ts`, index.mjs:1795).
///
/// Used by: ListRow, ListRowBody, ListRowBottom, ListRowChevron, ListRowDescription, ListRowGroup, ListRowIcon, ListRowMeta, ListRowTitle, ListRowTop, ListRowValue.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftListRowRecipe {
  static const String recipeName = 'listRow';
  static const List<String> slotNames = [
    'group',
    'root',
    'icon',
    'body',
    'line',
    'title',
    'description',
    'meta',
    'value',
    'chevron',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('variant', ['default', 'plain', 'entry'], 'default', false),
    RaftRecipeAxis('interactive', ['true', 'false'], 'true', false),
    RaftRecipeAxis('wrap', ['true', 'false'], 'false', false),
  ];

  static RaftListRowRecipeStyle resolve({
    RaftListRowRecipeVariant? variant,
    bool? interactive,
    bool? wrap,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [variant?.css, interactive?.toString(), wrap?.toString()],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftListRowRecipeStyle(
      group: s[0],
      root: s[1],
      icon: s[2],
      body: s[3],
      line: s[4],
      title: s[5],
      description: s[6],
      meta: s[7],
      value: s[8],
      chevron: s[9],
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
    [965, 1481, 967, 1579, 1704, 620, 633, 596, 1816],
    [
      1149,
      1677,
      965,
      1922,
      1481,
      1318,
      1024,
      1657,
      1668,
      1830,
      1015,
      1524,
      1887,
      941,
      1573,
      979,
      980,
      902,
      337,
      335,
      336,
      1780,
      1536,
      1535,
      1534,
      1533,
      928,
      920,
      918,
      919,
      485,
      477,
      475,
      476,
      1470,
      339,
      545,
      513,
      554,
      546,
      536,
      538,
      526,
      524,
      405,
      419,
      1538,
      1537,
      1532,
    ],
    [965, 1735, 1318, 1323, 1782, 181, 177],
    [965, 1481, 966, 967, 1019],
    [965, 1481, 1318, 1022],
    [1481, 966, 1891, 1804, 1016, 1105],
    [1481, 966, 1891, 1807, 1781, 1925, 1834],
    [1735, 1013, 1833, 1014, 1777, 1782],
    [1414, 1735, 1891, 1839, 1782],
    [1481, 966, 1891, 1807, 1781],
    [
      1149,
      1677,
      965,
      1922,
      1481,
      1318,
      1024,
      1657,
      1668,
      1830,
      1015,
      1524,
      1887,
      941,
      1573,
      979,
      980,
      902,
      337,
      335,
      336,
      1780,
      1536,
      1535,
      1534,
      1533,
      928,
      920,
      918,
      919,
      485,
      477,
      475,
      476,
      1470,
      339,
      545,
      513,
      554,
      546,
      536,
      538,
      526,
      524,
      405,
      419,
    ],
    [
      1149,
      1677,
      965,
      1922,
      1481,
      1318,
      1024,
      1657,
      1668,
      1830,
      1015,
      1524,
      1887,
      941,
      1573,
      979,
      980,
      902,
      337,
      335,
      336,
      1780,
      1536,
      1535,
      1534,
      1533,
      928,
      920,
      918,
      919,
      485,
      477,
      475,
      476,
      338,
      545,
      513,
      554,
      546,
      536,
      538,
      526,
      524,
      405,
      419,
      1538,
      1537,
      1532,
    ],
    [
      1149,
      1677,
      965,
      1922,
      1481,
      1318,
      1024,
      1657,
      1668,
      1830,
      1015,
      1524,
      1887,
      941,
      1573,
      979,
      980,
      902,
      337,
      335,
      336,
      1780,
      1536,
      1535,
      1534,
      1533,
      928,
      920,
      918,
      919,
      485,
      477,
      475,
      476,
      338,
      545,
      513,
      554,
      546,
      536,
      538,
      526,
      524,
      405,
      419,
    ],
    [
      1149,
      1677,
      965,
      1922,
      1481,
      1318,
      1024,
      1657,
      1668,
      1830,
      1015,
      1524,
      1887,
      941,
      1573,
      979,
      980,
      902,
      337,
      335,
      336,
      1780,
      1536,
      1535,
      1534,
      1533,
      928,
      920,
      918,
      919,
      485,
      477,
      475,
      476,
      1538,
      1537,
      1532,
    ],
    [
      1149,
      1677,
      965,
      1922,
      1481,
      1318,
      1024,
      1657,
      1668,
      1830,
      1015,
      1524,
      1887,
      941,
      1573,
      979,
      980,
      902,
      337,
      335,
      336,
      1780,
      1536,
      1535,
      1534,
      1533,
      928,
      920,
      918,
      919,
      485,
      477,
      475,
      476,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 2],
    [0, 1, 2, 3, 4, 5, 9, 7, 8, 2],
    [0, 10, 2, 3, 4, 5, 6, 7, 8, 2],
    [0, 10, 2, 3, 4, 5, 9, 7, 8, 2],
    [0, 11, 2, 3, 4, 5, 6, 7, 8, 2],
    [0, 11, 2, 3, 4, 5, 9, 7, 8, 2],
    [0, 12, 2, 3, 4, 5, 6, 7, 8, 2],
    [0, 12, 2, 3, 4, 5, 9, 7, 8, 2],
    [0, 13, 2, 3, 4, 5, 6, 7, 8, 2],
    [0, 13, 2, 3, 4, 5, 9, 7, 8, 2],
    [0, 14, 2, 3, 4, 5, 6, 7, 8, 2],
    [0, 14, 2, 3, 4, 5, 9, 7, 8, 2],
  ];
}
