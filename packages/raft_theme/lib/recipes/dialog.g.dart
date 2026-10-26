// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `dialog`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `size` axis of `dialog` (default `md`).
enum RaftDialogRecipeSize {
  sm('sm'),
  md('md'),
  lg('lg'),
  wide('wide');

  const RaftDialogRecipeSize(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// `layer` axis of `dialog`.
enum RaftDialogRecipeLayer {
  v0('0'),
  v1('1');

  const RaftDialogRecipeLayer(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftDialogRecipe].
class RaftDialogRecipeStyle {
  const RaftDialogRecipeStyle({
    required this.overlay,
    required this.content,
    required this.header,
    required this.body,
    required this.footer,
    required this.title,
    required this.description,
  });

  /// Slot `overlay`.
  final RaftSlotStyle overlay;

  /// Slot `content`.
  final RaftSlotStyle content;

  /// Slot `header`.
  final RaftSlotStyle header;

  /// Slot `body`.
  final RaftSlotStyle body;

  /// Slot `footer`.
  final RaftSlotStyle footer;

  /// Slot `title`.
  final RaftSlotStyle title;

  /// Slot `description`.
  final RaftSlotStyle description;

  Map<String, RaftSlotStyle> get slots => {
    'overlay': overlay,
    'content': content,
    'header': header,
    'body': body,
    'footer': footer,
    'title': title,
    'description': description,
  };
}

/// raft-ui recipe `dialog` (`src/components/dialog/dialog.tsx`, index.mjs:313).
///
/// Used by: DialogBody, DialogContent, DialogDescription, DialogFooter, DialogHeader, DialogOverlay, DialogTitle.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftDialogRecipe {
  static const String recipeName = 'dialog';
  static const List<String> slotNames = [
    'overlay',
    'content',
    'header',
    'body',
    'footer',
    'title',
    'description',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('size', ['sm', 'md', 'lg', 'wide'], 'md', false),
    RaftRecipeAxis('bar', ['false', 'true'], 'false', false),
    RaftRecipeAxis('layer', ['0', '1'], null, true),
  ];

  static RaftDialogRecipeStyle resolve({
    RaftDialogRecipeSize? size,
    bool? bar,
    RaftDialogRecipeLayer? layer,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [size?.css, bar?.toString(), layer?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftDialogRecipeStyle(
      overlay: s[0],
      content: s[1],
      header: s[2],
      body: s[3],
      footer: s[4],
      title: s[5],
      description: s[6],
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
    [958, 1298, 1927, 592],
    [
      958,
      1849,
      1342,
      1927,
      959,
      1904,
      107,
      961,
      1357,
      1565,
      1570,
      1698,
      600,
      1807,
      1724,
      1681,
      1685,
      1418,
    ],
    [1031, 1727, 1037, 1310, 1473, 1014, 1650, 1636],
    [1473, 960, 1575, 1650, 1631, 1596, 956, 1007, 1829, 1811],
    [959, 1727, 1310, 1316, 1014, 1650, 1596, 956, 399],
    [1348, 1473, 1807, 1007, 1817, 999],
    [1348, 1007, 1829, 1811],
    [958, 1298, 592, 1928],
    [
      958,
      1849,
      1342,
      959,
      1904,
      107,
      961,
      1357,
      1565,
      1570,
      1698,
      600,
      1807,
      1724,
      1681,
      1685,
      1418,
      1928,
    ],
    [1037, 1473, 959, 1167, 1727, 1310, 1014, 621, 1650, 1653, 632, 1629, 134],
    [1473, 1007, 1829, 959, 1457, 960, 1571, 1580, 1641, 1629, 1589, 953, 1807],
    [959, 1310, 1316, 1014, 1727, 637, 1650, 1660, 632, 1634, 1594, 955, 398],
    [
      958,
      1849,
      1342,
      1927,
      959,
      1904,
      107,
      961,
      1357,
      1565,
      1570,
      1698,
      600,
      1807,
      1724,
      1681,
      1685,
      1416,
    ],
    [
      958,
      1849,
      1342,
      959,
      1904,
      107,
      961,
      1357,
      1565,
      1570,
      1698,
      600,
      1807,
      1724,
      1681,
      1685,
      1416,
      1928,
    ],
    [
      958,
      1849,
      1342,
      1927,
      959,
      1904,
      107,
      961,
      1357,
      1565,
      1570,
      1698,
      600,
      1807,
      1724,
      1681,
      1685,
      1415,
    ],
    [
      958,
      1849,
      1342,
      959,
      1904,
      107,
      961,
      1357,
      1565,
      1570,
      1698,
      600,
      1807,
      1724,
      1681,
      1685,
      1415,
      1928,
    ],
    [
      958,
      1849,
      1342,
      1927,
      959,
      1904,
      107,
      961,
      1357,
      1565,
      1570,
      1698,
      600,
      1807,
      1724,
      1681,
      1685,
      1395,
      1186,
    ],
    [
      958,
      1849,
      1342,
      959,
      1904,
      107,
      961,
      1357,
      1565,
      1570,
      1698,
      600,
      1807,
      1724,
      1681,
      1685,
      1395,
      1186,
      1928,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6],
    [0, 1, 2, 3, 4, 5, 6],
    [7, 8, 2, 3, 4, 5, 6],
    [0, 1, 9, 10, 11, 5, 6],
    [0, 1, 9, 10, 11, 5, 6],
    [7, 8, 9, 10, 11, 5, 6],
    [0, 12, 2, 3, 4, 5, 6],
    [0, 12, 2, 3, 4, 5, 6],
    [7, 13, 2, 3, 4, 5, 6],
    [0, 12, 9, 10, 11, 5, 6],
    [0, 12, 9, 10, 11, 5, 6],
    [7, 13, 9, 10, 11, 5, 6],
    [0, 14, 2, 3, 4, 5, 6],
    [0, 14, 2, 3, 4, 5, 6],
    [7, 15, 2, 3, 4, 5, 6],
    [0, 14, 9, 10, 11, 5, 6],
    [0, 14, 9, 10, 11, 5, 6],
    [7, 15, 9, 10, 11, 5, 6],
    [0, 16, 2, 3, 4, 5, 6],
    [0, 16, 2, 3, 4, 5, 6],
    [7, 17, 2, 3, 4, 5, 6],
    [0, 16, 9, 10, 11, 5, 6],
    [0, 16, 9, 10, 11, 5, 6],
    [7, 17, 9, 10, 11, 5, 6],
  ];
}
