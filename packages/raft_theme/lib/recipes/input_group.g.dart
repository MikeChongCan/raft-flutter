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
      1146,
      1677,
      965,
      1922,
      1481,
      1318,
      1244,
      1173,
      1579,
      1705,
      622,
      635,
      596,
      1816,
      1733,
      1889,
      947,
      950,
      1001,
      1232,
      1231,
      1230,
      1229,
      1227,
      1228,
    ],
    [965, 1735, 1318, 1323, 1022, 1655, 1722, 1778, 160, 1562, 298, 1631],
    [965, 1735, 1318, 1655, 1722, 1926, 1013, 1832, 1779, 1562, 298, 1628],
    [
      1481,
      966,
      615,
      1615,
      1573,
      1626,
      1197,
      1661,
      1011,
      1814,
      1010,
      1816,
      1623,
      928,
      938,
      934,
    ],
    [
      965,
      1735,
      1318,
      1323,
      1022,
      1655,
      1722,
      1778,
      160,
      1562,
      1727,
      333,
      633,
      581,
      636,
    ],
    [
      965,
      1735,
      1318,
      1655,
      1722,
      1926,
      1013,
      1832,
      1779,
      1562,
      1727,
      334,
      633,
      581,
      636,
    ],
    [965, 1735, 1318, 1323, 1022, 1655, 1722, 1778, 160, 1563, 1613],
    [965, 1735, 1318, 1655, 1722, 1926, 1013, 1832, 1779, 1563, 1610],
    [
      965,
      1735,
      1318,
      1323,
      1022,
      1655,
      1722,
      1778,
      160,
      1563,
      1727,
      333,
      633,
      581,
      630,
    ],
    [
      965,
      1735,
      1318,
      1655,
      1722,
      1926,
      1013,
      1832,
      1779,
      1563,
      1727,
      334,
      633,
      581,
      630,
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
