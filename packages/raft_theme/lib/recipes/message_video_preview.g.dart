// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `messageVideoPreview`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftMessageVideoPreviewRecipe].
class RaftMessageVideoPreviewRecipeStyle {
  const RaftMessageVideoPreviewRecipeStyle({
    required this.root,
    required this.media,
    required this.fallback,
    required this.failureContent,
    required this.failureIcon,
    required this.failureTitle,
    required this.failureAction,
    required this.action,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `media`.
  final RaftSlotStyle media;

  /// Slot `fallback`.
  final RaftSlotStyle fallback;

  /// Slot `failureContent`.
  final RaftSlotStyle failureContent;

  /// Slot `failureIcon`.
  final RaftSlotStyle failureIcon;

  /// Slot `failureTitle`.
  final RaftSlotStyle failureTitle;

  /// Slot `failureAction`.
  final RaftSlotStyle failureAction;

  /// Slot `action`.
  final RaftSlotStyle action;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'media': media,
    'fallback': fallback,
    'failureContent': failureContent,
    'failureIcon': failureIcon,
    'failureTitle': failureTitle,
    'failureAction': failureAction,
    'action': action,
  };
}

/// raft-ui recipe `messageVideoPreview` (`src/components/message-attachment/message-video-preview.recipe.ts`, index.mjs:9065).
///
/// Used by: MessageVideoPreview, MessageVideoPreviewAction, MessageVideoPreviewFailureAction, MessageVideoPreviewFailureContent, MessageVideoPreviewFailureIcon, MessageVideoPreviewFailureTitle, MessageVideoPreviewFallback, MessageVideoPreviewMedia.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftMessageVideoPreviewRecipe {
  static const String recipeName = 'messageVideoPreview';
  static const List<String> slotNames = [
    'root',
    'media',
    'fallback',
    'failureContent',
    'failureIcon',
    'failureTitle',
    'failureAction',
    'action',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftMessageVideoPreviewRecipeStyle resolve({
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
    return RaftMessageVideoPreviewRecipeStyle(
      root: s[0],
      media: s[1],
      fallback: s[2],
      failureContent: s[3],
      failureIcon: s[4],
      failureTitle: s[5],
      failureAction: s[6],
      action: s[7],
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
    [1154, 1669, 501, 1912, 1571, 571, 1820, 1413, 1696, 618, 631, 575],
    [616, 1755, 571, 1541],
    [959, 1755, 1310, 1315, 571, 1841],
    [959, 1397, 961, 1310, 1649, 1801, 1014, 1007, 1799, 1008],
    [283, 291],
    [],
    [
      1296,
      661,
      1310,
      1012,
      619,
      613,
      1580,
      1842,
      416,
      1278,
      1561,
      1566,
      1568,
      983,
      288,
    ],
    [
      420,
      959,
      1310,
      1315,
      1877,
      938,
      1563,
      1566,
      1568,
      976,
      923,
      276,
      1850,
      1675,
      1744,
      1697,
      620,
      633,
      594,
      1807,
      1265,
      1276,
      1274,
      427,
      1565,
      988,
      921,
      918,
      919,
      934,
      279,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7],
  ];
}
