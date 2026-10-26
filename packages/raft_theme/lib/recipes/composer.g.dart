// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `composer`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftComposerRecipe].
class RaftComposerRecipeStyle {
  const RaftComposerRecipeStyle({
    required this.root,
    required this.input,
    required this.toolbar,
    required this.actions,
    required this.meta,
    required this.iconButton,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `input`.
  final RaftSlotStyle input;

  /// Slot `toolbar`.
  final RaftSlotStyle toolbar;

  /// Slot `actions`.
  final RaftSlotStyle actions;

  /// Slot `meta`.
  final RaftSlotStyle meta;

  /// Slot `iconButton`.
  final RaftSlotStyle iconButton;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'input': input,
    'toolbar': toolbar,
    'actions': actions,
    'meta': meta,
    'iconButton': iconButton,
  };
}

/// raft-ui recipe `composer` (`src/components/composer/composer.recipe.ts`, index.mjs:11123).
///
/// Used by: Composer, ComposerActions, ComposerIconButton, ComposerInput, ComposerMeta, ComposerToolbar.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftComposerRecipe {
  static const String recipeName = 'composer';
  static const List<String> slotNames = [
    'root',
    'input',
    'toolbar',
    'actions',
    'meta',
    'iconButton',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftComposerRecipeStyle resolve({
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
    return RaftComposerRecipeStyle(
      root: s[0],
      input: s[1],
      toolbar: s[2],
      actions: s[3],
      meta: s[4],
      iconButton: s[5],
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
      959,
      1912,
      961,
      1014,
      1583,
      1696,
      620,
      1647,
      1634,
      1593,
      633,
      594,
      1807,
      1725,
      993,
    ],
    [
      1350,
      1912,
      1670,
      613,
      1565,
      951,
      1575,
      1465,
      1642,
      1007,
      1795,
      1006,
      1807,
      1455,
      1615,
    ],
    [959, 1310, 1314, 1014],
    [959, 1310, 1014],
    [1744, 1697, 1811, 922, 920, 482, 480, 397, 265],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 3, 4],
  ];
}
