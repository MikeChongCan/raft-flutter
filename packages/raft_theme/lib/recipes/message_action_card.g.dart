// GENERATED — do not edit. Regenerate with `tool/recipes/run`.
// Source: raft-ui 0.7.0 dist/index.mjs (sha256 83bf0bff35092e3d),
// tailwindcss 4.2.2 with raft-ui styles.css + Web @theme overrides. Recipe `messageActionCard`.
// ignore_for_file: type=lint

import 'recipe_runtime.dart';
import 'recipe_utilities.g.dart';

/// `tone` axis of `messageActionCard`.
enum RaftMessageActionCardRecipeTone {
  neutral('neutral'),
  primary('primary'),
  information('information'),
  accent('accent'),
  success('success'),
  warning('warning'),
  danger('danger');

  const RaftMessageActionCardRecipeTone(this.css);

  /// Variant value as written in the raft-ui source.
  final String css;
}

/// Resolved slots of [RaftMessageActionCardRecipe].
class RaftMessageActionCardRecipeStyle {
  const RaftMessageActionCardRecipeStyle({
    required this.root,
    required this.header,
    required this.headerIcon,
    required this.headerTitle,
    required this.headerDescription,
    required this.headerStatus,
    required this.status,
    required this.collapseTrigger,
  });

  /// Slot `root`.
  final RaftSlotStyle root;

  /// Slot `header`.
  final RaftSlotStyle header;

  /// Slot `headerIcon`.
  final RaftSlotStyle headerIcon;

  /// Slot `headerTitle`.
  final RaftSlotStyle headerTitle;

  /// Slot `headerDescription`.
  final RaftSlotStyle headerDescription;

  /// Slot `headerStatus`.
  final RaftSlotStyle headerStatus;

  /// Slot `status`.
  final RaftSlotStyle status;

  /// Slot `collapseTrigger`.
  final RaftSlotStyle collapseTrigger;

  Map<String, RaftSlotStyle> get slots => {
    'root': root,
    'header': header,
    'headerIcon': headerIcon,
    'headerTitle': headerTitle,
    'headerDescription': headerDescription,
    'headerStatus': headerStatus,
    'status': status,
    'collapseTrigger': collapseTrigger,
  };
}

/// raft-ui recipe `messageActionCard` (`src/components/message-action-card/message-action-card.recipe.ts`, index.mjs:8318).
///
/// Used by: MessageActionCard, MessageActionCardCollapseTrigger, MessageActionCardHeader, MessageActionCardHeaderDescription, MessageActionCardHeaderIcon, MessageActionCardHeaderStatus, MessageActionCardHeaderTitle, MessageActionCardStatus.
///
/// Class lists are the exact tailwind-variants + tailwind-merge output for
/// every variant combination; [resolve] applies the CSS cascade for [states].
abstract final class RaftMessageActionCardRecipe {
  static const String recipeName = 'messageActionCard';
  static const List<String> slotNames = [
    'root',
    'header',
    'headerIcon',
    'headerTitle',
    'headerDescription',
    'headerStatus',
    'status',
    'collapseTrigger',
  ];
  static const List<RaftRecipeAxis> axes = [
    RaftRecipeAxis(
      'tone',
      [
        'neutral',
        'primary',
        'information',
        'accent',
        'success',
        'warning',
        'danger',
      ],
      null,
      true,
    ),
  ];

  static RaftMessageActionCardRecipeStyle resolve({
    RaftMessageActionCardRecipeTone? tone,
    RaftRecipeStates states = RaftRecipeStates.none,
    RaftTokenResolver? tokens,
  }) {
    final s = raftResolveRecipe(
      raftRecipeEngine,
      axes,
      _lists,
      _combos,
      [tone?.css],
      states,
      tokens,
      recipeName: recipeName,
      slotNames: slotNames,
    );
    return RaftMessageActionCardRecipeStyle(
      root: s[0],
      header: s[1],
      headerIcon: s[2],
      headerTitle: s[3],
      headerDescription: s[4],
      headerStatus: s[5],
      status: s[6],
      collapseTrigger: s[7],
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
    [1922, 1132, 1509, 1413],
    [965, 1320, 1022, 1655, 1642, 1601, 1112, 1839, 1007, 1816],
    [965, 1735, 1318, 1323, 177, 1758, 1711, 581, 1821, 179],
    [1481, 966, 1645],
    [618, 1506, 1815, 1014, 1821],
    [1495, 1735, 1513, 1808, 1016, 1821],
    [
      1304,
      1195,
      1318,
      1021,
      1709,
      621,
      615,
      1588,
      1733,
      1808,
      1016,
      1821,
      553,
      552,
      549,
      523,
      525,
      529,
    ],
    [
      965,
      1735,
      664,
      1318,
      1323,
      191,
      168,
      1497,
      881,
      982,
      987,
      1517,
      96,
      1758,
      1705,
      1821,
      1271,
      1284,
      427,
      986,
      995,
      180,
    ],
    [
      1304,
      1195,
      1318,
      1021,
      1709,
      621,
      615,
      1588,
      1733,
      1808,
      1016,
      1821,
      553,
      552,
      549,
      523,
      525,
      529,
      517,
    ],
    [
      1304,
      1195,
      1318,
      1021,
      1709,
      621,
      615,
      1588,
      1733,
      1808,
      1016,
      1821,
      553,
      552,
      549,
      523,
      525,
      529,
      515,
    ],
    [
      1304,
      1195,
      1318,
      1021,
      1709,
      621,
      615,
      1588,
      1733,
      1808,
      1016,
      1821,
      553,
      552,
      549,
      523,
      525,
      529,
      518,
    ],
    [
      1304,
      1195,
      1318,
      1021,
      1709,
      621,
      615,
      1588,
      1733,
      1808,
      1016,
      1821,
      553,
      552,
      549,
      523,
      525,
      529,
      514,
    ],
    [
      1304,
      1195,
      1318,
      1021,
      1709,
      621,
      615,
      1588,
      1733,
      1808,
      1016,
      1821,
      553,
      552,
      549,
      523,
      525,
      529,
      520,
    ],
    [
      1304,
      1195,
      1318,
      1021,
      1709,
      621,
      615,
      1588,
      1733,
      1808,
      1016,
      1821,
      553,
      552,
      549,
      523,
      525,
      529,
      522,
    ],
    [
      1304,
      1195,
      1318,
      1021,
      1709,
      621,
      615,
      1588,
      1733,
      1808,
      1016,
      1821,
      553,
      552,
      549,
      523,
      525,
      529,
      516,
    ],
  ];

  /// Per combination (mixed radix over [axes]): class list per slot.
  static const List<List<int>> _combos = [
    [0, 1, 2, 3, 4, 5, 6, 7],
    [0, 1, 2, 3, 4, 5, 8, 7],
    [0, 1, 2, 3, 4, 5, 9, 7],
    [0, 1, 2, 3, 4, 5, 10, 7],
    [0, 1, 2, 3, 4, 5, 11, 7],
    [0, 1, 2, 3, 4, 5, 12, 7],
    [0, 1, 2, 3, 4, 5, 13, 7],
    [0, 1, 2, 3, 4, 5, 14, 7],
  ];
}
