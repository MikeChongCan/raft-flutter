import 'package:flutter/material.dart' show Colors;
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart' show mapEquals;

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
    return TweenAnimationBuilder<_ButtonColors>(
      tween: _ColorTween(_ButtonColors.resolve(style, tokens)),
      duration: duration,
      curve: curve,
      builder: (context, value, _) => builder(
        context,
        style.copyWith(
          properties: {
            ...style.properties,
            for (final entry in value.values.entries)
              entry.key: CssColor(entry.value.toARGB32(), null, entry.value),
          },
        ),
      ),
    );
  }
}

// Equal computed colours must not start another 100ms animation merely because
// a parent rebuilt an equivalent recipe object. Geometry never enters a tween.
class _ButtonColors {
  const _ButtonColors(this.values);
  factory _ButtonColors.resolve(RaftSlotStyle style, RaftTokenResolver tokens) {
    final values = <String, Color>{};
    for (final key in style.properties.keys) {
      if (key != 'color' && !key.endsWith('-color')) continue;
      final color = RaftColorRef.fromCss(style[key])?.resolve(tokens);
      if (color != null) values[key] = color;
    }
    return _ButtonColors(values);
  }
  final Map<String, Color> values;
  @override
  bool operator ==(Object other) =>
      other is _ButtonColors && mapEquals(values, other.values);
  @override
  int get hashCode => Object.hashAllUnordered([
    for (final entry in values.entries) Object.hash(entry.key, entry.value),
  ]);
}

class _ColorTween extends Tween<_ButtonColors> {
  _ColorTween(_ButtonColors colors) : super(begin: colors, end: colors);
  @override
  _ButtonColors lerp(double t) => _ButtonColors({
    for (final entry in end!.values.entries)
      entry.key:
          raftCssColorLerp(begin!.values[entry.key], entry.value, t) ??
          entry.value,
  });
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
