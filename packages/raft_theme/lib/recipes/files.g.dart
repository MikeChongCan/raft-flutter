// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `files`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftFilesRecipe].
class RaftFilesRecipeStyle {
  const RaftFilesRecipeStyle({
    required this.panel,
    required this.viewport,
    required this.list,
    required this.row,
    required this.rowOpen,
    required this.thumbnail,
    required this.image,
    required this.content,
    required this.name_,
    required this.meta,
    required this.metaItem,
    required this.actions,
  });

  /// Slot `panel`.
  final RaftSlotStyle panel;

  /// Slot `viewport`.
  final RaftSlotStyle viewport;

  /// Slot `list`.
  final RaftSlotStyle list;

  /// Slot `row`.
  final RaftSlotStyle row;

  /// Slot `rowOpen`.
  final RaftSlotStyle rowOpen;

  /// Slot `thumbnail`.
  final RaftSlotStyle thumbnail;

  /// Slot `image`.
  final RaftSlotStyle image;

  /// Slot `content`.
  final RaftSlotStyle content;

  /// Slot `name`.
  final RaftSlotStyle name_;

  /// Slot `meta`.
  final RaftSlotStyle meta;

  /// Slot `metaItem`.
  final RaftSlotStyle metaItem;

  /// Slot `actions`.
  final RaftSlotStyle actions;

  Map<String, RaftSlotStyle> get slots => {
    'panel': panel,
    'viewport': viewport,
    'list': list,
    'row': row,
    'rowOpen': rowOpen,
    'thumbnail': thumbnail,
    'image': image,
    'content': content,
    'name': name_,
    'meta': meta,
    'metaItem': metaItem,
    'actions': actions,
  };
}

/// raft-ui recipe `files` (`src/components/files/files.recipe.ts`, index.mjs:11022).
///
/// Used by: FileActions, FileContent, FileImage, FileMeta, FileMetaItem, FileName, FileRow, FileRowOpen, FileThumbnail, FilesList, FilesPanel, FilesViewport.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftFilesRecipe {
  static const String recipeName = 'files';
  static const List<String> slotNames = [
    'panel',
    'viewport',
    'list',
    'row',
    'rowOpen',
    'thumbnail',
    'image',
    'content',
    'name',
    'meta',
    'metaItem',
    'actions',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftFilesRecipeStyle resolve({
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
    return RaftFilesRecipeStyle(
      panel: s[0],
      viewport: s[1],
      list: s[2],
      row: s[3],
      rowOpen: s[4],
      thumbnail: s[5],
      image: s[6],
      content: s[7],
      name_: s[8],
      meta: s[9],
      metaItem: s[10],
      actions: s[11],
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
    [959, 1457, 960, 961, 593, 1807],
    [1457, 960, 1575],
    [959, 961, 1014, 1650, 1660, 1382],
    [
      1136,
      959,
      1912,
      1473,
      1016,
      1647,
      1877,
      1310,
      1696,
      618,
      631,
      594,
      1659,
      1622,
      1606,
      1725,
      1216,
      1214,
      1215,
    ],
    [959, 1473, 960, 1016, 1820, 975, 981, 1310, 1565, 979],
    [
      959,
      1727,
      1310,
      1315,
      1571,
      280,
      276,
      1241,
      1240,
      1239,
      1745,
      1695,
      619,
      579,
      1811,
      1213,
    ],
    [616, 1755, 688, 689, 594],
    [959, 1473, 960, 961, 1315, 1011],
    [616, 1881, 1007, 1798, 1008, 1807],
    [959, 1473, 965, 1310, 1029, 1497, 1022, 1005, 1823, 1808],
    [1296, 1310, 1012, 277, 276],
    [959, 1727, 1717, 1310, 1013],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
  ];
}
