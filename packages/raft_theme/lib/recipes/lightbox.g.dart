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
    [964, 1306, 1939, 594, 822],
    [1625, 964, 1306, 1940, 965, 967, 822, 87, 86, 90, 89, 88],
    [1624, 1735, 965, 1318, 1024, 1602, 1646, 1622, 1636, 615, 1733],
    [
      1624,
      1735,
      965,
      1318,
      1024,
      1193,
      1647,
      1621,
      1635,
      58,
      56,
      59,
      57,
      623,
      634,
      595,
      1733,
    ],
    [965, 1481, 966, 1318, 1021],
    [
      1304,
      1735,
      1318,
      1652,
      1190,
      1703,
      581,
      1661,
      1015,
      1808,
      1016,
      1525,
      1867,
      1821,
    ],
    [1481, 966, 1891, 1661, 1015, 1827, 1007, 1816],
    [965, 1735, 1318, 1020],
    [1625, 1677, 965, 1465, 966, 1318, 1323, 1579],
    [1624, 1363, 1416, 621, 615, 1733],
    [
      1624,
      422,
      1933,
      1304,
      1318,
      1323,
      1876,
      942,
      1571,
      1574,
      1576,
      677,
      275,
      277,
      1742,
      1705,
      622,
      635,
      596,
      1816,
      1733,
      1273,
      1282,
      429,
      989,
      995,
      283,
    ],
    [1625, 422, 1686, 646, 1351, 1933, 965, 1323],
    [
      1624,
      965,
      1318,
      1916,
      1417,
      1484,
      1022,
      1704,
      1662,
      1628,
      1614,
      602,
      1816,
      1732,
      1689,
      1693,
    ],
    [1481, 966, 1891, 1015, 1815, 1016, 1816],
    [1625, 422, 1681, 647, 1348, 1933, 965, 1318, 1323, 1021],
    [
      1148,
      1624,
      1677,
      1743,
      1579,
      1878,
      942,
      244,
      245,
      243,
      1705,
      622,
      1555,
      1733,
      638,
      1276,
      797,
    ],
    [1625, 422, 1306, 618, 1887, 942, 574, 1127, 1110],
    [1624],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 7, 14, 15, 16, 17],
  ];
}
