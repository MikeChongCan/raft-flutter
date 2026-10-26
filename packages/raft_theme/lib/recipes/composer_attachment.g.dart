// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `composerAttachment`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `side` axis of `composerAttachment`.
enum RaftComposerAttachmentRecipeSide {
  prev('prev'),
  next('next');

  const RaftComposerAttachmentRecipeSide(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftComposerAttachmentRecipe].
class RaftComposerAttachmentRecipeStyle {
  const RaftComposerAttachmentRecipeStyle({
    required this.attachments,
    required this.attachmentsScrollArea,
    required this.attachmentsViewport,
    required this.attachmentsNav,
    required this.attachment,
    required this.attachmentFile,
    required this.attachmentImage,
    required this.attachmentBody,
    required this.attachmentTitle,
    required this.attachmentMeta,
    required this.attachmentUploadingOverlay,
    required this.attachmentUploadProgressBar,
    required this.attachmentUploadProgressBarIndicator,
    required this.attachmentFailedOverlay,
    required this.attachmentRemove,
  });

  /// Slot `attachments`.
  final RaftSlotStyle attachments;

  /// Slot `attachmentsScrollArea`.
  final RaftSlotStyle attachmentsScrollArea;

  /// Slot `attachmentsViewport`.
  final RaftSlotStyle attachmentsViewport;

  /// Slot `attachmentsNav`.
  final RaftSlotStyle attachmentsNav;

  /// Slot `attachment`.
  final RaftSlotStyle attachment;

  /// Slot `attachmentFile`.
  final RaftSlotStyle attachmentFile;

  /// Slot `attachmentImage`.
  final RaftSlotStyle attachmentImage;

  /// Slot `attachmentBody`.
  final RaftSlotStyle attachmentBody;

  /// Slot `attachmentTitle`.
  final RaftSlotStyle attachmentTitle;

  /// Slot `attachmentMeta`.
  final RaftSlotStyle attachmentMeta;

  /// Slot `attachmentUploadingOverlay`.
  final RaftSlotStyle attachmentUploadingOverlay;

  /// Slot `attachmentUploadProgressBar`.
  final RaftSlotStyle attachmentUploadProgressBar;

  /// Slot `attachmentUploadProgressBarIndicator`.
  final RaftSlotStyle attachmentUploadProgressBarIndicator;

  /// Slot `attachmentFailedOverlay`.
  final RaftSlotStyle attachmentFailedOverlay;

  /// Slot `attachmentRemove`.
  final RaftSlotStyle attachmentRemove;

  Map<String, RaftSlotStyle> get slots => {
    'attachments': attachments,
    'attachmentsScrollArea': attachmentsScrollArea,
    'attachmentsViewport': attachmentsViewport,
    'attachmentsNav': attachmentsNav,
    'attachment': attachment,
    'attachmentFile': attachmentFile,
    'attachmentImage': attachmentImage,
    'attachmentBody': attachmentBody,
    'attachmentTitle': attachmentTitle,
    'attachmentMeta': attachmentMeta,
    'attachmentUploadingOverlay': attachmentUploadingOverlay,
    'attachmentUploadProgressBar': attachmentUploadProgressBar,
    'attachmentUploadProgressBarIndicator':
        attachmentUploadProgressBarIndicator,
    'attachmentFailedOverlay': attachmentFailedOverlay,
    'attachmentRemove': attachmentRemove,
  };
}

/// raft-ui recipe `composerAttachment` (`src/components/composer/composer-attachment.recipe.ts`, index.mjs:11230).
///
/// Used by: ComposerAttachment, ComposerAttachmentBody, ComposerAttachmentFailedOverlay, ComposerAttachmentFile, ComposerAttachmentImage, ComposerAttachmentMeta, ComposerAttachmentRemove, ComposerAttachmentTitle, ComposerAttachmentUploadProgressBar, ComposerAttachmentUploadingOverlay, ComposerAttachments, ComposerAttachmentsScrollArea.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftComposerAttachmentRecipe {
  static const String recipeName = 'composerAttachment';
  static const List<String> slotNames = [
    'attachments',
    'attachmentsScrollArea',
    'attachmentsViewport',
    'attachmentsNav',
    'attachment',
    'attachmentFile',
    'attachmentImage',
    'attachmentBody',
    'attachmentTitle',
    'attachmentMeta',
    'attachmentUploadingOverlay',
    'attachmentUploadProgressBar',
    'attachmentUploadProgressBarIndicator',
    'attachmentFailedOverlay',
    'attachmentRemove',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('side', ['prev', 'next'], null, true),
  ];

  static RaftComposerAttachmentRecipeStyle resolve({
    RaftComposerAttachmentRecipeSide? side,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [side?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftComposerAttachmentRecipeStyle(
      attachments: s[0],
      attachmentsScrollArea: s[1],
      attachmentsViewport: s[2],
      attachmentsNav: s[3],
      attachment: s[4],
      attachmentFile: s[5],
      attachmentImage: s[6],
      attachmentBody: s[7],
      attachmentTitle: s[8],
      attachmentMeta: s[9],
      attachmentUploadingOverlay: s[10],
      attachmentUploadProgressBar: s[11],
      attachmentUploadProgressBarIndicator: s[12],
      attachmentFailedOverlay: s[13],
      attachmentRemove: s[14],
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
    [959, 965, 1014, 1238, 1237, 1211, 1249, 1229, 1631, 1601, 1212, 1230],
    [1669, 1912, 1473],
    [959, 963, 1014, 1573, 1576, 1579, 1656, 1713, 114, 11, 1601],
    [420, 1849, 1925, 110, 1744, 1725, 265],
    [1131, 1669, 298],
    [
      1669,
      959,
      1168,
      1893,
      279,
      276,
      1310,
      1015,
      1697,
      618,
      631,
      579,
      1645,
      1807,
      293,
    ],
    [1669, 616, 1736, 1727, 1571, 26, 25, 22, 21, 24, 23, 1697, 618, 631, 579],
    [1473, 960, 959, 961, 1315, 1011],
    [616, 1881, 1007, 1806, 1008, 1807],
    [616, 1912, 1881, 1820, 1005, 1823, 1808],
    [
      420,
      1298,
      1923,
      959,
      961,
      1310,
      1315,
      1643,
      1801,
      1697,
      595,
      1005,
      1823,
      999,
      1807,
    ],
    [420, 1924, 1163, 1571, 1674, 643, 1341, 1910, 1691, 594],
    [616, 1189, 1693, 590],
    [
      420,
      1298,
      1923,
      959,
      961,
      1310,
      1315,
      1643,
      410,
      1801,
      1697,
      623,
      596,
      1007,
      1799,
      1008,
      1804,
    ],
    [
      420,
      1924,
      959,
      1310,
      1315,
      1878,
      1117,
      380,
      276,
      106,
      103,
      1741,
      1703,
      620,
      633,
      594,
      1807,
      1547,
      1274,
      427,
      1565,
      988,
      924,
      921,
      918,
      934,
      440,
      432,
      448,
      381,
      277,
    ],
    [420, 1849, 1925, 110, 1744, 1725, 265, 1341],
    [420, 1849, 1925, 110, 1744, 1725, 265, 1674],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
    [0, 1, 2, 15, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
    [0, 1, 2, 16, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
  ];
}
