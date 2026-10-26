// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `messageAttachment`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftMessageAttachmentRecipe].
class RaftMessageAttachmentRecipeStyle {
  const RaftMessageAttachmentRecipeStyle({
    required this.group,
    required this.card,
    required this.title,
    required this.meta,
    required this.metaStart,
    required this.metaEnd,
    required this.summary,
    required this.commentSummary,
    required this.diffSummary,
    required this.diffAddition,
    required this.diffDeletion,
    required this.action,
  });

  /// Slot `group`.
  final RaftSlotStyle group;

  /// Slot `card`.
  final RaftSlotStyle card;

  /// Slot `title`.
  final RaftSlotStyle title;

  /// Slot `meta`.
  final RaftSlotStyle meta;

  /// Slot `metaStart`.
  final RaftSlotStyle metaStart;

  /// Slot `metaEnd`.
  final RaftSlotStyle metaEnd;

  /// Slot `summary`.
  final RaftSlotStyle summary;

  /// Slot `commentSummary`.
  final RaftSlotStyle commentSummary;

  /// Slot `diffSummary`.
  final RaftSlotStyle diffSummary;

  /// Slot `diffAddition`.
  final RaftSlotStyle diffAddition;

  /// Slot `diffDeletion`.
  final RaftSlotStyle diffDeletion;

  /// Slot `action`.
  final RaftSlotStyle action;

  Map<String, RaftSlotStyle> get slots => {
    'group': group,
    'card': card,
    'title': title,
    'meta': meta,
    'metaStart': metaStart,
    'metaEnd': metaEnd,
    'summary': summary,
    'commentSummary': commentSummary,
    'diffSummary': diffSummary,
    'diffAddition': diffAddition,
    'diffDeletion': diffDeletion,
    'action': action,
  };
}

/// raft-ui recipe `messageAttachment` (`src/components/message-attachment/message-attachment.recipe.ts`, index.mjs:8688).
///
/// Used by: MessageAttachmentAction, MessageAttachmentCard, MessageAttachmentCommentSummary, MessageAttachmentDiffAddition, MessageAttachmentDiffDeletion, MessageAttachmentDiffSummary, MessageAttachmentGroup, MessageAttachmentMeta, MessageAttachmentMetaEnd, MessageAttachmentMetaStart, MessageAttachmentSummary, MessageAttachmentTitle.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftMessageAttachmentRecipe {
  static const String recipeName = 'messageAttachment';
  static const List<String> slotNames = [
    'group',
    'card',
    'title',
    'meta',
    'metaStart',
    'metaEnd',
    'summary',
    'commentSummary',
    'diffSummary',
    'diffAddition',
    'diffDeletion',
    'action',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftMessageAttachmentRecipeStyle resolve({
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
    return RaftMessageAttachmentRecipeStyle(
      group: s[0],
      card: s[1],
      title: s[2],
      meta: s[3],
      metaStart: s[4],
      metaEnd: s[5],
      summary: s[6],
      commentSummary: s[7],
      diffSummary: s[8],
      diffAddition: s[9],
      diffDeletion: s[10],
      action: s[11],
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
    [959, 1402, 965, 1312, 1014],
    [
      1125,
      1669,
      1296,
      1170,
      1893,
      1479,
      1394,
      1727,
      961,
      1571,
      1820,
      1696,
      618,
      631,
      594,
      1658,
      1622,
      1606,
      1807,
      1565,
      1274,
      427,
      988,
      227,
    ],
    [616, 1912, 1414, 1727, 1881, 1621, 1007, 1798, 1008, 1807],
    [1506, 959, 1912, 1473, 1414, 1310, 1314, 1014, 1005, 1823, 1808],
    [1473, 960, 1881],
    [1487, 1296, 1727, 1310, 1012, 286, 276],
    [1498, 1296, 1727, 1310, 1916, 276, 1621, 1005, 1823, 1808, 278],
    [1019],
    [1013],
    [1831],
    [1804],
    [
      1669,
      959,
      1310,
      1315,
      511,
      508,
      527,
      276,
      99,
      1743,
      1697,
      1807,
      1565,
      1263,
      425,
      988,
      279,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
  ];
}
