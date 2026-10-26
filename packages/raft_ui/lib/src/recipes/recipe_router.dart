import 'package:raft_theme/recipes/legacy/recipe_utilities.g.dart' as legacy;
import 'package:raft_theme/recipes/recipe_runtime.dart';
import 'package:raft_theme/recipes/recipe_utilities.g.dart' as raft;

/// Support for the generated recipe router (`tool/recipes/gen_router.mjs`).
///
/// A resolver that does not name a set (none at all, or a test fake) keeps the
/// frozen 0.5.52 set, so nothing that predates the Raft set changes by accident.
/// The set of a real theme comes from `RaftThemePackRecipes.recipeSet`.
bool usesLegacyRecipes(RaftTokenResolver? tokens) =>
    tokens == null || tokens.recipeSet == RaftRecipeSet.legacy;

/// The Raft enum value with CSS name [css], or null when the Raft recipe has no
/// such value (the axis then takes its default).
T? routeAxis<T>(String? css, List<T> values, String Function(T) cssOf) {
  if (css == null) return null;
  for (final value in values) {
    if (cssOf(value) == css) return value;
  }
  return null;
}

/// A slot the Raft recipe does not define: no declarations at all.
RaftSlotStyle absentSlot(RaftTokenResolver? tokens) =>
    RaftSlotStyle(const {}, const {}, const [], tokens);

/// [raft] plus an empty slot for every legacy slot name it lacks.
Map<String, RaftSlotStyle> withLegacySlots(
  Map<String, RaftSlotStyle> raft,
  List<String> legacySlots,
  RaftTokenResolver? tokens,
) => {for (final name in legacySlots) name: absentSlot(tokens), ...raft};

/// Resolves class names (as listed in a resolved slot's `classes`) through the
/// utility table and engine of the recipe set [tokens] paints with. Names the
/// Raft table never compiled are skipped; the frozen table always has them.
RaftSlotStyle resolveRecipeClasses(
  Iterable<String> names,
  RaftRecipeStates states,
  RaftTokenResolver tokens,
) {
  final legacySet = usesLegacyRecipes(tokens);
  final utilities = legacySet
      ? legacy.raftRecipeUtilities
      : raft.raftRecipeUtilities;
  final engine = legacySet ? legacy.raftRecipeEngine : raft.raftRecipeEngine;
  return engine.resolveSlot(
    [
      for (final name in names)
        if (utilities.indexWhere((u) => u.name == name) case final i
            when i >= 0)
          i,
    ],
    states,
    tokens,
  );
}

/// Resolves class names written in this repository (product compositions such as
/// `.card-brutal`, not the output of a recipe) through the 0.5.52 utility table.
///
/// Those lists use the 0.5.52 vocabulary (`bg-layer-panel`, `shadow-raft-md`),
/// which the Raft set's table no longer compiles, so they stay on the table they
/// were authored against in every look.
RaftSlotStyle resolveAuthoredClasses(
  Iterable<String> names,
  RaftRecipeStates states,
  RaftTokenResolver tokens,
) => legacy.raftRecipeEngine.resolveSlot(
  [
    for (final name in names)
      legacy.raftRecipeUtilities.indexWhere((u) => u.name == name),
  ],
  states,
  tokens,
);
