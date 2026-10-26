// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `composerSuggestionList`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `iconVariant` axis of `composerSuggestionList` (default `avatar`).
enum RaftComposerSuggestionListRecipeIconVariant {
  avatar('avatar'),
  framed('framed'),
  auxiliary('auxiliary'),
  inline('inline');

  const RaftComposerSuggestionListRecipeIconVariant(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// `metaVariant` axis of `composerSuggestionList` (default `text`).
enum RaftComposerSuggestionListRecipeMetaVariant {
  text('text'),
  code('code');

  const RaftComposerSuggestionListRecipeMetaVariant(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftComposerSuggestionListRecipe].
class RaftComposerSuggestionListRecipeStyle {
  const RaftComposerSuggestionListRecipeStyle({
    required this.root,
    required this.group,
    required this.groupLabel,
    required this.item,
    required this.content,
    required this.icon,
    required this.title,
    required this.aside,
    required this.meta,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `group`.
  final RaftSlotStyle group;

  /// Slot `groupLabel`.
  final RaftSlotStyle groupLabel;

  /// Slot `item`.
  final RaftSlotStyle item;

  /// Slot `content`.
  final RaftSlotStyle content;

  /// Slot `icon`.
  final RaftSlotStyle icon;

  /// Slot `title`.
  final RaftSlotStyle title;

  /// Slot `aside`.
  final RaftSlotStyle aside;

  /// Slot `meta`.
  final RaftSlotStyle meta;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'group': group,
    'groupLabel': groupLabel,
    'item': item,
    'content': content,
    'icon': icon,
    'title': title,
    'aside': aside,
    'meta': meta,
  };
}

/// raft-ui recipe `composerSuggestionList` (`src/components/composer/composer-suggestion-list.tsx`, index.mjs:11819).
///
/// Used by: ComposerSuggestionAside, ComposerSuggestionContent, ComposerSuggestionGroup, ComposerSuggestionGroupLabel, ComposerSuggestionIcon, ComposerSuggestionList, ComposerSuggestionMeta, ComposerSuggestionOption, ComposerSuggestionTitle.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftComposerSuggestionListRecipe {
  static const String recipeName = 'composerSuggestionList';
  static const List<String> slotNames = [
    'root',
    'group',
    'groupLabel',
    'item',
    'content',
    'icon',
    'title',
    'aside',
    'meta',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('separated', ['true', 'false'], 'false', false),
    RaftRecipeAxis(
      'iconVariant',
      ['avatar', 'framed', 'auxiliary', 'inline'],
      'avatar',
      false,
    ),
    RaftRecipeAxis('metaVariant', ['text', 'code'], 'text', false),
  ];

  static RaftComposerSuggestionListRecipeStyle resolve({
    bool? separated,
    RaftComposerSuggestionListRecipeIconVariant? iconVariant,
    RaftComposerSuggestionListRecipeMetaVariant? metaVariant,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [separated?.toString(), iconVariant?.css, metaVariant?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftComposerSuggestionListRecipeStyle(
      root: s[0],
      group: s[1],
      groupLabel: s[2],
      item: s[3],
      content: s[4],
      icon: s[5],
      title: s[6],
      aside: s[7],
      meta: s[8],
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
      420,
      1305,
      647,
      1910,
      1575,
      1422,
      1352,
      1574,
      1696,
      1582,
      600,
      1807,
      1681,
      1685,
      1724,
    ],
    [959, 961, 98, 1500, 637, 631, 1644, 1631],
    [1656, 1646, 1632, 1591, 1007, 1799, 999, 1808],
    [
      959,
      1912,
      1310,
      1820,
      1469,
      661,
      1015,
      1697,
      1646,
      1655,
      1007,
      1798,
      1004,
      1807,
      1261,
      690,
      674,
      678,
      675,
    ],
    [959, 1473, 960, 1310, 1013, 1820],
    [1727],
    [1473, 1881],
    [1487, 959, 1401, 1473, 1727, 1310, 1316],
    [1799, 1808, 1473, 960, 506, 1881],
    [1473, 1881, 1005, 1823, 1808],
    [1727, 959, 1747, 1310, 1315, 1703, 579, 1811, 287],
    [1727, 94, 1738, 1808],
    [1727, 959, 1739, 1310, 1315, 278, 1808],
    [959, 961],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8],
    [0, 1, 2, 3, 4, 5, 6, 7, 9],
    [0, 1, 2, 3, 4, 10, 6, 7, 8],
    [0, 1, 2, 3, 4, 10, 6, 7, 9],
    [0, 1, 2, 3, 4, 11, 6, 7, 8],
    [0, 1, 2, 3, 4, 11, 6, 7, 9],
    [0, 1, 2, 3, 4, 12, 6, 7, 8],
    [0, 1, 2, 3, 4, 12, 6, 7, 9],
    [0, 13, 2, 3, 4, 5, 6, 7, 8],
    [0, 13, 2, 3, 4, 5, 6, 7, 9],
    [0, 13, 2, 3, 4, 10, 6, 7, 8],
    [0, 13, 2, 3, 4, 10, 6, 7, 9],
    [0, 13, 2, 3, 4, 11, 6, 7, 8],
    [0, 13, 2, 3, 4, 11, 6, 7, 9],
    [0, 13, 2, 3, 4, 12, 6, 7, 8],
    [0, 13, 2, 3, 4, 12, 6, 7, 9],
  ];
}
