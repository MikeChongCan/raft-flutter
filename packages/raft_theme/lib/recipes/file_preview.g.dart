// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `filePreview`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `placement` axis of `filePreview` (default `corner`).
enum RaftFilePreviewRecipePlacement {
  corner('corner'),
  inline('inline');

  const RaftFilePreviewRecipePlacement(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftFilePreviewRecipe].
class RaftFilePreviewRecipeStyle {
  const RaftFilePreviewRecipeStyle({
    required this.root,
    required this.document,
    required this.file,
    required this.code,
    required this.fileZip,
    required this.fileZipStack,
    required this.fileZipTeeth,
    required this.fileZipRow,
    required this.fileZipDark,
    required this.fileZipLight,
    required this.fileZipPull,
    required this.codeStack,
    required this.codeRow,
    required this.codeRowIndent,
    required this.codeTextRow,
    required this.codeGlyph,
    required this.codeTagLine,
    required this.codeAttributeLine,
    required this.codeTextLine,
    required this.codeSelfClosingLine,
    required this.badge,
    required this.media,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `document`.
  final RaftSlotStyle document;

  /// Slot `file`.
  final RaftSlotStyle file;

  /// Slot `code`.
  final RaftSlotStyle code;

  /// Slot `fileZip`.
  final RaftSlotStyle fileZip;

  /// Slot `fileZipStack`.
  final RaftSlotStyle fileZipStack;

  /// Slot `fileZipTeeth`.
  final RaftSlotStyle fileZipTeeth;

  /// Slot `fileZipRow`.
  final RaftSlotStyle fileZipRow;

  /// Slot `fileZipDark`.
  final RaftSlotStyle fileZipDark;

  /// Slot `fileZipLight`.
  final RaftSlotStyle fileZipLight;

  /// Slot `fileZipPull`.
  final RaftSlotStyle fileZipPull;

  /// Slot `codeStack`.
  final RaftSlotStyle codeStack;

  /// Slot `codeRow`.
  final RaftSlotStyle codeRow;

  /// Slot `codeRowIndent`.
  final RaftSlotStyle codeRowIndent;

  /// Slot `codeTextRow`.
  final RaftSlotStyle codeTextRow;

  /// Slot `codeGlyph`.
  final RaftSlotStyle codeGlyph;

  /// Slot `codeTagLine`.
  final RaftSlotStyle codeTagLine;

  /// Slot `codeAttributeLine`.
  final RaftSlotStyle codeAttributeLine;

  /// Slot `codeTextLine`.
  final RaftSlotStyle codeTextLine;

  /// Slot `codeSelfClosingLine`.
  final RaftSlotStyle codeSelfClosingLine;

  /// Slot `badge`.
  final RaftSlotStyle badge;

  /// Slot `media`.
  final RaftSlotStyle media;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'document': document,
    'file': file,
    'code': code,
    'fileZip': fileZip,
    'fileZipStack': fileZipStack,
    'fileZipTeeth': fileZipTeeth,
    'fileZipRow': fileZipRow,
    'fileZipDark': fileZipDark,
    'fileZipLight': fileZipLight,
    'fileZipPull': fileZipPull,
    'codeStack': codeStack,
    'codeRow': codeRow,
    'codeRowIndent': codeRowIndent,
    'codeTextRow': codeTextRow,
    'codeGlyph': codeGlyph,
    'codeTagLine': codeTagLine,
    'codeAttributeLine': codeAttributeLine,
    'codeTextLine': codeTextLine,
    'codeSelfClosingLine': codeSelfClosingLine,
    'badge': badge,
    'media': media,
  };
}

/// raft-ui recipe `filePreview` (`src/components/file-preview/file-preview.recipe.ts`, index.mjs:10780).
///
/// Used by: FilePreview, FilePreviewBadge, FilePreviewCode, FilePreviewDocument, FilePreviewFile, FilePreviewMedia.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftFilePreviewRecipe {
  static const String recipeName = 'filePreview';
  static const List<String> slotNames = [
    'root',
    'document',
    'file',
    'code',
    'fileZip',
    'fileZipStack',
    'fileZipTeeth',
    'fileZipRow',
    'fileZipDark',
    'fileZipLight',
    'fileZipPull',
    'codeStack',
    'codeRow',
    'codeRowIndent',
    'codeTextRow',
    'codeGlyph',
    'codeTagLine',
    'codeAttributeLine',
    'codeTextLine',
    'codeSelfClosingLine',
    'badge',
    'media',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('placement', ['corner', 'inline'], 'corner', false),
  ];

  static RaftFilePreviewRecipeStyle resolve({
    RaftFilePreviewRecipePlacement? placement,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [placement?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftFilePreviewRecipeStyle(
      root: s[0],
      document: s[1],
      file: s[2],
      code: s[3],
      fileZip: s[4],
      fileZipStack: s[5],
      fileZipTeeth: s[6],
      fileZipRow: s[7],
      fileZipDark: s[8],
      fileZipLight: s[9],
      fileZipPull: s[10],
      codeStack: s[11],
      codeRow: s[12],
      codeRowIndent: s[13],
      codeTextRow: s[14],
      codeGlyph: s[15],
      codeTagLine: s[16],
      codeAttributeLine: s[17],
      codeTextLine: s[18],
      codeSelfClosingLine: s[19],
      badge: s[20],
      media: s[21],
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
    [1669, 959, 1164, 1886, 1727, 1310, 1315],
    [1669, 1164, 1898, 1761, 1700, 1705, 1582, 1681, 594, 1725, 1684],
    [1669, 959, 1164, 1898, 1310, 1315, 1700, 1705, 1681, 594, 1725, 1684],
    [959, 1177, 1310, 1315],
    [1669, 109, 959, 961, 1310],
    [1765],
    [959, 1571, 1699],
    [1730, 587],
    [1730, 584],
    [1498, 1163, 1890, 1702, 618, 627, 583],
    [109, 1765],
    [959, 1310, 1011, 1337],
    [959, 1310, 1011, 1604, 1337],
    [616, 1607],
    [1005, 1789, 1337, 1815],
    [1162, 1892, 1699, 587],
    [1162, 1890, 1699, 585],
    [1162, 1896, 1699, 583],
    [1162, 1889, 1699, 587],
    [
      1911,
      1916,
      1703,
      579,
      1643,
      1654,
      1681,
      1684,
      1005,
      1781,
      1337,
      999,
      1811,
      420,
      103,
      642,
      1923,
    ],
    [1669, 1164, 1898, 1571, 1700, 1681, 579, 1725, 1684],
    [
      1916,
      1703,
      579,
      1681,
      1684,
      1005,
      1781,
      1337,
      999,
      1811,
      1296,
      1172,
      1897,
      1727,
      1310,
      1315,
      1641,
      1653,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [
      0,
      1,
      2,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      19,
      20,
    ],
    [
      0,
      1,
      2,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      21,
      20,
    ],
  ];
}
