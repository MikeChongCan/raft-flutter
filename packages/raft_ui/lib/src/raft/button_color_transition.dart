import 'package:flutter/material.dart' show Colors;
import 'package:flutter/widgets.dart';

import '../recipe_surface.dart';
import '../recipes/recipe_runtime.dart';
import 'ui_tokens.dart' show raftChromeBlend;

/// Only the colour properties in Button's `transition-colors` declaration
/// interpolate. Geometry, focus shadows and loading layout change atomically.
class RaftButtonColorTransition extends StatelessWidget {
  const RaftButtonColorTransition({
    super.key,
    required this.style,
    required this.tokens,
    required this.builder,
  });
  final RaftSlotStyle style;
  final RaftTokenResolver tokens;
  final Widget Function(BuildContext, RaftSlotStyle) builder;

  @override
  Widget build(BuildContext context) {
    final duration = MediaQuery.disableAnimationsOf(context)
        ? Duration.zero
        : style.transitionDuration ?? Duration.zero;
    final curve = style.transitionCurve ?? Curves.ease;
    return TweenAnimationBuilder<RaftSlotStyle>(
      tween: _ColorTween(style, tokens),
      duration: duration,
      curve: curve,
      builder: (context, value, _) => builder(context, value),
    );
  }
}

class _ColorTween extends Tween<RaftSlotStyle> {
  _ColorTween(RaftSlotStyle style, this.tokens)
    : super(begin: style, end: style);
  final RaftTokenResolver tokens;

  // Tween.transform returns begin at t=0; Button geometry must use the new
  // recipe immediately even while its colours are still transitioning.
  @override
  RaftSlotStyle transform(double t) => lerp(t);

  @override
  RaftSlotStyle lerp(double t) {
    if (t == 1) return end!;
    final properties = {...end!.properties};
    for (final key in properties.keys.toList()) {
      if (key != 'color' && !key.endsWith('-color')) continue;
      final first = RaftColorRef.fromCss(begin![key])?.resolve(tokens);
      final last = RaftColorRef.fromCss(end![key])?.resolve(tokens);
      final color = raftCssColorLerp(first, last, t);
      if (color != null)
        properties[key] = CssColor(color.toARGB32(), null, color);
    }
    return end!.copyWith(properties: properties);
  }
}

/// Flatten the uniform CSS press-overlay layer used by Button and ListRow.
RaftSlotStyle raftUniformOverlay(
  RaftSlotStyle style,
  RaftTokenResolver tokens,
) {
  final image = style['background-image'];
  if (image is! CssFunction ||
      image.name != 'linear-gradient' ||
      image.args.length != 2 ||
      image.args.first.toString() != image.args.last.toString())
    return style;
  final overlay = RaftColorRef.fromCss(image.args.first)?.resolve(tokens);
  if (overlay == null) return style;
  final fill = style.backgroundColor?.resolve(tokens) ?? Colors.transparent;
  final blended = raftChromeBlend(overlay, fill);
  return style.copyWith(
    properties: {
      ...style.properties,
      'background-color': CssColor(blended.toARGB32(), null, blended),
    },
  );
}
