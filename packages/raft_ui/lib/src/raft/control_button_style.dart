import 'package:flutter/material.dart';

import '../design_primitives.dart';
import '../recipes/recipe_runtime.dart';

/// Existing composed-control recipes become explicit class overrides on the
/// Button root. They no longer own a second input or surface implementation.
RaftSlotStyle raftControlButtonStyle(
  BuildContext context,
  RaftControl control,
  RaftInteractionState state,
  RaftSlotStyle root,
) {
  final recipe = control.recipe!;
  CssColor color(Color c) => CssColor(c.toARGB32(), null, c);
  final radius = recipe.radius.resolve(Directionality.of(context));
  final border = recipe.side(hovered: state.hovered);
  final text = recipe.textStyle;
  final padding =
      (control.padding ??
              (control.visualWidth == null ? recipe.padding : EdgeInsets.zero))
          .resolve(Directionality.of(context));
  final matrix = recipe.interactionTransform(
    hovered: state.hovered,
    pressed: state.pressed,
    reducedMotion: MediaQuery.disableAnimationsOf(context),
  );
  final shadows = control.shadow
      ? recipe.shadows(
          hovered: state.hovered,
          pressed: state.pressed,
          focused: state.focusVisible,
        )
      : <BoxShadow>[
          if (state.focusVisible)
            BoxShadow(
              color: recipe.focusRing.withValues(
                alpha: recipe.focusRing.a * .8,
              ),
              spreadRadius: 2,
            ),
        ];
  return root.copyWith(
    properties: {
      ...root.properties,
      'height': control.flexibleHeight
          ? const CssKeyword('auto')
          : CssNum(control.visualHeight, 'px'),
      'min-height': CssNum(control.visualHeight, 'px'),
      if (control.visualWidth != null)
        'width': CssNum(control.visualWidth!, 'px'),
      'background-color': color(
        recipe.backgroundForInteraction(
          hovered: state.hovered,
          pressed: state.pressed,
        ),
      ),
      'background-image': const CssKeyword('none'),
      'color': color(recipe.foregroundFor(hovered: state.hovered)),
      if (text.fontSize != null) 'font-size': CssNum(text.fontSize!, 'px'),
      if (text.height != null) 'line-height': CssNum(text.height!),
      if (text.fontWeight != null)
        'font-weight': CssNum(text.fontWeight!.value.toDouble()),
      if (text.fontFamily != null) 'font-family': CssString(text.fontFamily!),
      if (text.letterSpacing != null)
        'letter-spacing': CssNum(text.letterSpacing!, 'px'),
      for (final side in ['top', 'right', 'bottom', 'left']) ...{
        'border-$side-width': CssNum(border.width, 'px'),
        'border-$side-style': const CssKeyword('solid'),
        'border-$side-color': color(border.color),
        'padding-$side': CssNum(switch (side) {
          'top' => padding.top,
          'right' => padding.right,
          'bottom' => padding.bottom,
          _ => padding.left,
        }, 'px'),
      },
      'border-top-left-radius': CssNum(radius.topLeft.x, 'px'),
      'border-top-right-radius': CssNum(radius.topRight.x, 'px'),
      'border-bottom-left-radius': CssNum(radius.bottomLeft.x, 'px'),
      'border-bottom-right-radius': CssNum(radius.bottomRight.x, 'px'),
      'box-shadow': CssList([
        for (final s in shadows)
          CssSeq([
            CssNum(s.offset.dx, 'px'),
            CssNum(s.offset.dy, 'px'),
            CssNum(
              s.blurRadius <= .5
                  ? s.blurRadius * 2
                  : (s.blurRadius * .57735 + .5) * 2,
              'px',
            ),
            CssNum(s.spreadRadius, 'px'),
            color(s.color),
          ]),
      ]),
      'translate': CssSeq([CssNum(matrix[12], 'px'), CssNum(matrix[13], 'px')]),
      'scale': CssNum(matrix[0]),
      'opacity': CssNum(
        state.enabled || control.busy || control.inertWhenDisabled
            ? 1
            : recipe.disabledOpacity,
      ),
    },
  );
}
