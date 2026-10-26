// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `messageActionCardContent`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// Resolved slots of [RaftMessageActionCardContentRecipe].
class RaftMessageActionCardContentRecipeStyle {
  const RaftMessageActionCardContentRecipeStyle({
    required this.root,
    required this.panel,
    required this.properties,
    required this.property,
    required this.propertyLabel,
    required this.propertyValue,
    required this.scopeList,
    required this.scopeListViewport,
    required this.scopeListLabel,
    required this.scope,
    required this.scopeName,
    required this.scopeDescription,
    required this.hintLabel,
    required this.hint,
    required this.notice,
    required this.completion,
    required this.actions,
    required this.actionsNote,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `panel`.
  final RaftSlotStyle panel;

  /// Slot `properties`.
  final RaftSlotStyle properties;

  /// Slot `property`.
  final RaftSlotStyle property;

  /// Slot `propertyLabel`.
  final RaftSlotStyle propertyLabel;

  /// Slot `propertyValue`.
  final RaftSlotStyle propertyValue;

  /// Slot `scopeList`.
  final RaftSlotStyle scopeList;

  /// Slot `scopeListViewport`.
  final RaftSlotStyle scopeListViewport;

  /// Slot `scopeListLabel`.
  final RaftSlotStyle scopeListLabel;

  /// Slot `scope`.
  final RaftSlotStyle scope;

  /// Slot `scopeName`.
  final RaftSlotStyle scopeName;

  /// Slot `scopeDescription`.
  final RaftSlotStyle scopeDescription;

  /// Slot `hintLabel`.
  final RaftSlotStyle hintLabel;

  /// Slot `hint`.
  final RaftSlotStyle hint;

  /// Slot `notice`.
  final RaftSlotStyle notice;

  /// Slot `completion`.
  final RaftSlotStyle completion;

  /// Slot `actions`.
  final RaftSlotStyle actions;

  /// Slot `actionsNote`.
  final RaftSlotStyle actionsNote;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'panel': panel,
    'properties': properties,
    'property': property,
    'propertyLabel': propertyLabel,
    'propertyValue': propertyValue,
    'scopeList': scopeList,
    'scopeListViewport': scopeListViewport,
    'scopeListLabel': scopeListLabel,
    'scope': scope,
    'scopeName': scopeName,
    'scopeDescription': scopeDescription,
    'hintLabel': hintLabel,
    'hint': hint,
    'notice': notice,
    'completion': completion,
    'actions': actions,
    'actionsNote': actionsNote,
  };
}

/// raft-ui recipe `messageActionCardContent` (`src/components/message-action-card/message-action-card-content.recipe.ts`, index.mjs:8363).
///
/// Used by: MessageActionCardActions, MessageActionCardActionsNote, MessageActionCardCompletion, MessageActionCardContent, MessageActionCardHint, MessageActionCardHintLabel, MessageActionCardNotice, MessageActionCardProperties, MessageActionCardProperty, MessageActionCardPropertyLabel, MessageActionCardPropertyValue, MessageActionCardScope, MessageActionCardScopeDescription, MessageActionCardScopeList, MessageActionCardScopeListLabel, MessageActionCardScopeListViewport, MessageActionCardScopeName.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftMessageActionCardContentRecipe {
  static const String recipeName = 'messageActionCardContent';
  static const List<String> slotNames = [
    'root',
    'panel',
    'properties',
    'property',
    'propertyLabel',
    'propertyValue',
    'scopeList',
    'scopeListViewport',
    'scopeListLabel',
    'scope',
    'scopeName',
    'scopeDescription',
    'hintLabel',
    'hint',
    'notice',
    'completion',
    'actions',
    'actionsNote',
  ];
  static const List<RaftRecipeAxis> axes = [];

  static RaftMessageActionCardContentRecipeStyle resolve({
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
    return RaftMessageActionCardContentRecipeStyle(
      root: s[0],
      panel: s[1],
      properties: s[2],
      property: s[3],
      propertyLabel: s[4],
      propertyValue: s[5],
      scopeList: s[6],
      scopeListViewport: s[7],
      scopeListLabel: s[8],
      scope: s[9],
      scopeName: s[10],
      scopeDescription: s[11],
      hintLabel: s[12],
      hint: s[13],
      notice: s[14],
      completion: s[15],
      actions: s[16],
      actionsNote: s[17],
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
    [1584, 959, 961, 1014, 1647, 1629, 1594],
    [1157, 1571, 1871, 939, 946, 1493, 902, 842],
    [1348, 1031, 1391, 1390, 1038, 1310, 1026, 1028],
    [657],
    [1393, 1473, 1921, 1806, 1004, 1808],
    [1348, 1473, 1921, 1468, 1656, 1798, 1807],
    [1497, 1761],
    [1575, 1577, 1354, 1761, 1621],
    [1806, 1004, 1808],
    [1473, 618, 1582, 1697, 631, 594, 1646, 1658],
    [649, 1005, 1823, 1006, 1807],
    [1498, 1806, 1824, 1811],
    [629, 632, 1606, 1806, 1811, 404],
    [
      959,
      1312,
      1014,
      178,
      176,
      1419,
      1697,
      579,
      1646,
      1658,
      1806,
      1811,
      170,
      188,
    ],
    [1296, 1310, 1013, 1806, 1811, 179, 176, 186],
    [959, 965, 1310, 1316, 1499, 1014],
    [1473, 960, 507, 1806, 1811],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 8, 12, 13, 14, 15, 16],
  ];
}
