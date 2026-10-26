// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `card`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `variant` axis of `card` (default `default`).
enum RaftCardRecipeVariant {
  default_('default'),
  option('option'),
  inset('inset');

  const RaftCardRecipeVariant(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftCardRecipe].
class RaftCardRecipeStyle {
  const RaftCardRecipeStyle({
    required this.root,
    required this.header,
    required this.title,
    required this.leading,
    required this.description,
    required this.trailing,
    required this.content,
    required this.footer,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `header`.
  final RaftSlotStyle header;

  /// Slot `title`.
  final RaftSlotStyle title;

  /// Slot `leading`.
  final RaftSlotStyle leading;

  /// Slot `description`.
  final RaftSlotStyle description;

  /// Slot `trailing`.
  final RaftSlotStyle trailing;

  /// Slot `content`.
  final RaftSlotStyle content;

  /// Slot `footer`.
  final RaftSlotStyle footer;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'header': header,
    'title': title,
    'leading': leading,
    'description': description,
    'trailing': trailing,
    'content': content,
    'footer': footer,
  };
}

/// raft-ui recipe `card` (`src/components/card/card.recipe.ts`, index.mjs:1617).
///
/// Used by: Card, CardContent, CardDescription, CardFooter, CardHeader, CardLeading, CardTitle, CardTrailing, MessageAttachmentCard.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftCardRecipe {
  static const String recipeName = 'card';
  static const List<String> slotNames = [
    'root',
    'header',
    'title',
    'leading',
    'description',
    'trailing',
    'content',
    'footer',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('variant', ['default', 'option', 'inset'], 'default', false),
  ];

  static RaftCardRecipeStyle resolve({
    RaftCardRecipeVariant? variant,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [variant?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftCardRecipeStyle(
      root: s[0],
      header: s[1],
      title: s[2],
      leading: s[3],
      description: s[4],
      trailing: s[5],
      content: s[6],
      footer: s[7],
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
    [959, 1473, 961, 1571, 1807, 1696, 618, 631, 594, 1725],
    [
      1129,
      1031,
      1473,
      505,
      1032,
      1312,
      1026,
      1029,
      1195,
      1197,
      1196,
      1193,
      1194,
      1585,
      1191,
    ],
    [1708, 1473, 653, 1007, 1800, 1001, 1807],
    [655, 1706, 1708, 959, 1727, 1310, 1718, 179, 176, 1456],
    [1709, 1473, 653, 1007, 1798, 1824, 1811],
    [1708, 654, 959, 1727, 1310, 1717, 1317],
    [1473, 1585],
    [
      959,
      1473,
      1014,
      963,
      1310,
      1007,
      1799,
      1808,
      178,
      176,
      124,
      637,
      631,
      1649,
      1660,
    ],
    [959, 1473, 961, 1571, 1807, 1697, 620, 630, 594, 1725],
    [
      1129,
      1031,
      1473,
      505,
      1032,
      1312,
      1029,
      1195,
      1197,
      1196,
      1193,
      1194,
      1025,
      1584,
    ],
    [1708, 1473, 653, 1807, 1007, 1798, 1008],
    [1709, 1473, 653, 1824, 1007, 1806, 1811],
    [1473, 1647, 1594],
    [959, 1473, 1014, 963, 1310, 1007, 1799, 1808, 178, 176, 124],
    [
      1129,
      1031,
      1473,
      505,
      1032,
      1312,
      1026,
      1029,
      1195,
      1197,
      1196,
      1193,
      1194,
      1649,
      1660,
    ],
    [1473, 637, 631, 1585, 952],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7],
    [8, 9, 10, 3, 11, 5, 12, 13],
    [0, 14, 2, 3, 4, 5, 15, 7],
  ];
}
