// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `lightbox`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftLightboxRecipe].
class RaftLightboxRecipeStyle {
  const RaftLightboxRecipeStyle({
    required this.backdrop,
    required this.content,
    required this.header,
    required this.toolbar,
    required this.headerMeta,
    required this.headerLabel,
    required this.title,
    required this.actions,
    required this.stage,
    required this.media,
    required this.navigationButton,
    required this.infoDock,
    required this.infoBar,
    required this.infoTitle,
    required this.infoActions,
    required this.thumbnailStrip,
    required this.thumbnail,
    required this.thumbnailOverlay,
    required this.close,
  });

  /// Slot `backdrop`.
  final RaftSlotStyle backdrop;

  /// Slot `content`.
  final RaftSlotStyle content;

  /// Slot `header`.
  final RaftSlotStyle header;

  /// Slot `toolbar`.
  final RaftSlotStyle toolbar;

  /// Slot `headerMeta`.
  final RaftSlotStyle headerMeta;

  /// Slot `headerLabel`.
  final RaftSlotStyle headerLabel;

  /// Slot `title`.
  final RaftSlotStyle title;

  /// Slot `actions`.
  final RaftSlotStyle actions;

  /// Slot `stage`.
  final RaftSlotStyle stage;

  /// Slot `media`.
  final RaftSlotStyle media;

  /// Slot `navigationButton`.
  final RaftSlotStyle navigationButton;

  /// Slot `infoDock`.
  final RaftSlotStyle infoDock;

  /// Slot `infoBar`.
  final RaftSlotStyle infoBar;

  /// Slot `infoTitle`.
  final RaftSlotStyle infoTitle;

  /// Slot `infoActions`.
  final RaftSlotStyle infoActions;

  /// Slot `thumbnailStrip`.
  final RaftSlotStyle thumbnailStrip;

  /// Slot `thumbnail`.
  final RaftSlotStyle thumbnail;

  /// Slot `thumbnailOverlay`.
  final RaftSlotStyle thumbnailOverlay;

  /// Slot `close`.
  final RaftSlotStyle close;

  Map<String, RaftSlotStyle> get slots => {
    'backdrop': backdrop,
    'content': content,
    'header': header,
    'toolbar': toolbar,
    'headerMeta': headerMeta,
    'headerLabel': headerLabel,
    'title': title,
    'actions': actions,
    'stage': stage,
    'media': media,
    'navigationButton': navigationButton,
    'infoDock': infoDock,
    'infoBar': infoBar,
    'infoTitle': infoTitle,
    'infoActions': infoActions,
    'thumbnailStrip': thumbnailStrip,
    'thumbnail': thumbnail,
    'thumbnailOverlay': thumbnailOverlay,
    'close': close,
  };
}

/// raft-ui recipe `lightbox` (`src/components/lightbox/lightbox.tsx`, index.mjs:4271).
///
/// Used by: LightboxActions, LightboxClose, LightboxContent, LightboxHeader, LightboxHeaderLabel, LightboxHeaderMeta, LightboxInfoActions, LightboxInfoBar, LightboxInfoDock, LightboxInfoTitle, LightboxMedia, LightboxNavigationButton, LightboxStage, LightboxThumbnail, LightboxThumbnailStrip, LightboxTitle, LightboxToolbar.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftLightboxRecipe {
  static const String recipeName = 'lightbox';
  static const List<String> slotNames = [
    'backdrop',
    'content',
    'header',
    'toolbar',
    'headerMeta',
    'headerLabel',
    'title',
    'actions',
    'stage',
    'media',
    'navigationButton',
    'infoDock',
    'infoBar',
    'infoTitle',
    'infoActions',
    'thumbnailStrip',
    'thumbnail',
    'thumbnailOverlay',
    'close',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftLightboxRecipeStyle resolve({
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
    return RaftLightboxRecipeStyle(
      backdrop: s[0],
      content: s[1],
      header: s[2],
      toolbar: s[3],
      headerMeta: s[4],
      headerLabel: s[5],
      title: s[6],
      actions: s[7],
      stage: s[8],
      media: s[9],
      navigationButton: s[10],
      infoDock: s[11],
      infoBar: s[12],
      infoTitle: s[13],
      infoActions: s[14],
      thumbnailStrip: s[15],
      thumbnail: s[16],
      thumbnailOverlay: s[17],
      close: s[18],
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
    [958, 1298, 1929, 592, 819],
    [1617, 958, 1298, 1930, 959, 961, 819, 87, 86, 90, 89, 88],
    [1616, 1727, 959, 1310, 1016, 1594, 1638, 1614, 1628, 613, 1725],
    [
      1616,
      1727,
      959,
      1310,
      1016,
      1185,
      1639,
      1613,
      1627,
      58,
      56,
      59,
      57,
      621,
      632,
      593,
      1725,
    ],
    [959, 1473, 960, 1310, 1013],
    [
      1296,
      1727,
      1310,
      1644,
      1182,
      1695,
      579,
      1653,
      1007,
      1799,
      1008,
      1517,
      1857,
      1811,
    ],
    [1473, 960, 1881, 1653, 1007, 1817, 999, 1807],
    [959, 1727, 1310, 1012],
    [1617, 1669, 959, 1457, 960, 1310, 1315, 1571],
    [1616, 1355, 1408, 619, 613, 1725],
    [
      1616,
      420,
      1923,
      1296,
      1310,
      1315,
      1866,
      938,
      1563,
      1566,
      1568,
      674,
      274,
      276,
      1734,
      1697,
      620,
      633,
      594,
      1807,
      1725,
      1265,
      1274,
      427,
      982,
      988,
      282,
    ],
    [1617, 420, 1678, 644, 1343, 1923, 959, 1315],
    [
      1616,
      959,
      1310,
      1906,
      1409,
      1476,
      1014,
      1696,
      1654,
      1620,
      1606,
      600,
      1807,
      1724,
      1681,
      1685,
    ],
    [1473, 960, 1881, 1007, 1806, 1008, 1807],
    [1617, 420, 1673, 645, 1340, 1923, 959, 1310, 1315, 1013],
    [
      1140,
      1616,
      1669,
      1735,
      1571,
      1868,
      938,
      243,
      244,
      242,
      1697,
      620,
      1547,
      1725,
      636,
      1268,
      794,
    ],
    [1617, 420, 1298, 616, 1877, 938, 572, 1119, 1102],
    [1616],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 7, 14, 15, 16, 17],
  ];
}
