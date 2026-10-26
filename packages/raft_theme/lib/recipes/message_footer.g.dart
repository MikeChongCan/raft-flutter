// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `messageFooter`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `badgeStatus` axis of `messageFooter`.
enum RaftMessageFooterRecipeBadgeStatus {
  read('read'),
  unread('unread');

  const RaftMessageFooterRecipeBadgeStatus(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftMessageFooterRecipe].
class RaftMessageFooterRecipeStyle {
  const RaftMessageFooterRecipeStyle({
    required this.savedIndicator,
    required this.readReceipt,
    required this.badge,
    required this.badgeSeparator,
  });

  /// Slot `savedIndicator`.
  final RaftSlotStyle savedIndicator;

  /// Slot `readReceipt`.
  final RaftSlotStyle readReceipt;

  /// Slot `badge`.
  final RaftSlotStyle badge;

  /// Slot `badgeSeparator`.
  final RaftSlotStyle badgeSeparator;

  Map<String, RaftSlotStyle> get slots => {
    'savedIndicator': savedIndicator,
    'readReceipt': readReceipt,
    'badge': badge,
    'badgeSeparator': badgeSeparator,
  };
}

/// raft-ui recipe `messageFooter` (`src/components/message-item/message-footer.recipe.ts`, index.mjs:7353).
///
/// Used by: MessageItemBadge, MessageItemBadgeSeparator, MessageItemReadReceipt, MessageItemSavedIndicator.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftMessageFooterRecipe {
  static const String recipeName = 'messageFooter';
  static const List<String> slotNames = [
    'savedIndicator',
    'readReceipt',
    'badge',
    'badgeSeparator',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('badgeStatus', ['read', 'unread'], null, true),
    RaftRecipeAxis('iconOnly', ['true', 'false'], 'false', false),
  ];

  static RaftMessageFooterRecipeStyle resolve({
    RaftMessageFooterRecipeBadgeStatus? badgeStatus,
    bool? iconOnly,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [badgeStatus?.css, iconOnly?.toString()],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftMessageFooterRecipeStyle(
      savedIndicator: s[0],
      readReceipt: s[1],
      badge: s[2],
      badgeSeparator: s[3],
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
      1296,
      1473,
      1414,
      1310,
      1012,
      1571,
      1916,
      1714,
      276,
      1799,
      1008,
      1811,
      1274,
      427,
      1565,
      988,
      1315,
      1580,
      1744,
      1697,
      613,
      289,
      293,
    ],
    [1487, 1296, 1727, 1310, 1012, 1916, 276, 1182, 1005, 1823, 1808, 277],
    [
      1296,
      1473,
      1414,
      1310,
      1571,
      1916,
      1714,
      1877,
      276,
      1176,
      1012,
      1695,
      619,
      1645,
      1725,
      1806,
      999,
      1811,
      579,
      1274,
      427,
      278,
    ],
    [1816],
    [
      1296,
      1473,
      1414,
      1310,
      1012,
      1571,
      1916,
      1714,
      276,
      1182,
      1695,
      1644,
      1799,
      1008,
      1811,
      579,
      1274,
      427,
      1565,
      988,
      278,
      292,
    ],
    [
      1296,
      1473,
      1414,
      1310,
      1571,
      1916,
      1714,
      1877,
      276,
      1176,
      1012,
      1695,
      619,
      1645,
      1725,
      1806,
      999,
      579,
      1274,
      427,
      278,
      1807,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3],
    [4, 1, 2, 3],
    [0, 1, 2, 3],
    [4, 1, 2, 3],
    [0, 1, 5, 3],
    [4, 1, 5, 3],
  ];
}
