// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `toastStyles`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `placement` axis of `toastStyles` (default `bottom-center`).
enum RaftToastRecipePlacement {
  bottomCenter('bottom-center'),
  bottomRight('bottom-right'),
  topCenter('top-center'),
  topRight('top-right'),
  none('none');

  const RaftToastRecipePlacement(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// `strategy` axis of `toastStyles` (default `fixed`).
enum RaftToastRecipeStrategy {
  fixed('fixed'),
  absolute('absolute');

  const RaftToastRecipeStrategy(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// `layout` axis of `toastStyles` (default `stacked`).
enum RaftToastRecipeLayout {
  stacked('stacked'),
  inline('inline');

  const RaftToastRecipeLayout(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftToastRecipe].
class RaftToastRecipeStyle {
  const RaftToastRecipeStyle({
    required this.viewport,
    required this.positioner,
    required this.root,
    required this.content,
    required this.icon,
    required this.body,
    required this.title,
    required this.description,
    required this.actions,
    required this.progress,
    required this.close,
    required this.arrow,
  });

  /// Slot `viewport`.
  final RaftSlotStyle viewport;

  /// Slot `positioner`.
  final RaftSlotStyle positioner;

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `content`.
  final RaftSlotStyle content;

  /// Slot `icon`.
  final RaftSlotStyle icon;

  /// Slot `body`.
  final RaftSlotStyle body;

  /// Slot `title`.
  final RaftSlotStyle title;

  /// Slot `description`.
  final RaftSlotStyle description;

  /// Slot `actions`.
  final RaftSlotStyle actions;

  /// Slot `progress`.
  final RaftSlotStyle progress;

  /// Slot `close`.
  final RaftSlotStyle close;

  /// Slot `arrow`.
  final RaftSlotStyle arrow;

  Map<String, RaftSlotStyle> get slots => {
    'viewport': viewport,
    'positioner': positioner,
    'root': root,
    'content': content,
    'icon': icon,
    'body': body,
    'title': title,
    'description': description,
    'actions': actions,
    'progress': progress,
    'close': close,
    'arrow': arrow,
  };
}

/// raft-ui recipe `toastStyles` (`src/components/toast/toast.tsx`, index.mjs:12748).
///
/// Used by: ToastActions, ToastArrow, ToastBody, ToastClose, ToastContent, ToastDescription, ToastIcon, ToastPositioner, ToastProgress, ToastRoot, ToastTitle, ToastViewport.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftToastRecipe {
  static const String recipeName = 'toastStyles';
  static const List<String> slotNames = [
    'viewport',
    'positioner',
    'root',
    'content',
    'icon',
    'body',
    'title',
    'description',
    'actions',
    'progress',
    'close',
    'arrow',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis(
      'placement',
      ['bottom-center', 'bottom-right', 'top-center', 'top-right', 'none'],
      'bottom-center',
      false,
    ),
    RaftRecipeAxis('strategy', ['fixed', 'absolute'], 'fixed', false),
    RaftRecipeAxis('layout', ['stacked', 'inline'], 'stacked', false),
  ];

  static RaftToastRecipeStyle resolve({
    RaftToastRecipePlacement? placement,
    RaftToastRecipeStrategy? strategy,
    RaftToastRecipeLayout? layout,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [placement?.css, strategy?.css, layout?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftToastRecipeStyle(
      viewport: s[0],
      positioner: s[1],
      root: s[2],
      content: s[3],
      icon: s[4],
      body: s[5],
      title: s[6],
      description: s[7],
      actions: s[8],
      progress: s[9],
      close: s[10],
      arrow: s[11],
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
    [1617, 1308, 1929, 1908, 1565, 645, 1342, 108, 958],
    [1308, 1931, 1565],
    [
      1153,
      1616,
      1715,
      1561,
      1566,
      1568,
      373,
      372,
      370,
      374,
      378,
      1874,
      940,
      945,
      873,
      903,
      844,
      1493,
      1696,
      599,
      1813,
      1724,
      975,
      976,
      420,
      1305,
      641,
      1508,
      1161,
      1558,
      1931,
      542,
      511,
      535,
      556,
      532,
      527,
      371,
      1860,
      849,
      850,
      907,
      197,
      838,
      837,
      836,
      839,
      237,
      238,
      1285,
      1286,
      1293,
      1291,
      1292,
      1290,
      1289,
      1288,
      1287,
      406,
      405,
      1913,
      1414,
    ],
    [
      1669,
      1031,
      1034,
      1310,
      1571,
      198,
      199,
      119,
      120,
      121,
      122,
      117,
      118,
      1878,
      939,
      945,
      1493,
      1025,
      1030,
      1649,
      1660,
      1007,
      1798,
      375,
      376,
      377,
      852,
      851,
      200,
    ],
    [959, 1741, 1727, 1310, 1315, 276, 279],
    [1473],
    [1348, 1881, 1827, 1006, 1813],
    [1348, 1827, 1814],
    [959, 1310, 1316, 1017],
    [1617, 420, 1184, 1560, 469, 1121, 1116, 1490, 1491, 1306, 643, 1691, 582],
    [
      1296,
      1310,
      1315,
      1561,
      1566,
      1568,
      1864,
      938,
      931,
      928,
      1669,
      1299,
      1552,
      1754,
      1727,
      1916,
      619,
      613,
      1580,
      1725,
      1007,
      1798,
      999,
      1813,
      1882,
      912,
      1884,
      440,
      433,
      439,
      459,
      448,
      421,
      975,
      977,
      279,
    ],
    [1617, 959, 762, 749, 748, 757, 756, 759, 761, 754, 753, 750, 752],
    [
      1153,
      1616,
      1715,
      1561,
      1566,
      1568,
      373,
      372,
      370,
      374,
      378,
      1874,
      940,
      945,
      873,
      903,
      844,
      1493,
      1696,
      599,
      1813,
      1724,
      975,
      976,
      1669,
      1508,
      1913,
      1411,
      1572,
      1557,
      906,
      848,
      46,
    ],
    [1617, 1308, 1929, 1908, 1565, 645, 1342, 108, 420],
    [1617, 1308, 1929, 1908, 1565, 1677, 645, 958],
    [1617, 1308, 1929, 1908, 1565, 1677, 645, 420],
    [1617, 1308, 1929, 1908, 1565, 1851, 1342, 108, 958],
    [1617, 1308, 1929, 1908, 1565, 1851, 1342, 108, 420],
    [1617, 1308, 1929, 1908, 1565, 1851, 1677, 958],
    [1617, 1308, 1929, 1908, 1565, 1851, 1677, 420],
    [1617, 1308, 1929, 1908, 1565, 657, 958],
    [1617, 1308, 1929, 1908, 1565, 657, 420],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [0, 1, 12, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [13, 1, 12, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [14, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [14, 1, 12, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [15, 1, 12, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [16, 1, 12, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [17, 1, 12, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [18, 1, 12, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [19, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [19, 1, 12, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [20, 1, 12, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [21, 1, 12, 3, 4, 5, 6, 7, 8, 9, 10, 11],
  ];
}
