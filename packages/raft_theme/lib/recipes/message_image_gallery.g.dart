// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `messageImageGallery`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `count` axis of `messageImageGallery`.
enum RaftMessageImageGalleryRecipeCount {
  v1('1'),
  v2('2'),
  v3('3');

  const RaftMessageImageGalleryRecipeCount(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// `fit` axis of `messageImageGallery`.
enum RaftMessageImageGalleryRecipeFit {
  cover('cover'),
  contain('contain');

  const RaftMessageImageGalleryRecipeFit(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftMessageImageGalleryRecipe].
class RaftMessageImageGalleryRecipeStyle {
  const RaftMessageImageGalleryRecipeStyle({
    required this.root,
    required this.row,
    required this.item,
    required this.media,
    required this.overlay,
    required this.preview,
    required this.action,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `row`.
  final RaftSlotStyle row;

  /// Slot `item`.
  final RaftSlotStyle item;

  /// Slot `media`.
  final RaftSlotStyle media;

  /// Slot `overlay`.
  final RaftSlotStyle overlay;

  /// Slot `preview`.
  final RaftSlotStyle preview;

  /// Slot `action`.
  final RaftSlotStyle action;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'row': row,
    'item': item,
    'media': media,
    'overlay': overlay,
    'preview': preview,
    'action': action,
  };
}

/// raft-ui recipe `messageImageGallery` (`src/components/message-attachment/message-image-gallery.recipe.ts`, index.mjs:8847).
///
/// Used by: MessageImageGallery, MessageImageGalleryAction, MessageImageGalleryItem, MessageImageGalleryMedia, MessageImageGalleryOverlay, MessageImageGalleryPreview, MessageImageGalleryRow.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftMessageImageGalleryRecipe {
  static const String recipeName = 'messageImageGallery';
  static const List<String> slotNames = [
    'root',
    'row',
    'item',
    'media',
    'overlay',
    'preview',
    'action',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('count', ['1', '2', '3'], null, true),
    RaftRecipeAxis('single', ['true', 'false'], 'false', false),
    RaftRecipeAxis('laidOut', ['true', 'false'], null, true),
    RaftRecipeAxis('fit', ['cover', 'contain'], null, true),
  ];

  static RaftMessageImageGalleryRecipeStyle resolve({
    RaftMessageImageGalleryRecipeCount? count,
    bool? single,
    bool? laidOut,
    RaftMessageImageGalleryRecipeFit? fit,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [count?.css, single?.toString(), laidOut?.toString(), fit?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftMessageImageGalleryRecipeStyle(
      root: s[0],
      row: s[1],
      item: s[2],
      media: s[3],
      overlay: s[4],
      preview: s[5],
      action: s[6],
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
    [1413, 1760, 1446],
    [1031, 1012],
    [1137, 1669, 1571, 1820, 618, 631, 579, 1244, 1295, 1911, 1398, 1318, 1696],
    [616, 1755],
    [420, 1298, 959, 1310, 1315],
    [420, 1298, 1565, 972, 973],
    [
      420,
      1923,
      1256,
      1310,
      1315,
      995,
      1118,
      1674,
      643,
      1744,
      1697,
      620,
      633,
      594,
      1807,
      1274,
      427,
      1565,
      988,
      279,
    ],
    [
      1137,
      1669,
      1571,
      1820,
      618,
      631,
      579,
      1244,
      1295,
      1911,
      1398,
      1318,
      1696,
      242,
    ],
    [
      1137,
      1669,
      1571,
      1820,
      618,
      631,
      579,
      1244,
      1295,
      1911,
      1398,
      1318,
      1696,
      241,
      239,
    ],
    [
      1137,
      1669,
      1571,
      1820,
      618,
      631,
      579,
      1244,
      1295,
      1911,
      1398,
      1318,
      1696,
      240,
      244,
    ],
    [
      1137,
      1669,
      1571,
      1820,
      618,
      631,
      579,
      1244,
      1295,
      1911,
      1398,
      1318,
      1696,
      240,
      244,
      242,
    ],
    [
      1137,
      1669,
      1571,
      1820,
      618,
      631,
      579,
      1244,
      1295,
      1911,
      1398,
      1318,
      1696,
      240,
      244,
      241,
      239,
    ],
    [1137, 1669, 1571, 1820, 1697, 618, 631, 579, 1244],
    [1137, 1669, 1571, 1820, 1697, 618, 631, 579, 1244, 242],
    [1137, 1669, 1571, 1820, 1697, 618, 631, 579, 1244, 241, 239],
    [1137, 1669, 1571, 1820, 1697, 618, 631, 579, 1244, 240, 244],
    [1137, 1669, 1571, 1820, 1697, 618, 631, 579, 1244, 240, 244, 242],
    [1137, 1669, 1571, 1820, 1697, 618, 631, 579, 1244, 240, 244, 241, 239],
    [1031, 1012, 1032],
    [1031, 1012, 1033],
    [1031, 1012, 1033, 1436],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6],
    [0, 1, 7, 3, 4, 5, 6],
    [0, 1, 8, 3, 4, 5, 6],
    [0, 1, 9, 3, 4, 5, 6],
    [0, 1, 10, 3, 4, 5, 6],
    [0, 1, 11, 3, 4, 5, 6],
    [0, 1, 2, 3, 4, 5, 6],
    [0, 1, 7, 3, 4, 5, 6],
    [0, 1, 8, 3, 4, 5, 6],
    [0, 1, 12, 3, 4, 5, 6],
    [0, 1, 13, 3, 4, 5, 6],
    [0, 1, 14, 3, 4, 5, 6],
    [0, 1, 15, 3, 4, 5, 6],
    [0, 1, 16, 3, 4, 5, 6],
    [0, 1, 17, 3, 4, 5, 6],
    [0, 1, 12, 3, 4, 5, 6],
    [0, 1, 13, 3, 4, 5, 6],
    [0, 1, 14, 3, 4, 5, 6],
    [0, 18, 2, 3, 4, 5, 6],
    [0, 18, 7, 3, 4, 5, 6],
    [0, 18, 8, 3, 4, 5, 6],
    [0, 18, 9, 3, 4, 5, 6],
    [0, 18, 10, 3, 4, 5, 6],
    [0, 18, 11, 3, 4, 5, 6],
    [0, 18, 2, 3, 4, 5, 6],
    [0, 18, 7, 3, 4, 5, 6],
    [0, 18, 8, 3, 4, 5, 6],
    [0, 18, 12, 3, 4, 5, 6],
    [0, 18, 13, 3, 4, 5, 6],
    [0, 18, 14, 3, 4, 5, 6],
    [0, 18, 15, 3, 4, 5, 6],
    [0, 18, 16, 3, 4, 5, 6],
    [0, 18, 17, 3, 4, 5, 6],
    [0, 18, 12, 3, 4, 5, 6],
    [0, 18, 13, 3, 4, 5, 6],
    [0, 18, 14, 3, 4, 5, 6],
    [0, 19, 2, 3, 4, 5, 6],
    [0, 19, 7, 3, 4, 5, 6],
    [0, 19, 8, 3, 4, 5, 6],
    [0, 19, 9, 3, 4, 5, 6],
    [0, 19, 10, 3, 4, 5, 6],
    [0, 19, 11, 3, 4, 5, 6],
    [0, 19, 2, 3, 4, 5, 6],
    [0, 19, 7, 3, 4, 5, 6],
    [0, 19, 8, 3, 4, 5, 6],
    [0, 19, 12, 3, 4, 5, 6],
    [0, 19, 13, 3, 4, 5, 6],
    [0, 19, 14, 3, 4, 5, 6],
    [0, 19, 15, 3, 4, 5, 6],
    [0, 19, 16, 3, 4, 5, 6],
    [0, 19, 17, 3, 4, 5, 6],
    [0, 19, 12, 3, 4, 5, 6],
    [0, 19, 13, 3, 4, 5, 6],
    [0, 19, 14, 3, 4, 5, 6],
    [0, 20, 2, 3, 4, 5, 6],
    [0, 20, 7, 3, 4, 5, 6],
    [0, 20, 8, 3, 4, 5, 6],
    [0, 20, 9, 3, 4, 5, 6],
    [0, 20, 10, 3, 4, 5, 6],
    [0, 20, 11, 3, 4, 5, 6],
    [0, 20, 2, 3, 4, 5, 6],
    [0, 20, 7, 3, 4, 5, 6],
    [0, 20, 8, 3, 4, 5, 6],
    [0, 20, 12, 3, 4, 5, 6],
    [0, 20, 13, 3, 4, 5, 6],
    [0, 20, 14, 3, 4, 5, 6],
    [0, 20, 15, 3, 4, 5, 6],
    [0, 20, 16, 3, 4, 5, 6],
    [0, 20, 17, 3, 4, 5, 6],
    [0, 20, 12, 3, 4, 5, 6],
    [0, 20, 13, 3, 4, 5, 6],
    [0, 20, 14, 3, 4, 5, 6],
  ];
}
