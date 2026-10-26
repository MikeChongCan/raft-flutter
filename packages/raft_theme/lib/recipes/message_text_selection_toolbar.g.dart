// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `messageTextSelectionToolbar`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftMessageTextSelectionToolbarRecipe].
class RaftMessageTextSelectionToolbarRecipeStyle {
  const RaftMessageTextSelectionToolbarRecipeStyle({
    required this.toolbar,
    required this.button,
    required this.separator,
  });

  /// Slot `toolbar`.
  final RaftSlotStyle toolbar;

  /// Slot `button`.
  final RaftSlotStyle button;

  /// Slot `separator`.
  final RaftSlotStyle separator;

  Map<String, RaftSlotStyle> get slots => {
    'toolbar': toolbar,
    'button': button,
    'separator': separator,
  };
}

/// raft-ui recipe `messageTextSelectionToolbar` (`src/components/message-item/message-text-selection-toolbar.recipe.ts`, index.mjs:7838).
///
/// Used by: MessageTextSelectionToolbar, MessageTextSelectionToolbarButton, MessageTextSelectionToolbarSeparator.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftMessageTextSelectionToolbarRecipe {
  static const String recipeName = 'messageTextSelectionToolbar';
  static const List<String> slotNames = ['toolbar', 'button', 'separator'];
  static const List<RaftRecipeAxis> axes = [];

  static RaftMessageTextSelectionToolbarRecipeStyle resolve({
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
    return RaftMessageTextSelectionToolbarRecipeStyle(
      toolbar: s[0],
      button: s[1],
      separator: s[2],
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
      1473,
      1310,
      1714,
      1011,
      1572,
      1697,
      1587,
      1806,
      999,
      600,
      1681,
      1685,
      1724,
    ],
    [
      959,
      1310,
      1013,
      1565,
      1877,
      1179,
      1697,
      1646,
      1807,
      1263,
      425,
      988,
      279,
      293,
    ],
    [1914, 1507, 1174, 602],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2],
  ];
}
