// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `spinner`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `size` axis of `spinner` (default `sm`).
enum RaftSpinnerRecipeSize {
  xs('xs'),
  sm('sm'),
  md('md'),
  lg('lg');

  const RaftSpinnerRecipeSize(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// `variant` axis of `spinner`.
enum RaftSpinnerRecipeVariant {
  default_('default'),
  inverse('inverse');

  const RaftSpinnerRecipeVariant(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftSpinnerRecipe].
class RaftSpinnerRecipeStyle {
  const RaftSpinnerRecipeStyle({
    required this.root,
    required this.ring,
    required this.pixel,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `ring`.
  final RaftSlotStyle ring;

  /// Slot `pixel`.
  final RaftSlotStyle pixel;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'ring': ring,
    'pixel': pixel,
  };
}

/// raft-ui recipe `spinner` (`src/components/spinner/spinner.tsx`, index.mjs:96).
///
/// Used by: Spinner.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftSpinnerRecipe {
  static const String recipeName = 'spinner';
  static const List<String> slotNames = ['root', 'ring', 'pixel'];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis('size', ['xs', 'sm', 'md', 'lg'], 'sm', false),
    RaftRecipeAxis('variant', ['default', 'inverse'], null, true),
  ];

  static RaftSpinnerRecipeStyle resolve({
    RaftSpinnerRecipeSize? size,
    RaftSpinnerRecipeVariant? variant,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [size?.css, variant?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftSpinnerRecipeStyle(root: s[0], ring: s[1], pixel: s[2]);
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
    [1669, 1296, 1727, 1310, 1315, 1337, 1802, 357, 354],
    [1727, 1031, 1754, 1039, 1009],
    [616, 1729, 1690, 576, 1548],
    [1669, 1296, 1727, 1310, 1315, 1337, 357, 354, 1809],
    [1669, 1296, 1727, 1310, 1315, 1337, 1802, 358, 355],
    [1669, 1296, 1727, 1310, 1315, 1337, 358, 355, 1809],
    [1669, 1296, 1727, 1310, 1315, 1337, 1802, 359, 355],
    [1669, 1296, 1727, 1310, 1315, 1337, 359, 355, 1809],
    [1669, 1296, 1727, 1310, 1315, 1337, 1802, 360, 356],
    [1669, 1296, 1727, 1310, 1315, 1337, 360, 356, 1809],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2],
    [0, 1, 2],
    [3, 1, 2],
    [4, 1, 2],
    [4, 1, 2],
    [5, 1, 2],
    [6, 1, 2],
    [6, 1, 2],
    [7, 1, 2],
    [8, 1, 2],
    [8, 1, 2],
    [9, 1, 2],
  ];
}
