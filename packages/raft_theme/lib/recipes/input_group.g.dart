// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `inputGroup`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `align` axis of `inputGroup` (default `inline-start`).
enum RaftInputGroupRecipeAlign {
  inlineStart('inline-start'),
  inlineEnd('inline-end');

  const RaftInputGroupRecipeAlign(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// `variant` axis of `inputGroup` (default `default`).
enum RaftInputGroupRecipeVariant {
  default_('default'),
  container('container');

  const RaftInputGroupRecipeVariant(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftInputGroupRecipe].
class RaftInputGroupRecipeStyle {
  const RaftInputGroupRecipeStyle({
    required this.root,
    required this.addon,
    required this.text,
    required this.control,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `addon`.
  final RaftSlotStyle addon;

  /// Slot `text`.
  final RaftSlotStyle text;

  /// Slot `control`.
  final RaftSlotStyle control;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'addon': addon,
    'text': text,
    'control': control,
  };
}

/// raft-ui recipe `inputGroup` (`src/components/input-group/input-group.tsx`, index.mjs:5152).
///
/// Used by: ComboboxInputGroup, InputGroup, InputGroupAddon, InputGroupInput.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftInputGroupRecipe {
  static const String recipeName = 'inputGroup';
  static const List<String> slotNames = ['root', 'addon', 'text', 'control'];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis(
      'align',
      ['inline-start', 'inline-end'],
      'inline-start',
      false,
    ),
    RaftRecipeAxis('variant', ['default', 'container'], 'default', false),
  ];

  static RaftInputGroupRecipeStyle resolve({
    RaftInputGroupRecipeAlign? align,
    RaftInputGroupRecipeVariant? variant,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [align?.css, variant?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftInputGroupRecipeStyle(
      root: s[0],
      addon: s[1],
      text: s[2],
      control: s[3],
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
      1138,
      1669,
      959,
      1912,
      1473,
      1310,
      1236,
      1165,
      1571,
      1697,
      620,
      633,
      594,
      1807,
      1725,
      1879,
      943,
      946,
      993,
      1224,
      1223,
      1222,
      1221,
      1219,
      1220,
    ],
    [959, 1727, 1310, 1315, 1014, 1647, 1714, 1769, 159, 1554, 297, 1623],
    [959, 1727, 1310, 1647, 1714, 1916, 1005, 1822, 1770, 1554, 297, 1620],
    [
      1473,
      960,
      613,
      1607,
      1565,
      1618,
      1189,
      1653,
      1003,
      1805,
      1002,
      1807,
      1615,
      924,
      934,
      930,
    ],
    [
      959,
      1727,
      1310,
      1315,
      1014,
      1647,
      1714,
      1769,
      159,
      1554,
      1719,
      332,
      631,
      579,
      634,
    ],
    [
      959,
      1727,
      1310,
      1647,
      1714,
      1916,
      1005,
      1822,
      1770,
      1554,
      1719,
      333,
      631,
      579,
      634,
    ],
    [959, 1727, 1310, 1315, 1014, 1647, 1714, 1769, 159, 1555, 1605],
    [959, 1727, 1310, 1647, 1714, 1916, 1005, 1822, 1770, 1555, 1602],
    [
      959,
      1727,
      1310,
      1315,
      1014,
      1647,
      1714,
      1769,
      159,
      1555,
      1719,
      332,
      631,
      579,
      628,
    ],
    [
      959,
      1727,
      1310,
      1647,
      1714,
      1916,
      1005,
      1822,
      1770,
      1555,
      1719,
      333,
      631,
      579,
      628,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3],
    [0, 4, 5, 3],
    [0, 6, 7, 3],
    [0, 8, 9, 3],
  ];
}
