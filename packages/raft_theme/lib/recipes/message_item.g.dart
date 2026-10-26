// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `messageItem`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftMessageItemRecipe].
class RaftMessageItemRecipeStyle {
  const RaftMessageItemRecipeStyle({
    required this.root,
    required this.gutter,
    required this.avatarSlot,
    required this.continuationTime,
    required this.content,
    required this.header,
    required this.sender,
    required this.senderBadges,
    required this.meta,
    required this.time,
    required this.inlineStatus,
    required this.body,
    required this.searchMatch,
    required this.embedded,
    required this.attachments,
    required this.footer,
    required this.toolbar,
    required this.toolbarButton,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `gutter`.
  final RaftSlotStyle gutter;

  /// Slot `avatarSlot`.
  final RaftSlotStyle avatarSlot;

  /// Slot `continuationTime`.
  final RaftSlotStyle continuationTime;

  /// Slot `content`.
  final RaftSlotStyle content;

  /// Slot `header`.
  final RaftSlotStyle header;

  /// Slot `sender`.
  final RaftSlotStyle sender;

  /// Slot `senderBadges`.
  final RaftSlotStyle senderBadges;

  /// Slot `meta`.
  final RaftSlotStyle meta;

  /// Slot `time`.
  final RaftSlotStyle time;

  /// Slot `inlineStatus`.
  final RaftSlotStyle inlineStatus;

  /// Slot `body`.
  final RaftSlotStyle body;

  /// Slot `searchMatch`.
  final RaftSlotStyle searchMatch;

  /// Slot `embedded`.
  final RaftSlotStyle embedded;

  /// Slot `attachments`.
  final RaftSlotStyle attachments;

  /// Slot `footer`.
  final RaftSlotStyle footer;

  /// Slot `toolbar`.
  final RaftSlotStyle toolbar;

  /// Slot `toolbarButton`.
  final RaftSlotStyle toolbarButton;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'gutter': gutter,
    'avatarSlot': avatarSlot,
    'continuationTime': continuationTime,
    'content': content,
    'header': header,
    'sender': sender,
    'senderBadges': senderBadges,
    'meta': meta,
    'time': time,
    'inlineStatus': inlineStatus,
    'body': body,
    'searchMatch': searchMatch,
    'embedded': embedded,
    'attachments': attachments,
    'footer': footer,
    'toolbar': toolbar,
    'toolbarButton': toolbarButton,
  };
}

/// raft-ui recipe `messageItem` (`src/components/message-item/message-item.recipe.ts`, index.mjs:7069).
///
/// Used by: MessageItem, MessageItemAttachments, MessageItemAvatarSlot, MessageItemBody, MessageItemContent, MessageItemContinuationTime, MessageItemEmbedded, MessageItemFooter, MessageItemGutter, MessageItemHeader, MessageItemInlineStatus, MessageItemMeta, MessageItemSearchMatch, MessageItemSender, MessageItemSenderBadges, MessageItemSenderButton, MessageItemTime, MessageItemToolbar, MessageItemToolbarButton.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftMessageItemRecipe {
  static const String recipeName = 'messageItem';
  static const List<String> slotNames = [
    'root',
    'gutter',
    'avatarSlot',
    'continuationTime',
    'content',
    'header',
    'sender',
    'senderBadges',
    'meta',
    'time',
    'inlineStatus',
    'body',
    'searchMatch',
    'embedded',
    'attachments',
    'footer',
    'toolbar',
    'toolbarButton',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('compact', ['true', 'false'], null, true),
  ];

  static RaftMessageItemRecipeStyle resolve({
    bool? compact,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [compact?.toString()],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftMessageItemRecipeStyle(
      root: s[0],
      gutter: s[1],
      avatarSlot: s[2],
      continuationTime: s[3],
      content: s[4],
      header: s[5],
      sender: s[6],
      senderBadges: s[7],
      meta: s[8],
      time: s[9],
      inlineStatus: s[10],
      body: s[11],
      searchMatch: s[12],
      embedded: s[13],
      attachments: s[14],
      footer: s[15],
      toolbar: s[16],
      toolbarButton: s[17],
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
    [
      1142,
      1669,
      959,
      1188,
      1016,
      1258,
      1259,
      989,
      990,
      1253,
      1254,
      1457,
      1645,
      1658,
      1263,
      884,
      1255,
      1257,
      1252,
      1245,
      1246,
      1227,
      1228,
    ],
    [1669, 1727, 1719, 1901],
    [1669, 1727, 1718, 959, 1901, 1315, 219],
    [420, 1673, 1714, 1768, 1847, 1005, 1823, 1774],
    [1473, 960, 1795, 1807],
    [1424, 959, 1473, 1310, 1013, 1571],
    [1473, 1727, 1881, 763, 1829, 999, 1807, 765, 764, 766, 1691, 1565, 988],
    [1296, 1727, 1310, 1012],
    [1473, 1881, 1799, 1808],
    [1727, 1916, 1487, 1005, 1823, 1768, 1808, 1550],
    [1727, 1799, 1808],
    [1921, 1715, 63, 1795, 1807, 1716],
    [416, 1000, 1703, 573, 1652, 648, 1828, 1301, 1304, 1682, 1686],
    [1473, 1501],
    [1762, 1501],
    [1500, 959, 965, 1310, 1013],
    [
      420,
      1924,
      959,
      1310,
      1545,
      419,
      1852,
      1676,
      1011,
      1572,
      1697,
      1587,
      600,
      1681,
      1685,
      1724,
    ],
    [
      1296,
      1727,
      1310,
      1315,
      276,
      1744,
      1697,
      619,
      613,
      1580,
      1811,
      1263,
      425,
      884,
      802,
      1565,
      988,
      289,
    ],
    [
      1142,
      1669,
      959,
      1188,
      1016,
      1258,
      1259,
      989,
      990,
      1253,
      1254,
      1457,
      1645,
      1658,
      1263,
      884,
      1255,
      1257,
      1252,
      1245,
      1246,
      1227,
      1228,
      1629,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17],
    [18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17],
  ];
}
