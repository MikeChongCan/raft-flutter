// raft-ui 0.7.0 `Button` (dist `buttonVariants`): stickers (primary / accent / warning / danger), outline paper
// buttons, ghost, on-frame and link. Sizes 32 / 44 / 52 and the icon squares. Press and hover lay one overlay over
// the resting colour; disabled and loading read `fill-muted`; keyboard focus draws the `focus-ring`.
import 'package:flutter/material.dart';

import '../control_typography.dart';
import '../css_opacity.dart';
import '../design_primitives.dart';
import '../icons.dart';
import '../localization.dart';
import '../recipes/button_variants.g.dart';
import '../theme.dart';
import '../tokens/tokens.dart';
import 'button_surface.dart';
import 'button_colors.dart';
export 'button_colors.dart';
import 'ui_tokens.dart';

/// `variant` axis of `buttonVariants`. `accent` and `primary` are the same pink sticker.
enum RaftButtonVariant {
  primary,
  accent,
  warning,
  danger,
  standard,
  outline,
  information,
  muted,
  success,
  dangerSecondary,
  dangerOutline,
  ghost,
  onFrame,
  link;

  bool get isSticker =>
      this == primary || this == accent || this == warning || this == danger;
  bool get isOutline => switch (this) {
    standard ||
    outline ||
    information ||
    muted ||
    success ||
    dangerSecondary ||
    dangerOutline => true,
    _ => false,
  };
  bool get isTransparent => this == ghost || this == onFrame || this == link;

  /// The former generated recipe axis.
  static RaftButtonVariant fromRecipe(RaftButtonRecipeVariant v) => switch (v) {
    RaftButtonRecipeVariant.primary => primary,
    RaftButtonRecipeVariant.default_ => standard,
    RaftButtonRecipeVariant.information => information,
    RaftButtonRecipeVariant.muted => muted,
    RaftButtonRecipeVariant.accent => accent,
    RaftButtonRecipeVariant.warning => warning,
    RaftButtonRecipeVariant.success => success,
    RaftButtonRecipeVariant.outline => outline,
    RaftButtonRecipeVariant.ghost => ghost,
    RaftButtonRecipeVariant.link => link,
    RaftButtonRecipeVariant.dangerSecondary => dangerSecondary,
    RaftButtonRecipeVariant.danger => danger,
    RaftButtonRecipeVariant.dangerOutline => dangerOutline,
  };

  static RaftButtonVariant fromControl(RaftControlVariant v) => switch (v) {
    RaftControlVariant.surface => standard,
    RaftControlVariant.primary => primary,
    RaftControlVariant.accent => accent,
    RaftControlVariant.outline => outline,
    RaftControlVariant.ghost => ghost,
    RaftControlVariant.danger => danger,
  };
}

/// `size` axis of `buttonVariants`: `xs`, `sm` and `md` are all 32px; `xl` is the 52px full-width CTA.
enum RaftButtonSize {
  xs,
  sm,
  md,
  lg,
  xl,
  inline,
  iconXs,
  iconSm,
  iconMd,
  iconLg;

  bool get isIcon =>
      this == iconXs || this == iconSm || this == iconMd || this == iconLg;

  static RaftButtonSize fromRecipe(RaftButtonRecipeSize s) => switch (s) {
    RaftButtonRecipeSize.xs => xs,
    RaftButtonRecipeSize.sm => sm,
    RaftButtonRecipeSize.md => md,
    RaftButtonRecipeSize.lg => lg,
    RaftButtonRecipeSize.inline => inline,
    RaftButtonRecipeSize.iconXs => iconXs,
    RaftButtonRecipeSize.iconSm => iconSm,
    RaftButtonRecipeSize.iconMd => iconMd,
    RaftButtonRecipeSize.iconLg => iconLg,
  };
}

/// The geometry of one size (and the on-frame compound that makes xs/sm/md 36px).
class RaftButtonMetrics {
  const RaftButtonMetrics({
    required this.height,
    required this.paddingX,
    required this.iconStartPaddingLeft,
    required this.iconEndPaddingRight,
    required this.text,
    required this.icon,
    this.gap = 8,
    this.square = false,
  });

  final double height,
      paddingX,
      iconStartPaddingLeft,
      iconEndPaddingRight,
      icon,
      gap;
  final RaftTypeStyle text;
  final bool square;

  /// Component-specific values refine a size without selecting another size
  /// axis. A caller chooses its semantic component; the pack supplies numbers.
  RaftButtonMetrics forComponent(RaftTokens t, String? component) {
    if (component == null) return this;
    final padding = t.size('space.${component}Inline', fallback: paddingX);
    return RaftButtonMetrics(
      height: t.size('size.$component', fallback: height),
      paddingX: padding,
      iconStartPaddingLeft: padding - (paddingX - iconStartPaddingLeft),
      iconEndPaddingRight: padding - (paddingX - iconEndPaddingRight),
      text: RaftTypeStyle(
        t.size('type.$component.size', fallback: text.fontSize),
        t.size('type.$component.line', fallback: text.lineHeight),
        fontWeight: text.fontWeight,
        letterSpacingEm: text.letterSpacingEm,
      ),
      icon: t.size('size.${component}Glyph', fallback: icon),
      gap: t.size('space.${component}Gap', fallback: gap),
      square: square,
    );
  }

  /// Size axes from current Web and actual a57b9dab recipe probes.
  /// Physical height overrides never choose a different typography axis.
  static RaftButtonMetrics of(
    RaftButtonSize size,
    RaftButtonVariant variant,
    RaftTokens t,
  ) {
    final frame =
        variant == RaftButtonVariant.onFrame &&
        (size == RaftButtonSize.xs ||
            size == RaftButtonSize.sm ||
            size == RaftButtonSize.md ||
            size == RaftButtonSize.iconXs ||
            size == RaftButtonSize.iconSm ||
            size == RaftButtonSize.iconMd);
    final axis = switch (size) {
      RaftButtonSize.xs || RaftButtonSize.iconXs => 'xs',
      RaftButtonSize.sm || RaftButtonSize.iconSm => 'sm',
      RaftButtonSize.lg || RaftButtonSize.iconLg => 'lg',
      _ => 'md',
    };
    final large = axis == 'lg';
    final height = frame
        ? t.size('size.control.onFrame', fallback: 36)
        : size == RaftButtonSize.xl
        ? 52.0
        : t.size('size.control.$axis', fallback: large ? 44 : 32);
    final nativeType = large ? RaftTypeScale.subhead : RaftTypeScale.footnote;
    final fontSize = size == RaftButtonSize.xl
        ? RaftTypeScale.body.fontSize
        : frame
        ? RaftTypeScale.subhead.fontSize
        : t.size('type.button.$axis.size', fallback: nativeType.fontSize);
    final line = size == RaftButtonSize.xl
        ? RaftTypeScale.body.lineHeight
        : frame
        ? RaftTypeScale.subhead.lineHeight
        : axis == 'xs'
        ? 18.0
        : t.size('type.button.$axis.line', fallback: nativeType.lineHeight);
    final padding = size == RaftButtonSize.xl
        ? 20.0
        : frame
        ? 10.0
        : axis == 'md'
        ? 12.0
        : t.size('space.buttonInline.$axis', fallback: large ? 16 : 12);
    final glyph = size == RaftButtonSize.xl
        ? 18.0
        : frame
        ? (size.isIcon ? 20.0 : 16.0)
        : size.isIcon
        ? t.size('size.buttonGlyph.${size.name}', fallback: large ? 22 : 18)
        : axis == 'md'
        ? 16.0
        : t.size('size.buttonGlyph.$axis', fallback: large ? 18 : 16);
    return RaftButtonMetrics(
      height: height,
      paddingX: size.isIcon ? 0 : padding,
      iconStartPaddingLeft: size.isIcon ? 0 : padding - 2,
      iconEndPaddingRight: size.isIcon ? 0 : padding - 2,
      text: RaftTypeStyle(
        fontSize,
        line,
        fontWeight: t.size('type.button.weight', fallback: 700).round(),
      ),
      icon: glyph,
      gap: frame || size == RaftButtonSize.xl
          ? 8
          : t.size('space.buttonGap.$axis', fallback: 8),
      square: size.isIcon,
    );
  }
}

/// raft-ui `Button`. [uiVariant] / [uiSize] are the current Web axes; the older [variant] / [tone] / [size] /
/// [visualHeight] parameters map onto them for call sites that have not been converted.
class RaftButton extends StatelessWidget {
  const RaftButton({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
    this.glyph,
    this.busy = false,
    this.secondary = false,
    this.destructive = false,
    this.variant,
    this.tone,
    this.size,
    this.uiVariant,
    this.uiSize,
    this.visualHeight = RaftMetrics.buttonMd,
    this.physicalHeight,
    this.metricsKey,
    this.expand = false,
    this.focusNode,
    this.tooltip,
    this.semanticLabel,
    this.foreground,
    this.iconInlineStart = true,
    this.opacityCompositing = RaftOpacityCompositing.layer,
    this.leading,
    this.gap,
    this.iconInlineEnd = false,
  });

  /// Visible text. Empty with an icon renders the icon square when [uiSize] is an icon size.
  final String label;

  /// A custom leading node (a brand mark) before the label, separated by [gap] (default 8).
  final Widget? leading;
  final double? gap;

  /// Whether the icon is `data-icon="inline-start"` (the smaller start padding).
  final bool iconInlineStart;

  /// The icon follows the label (`data-icon="inline-end"`).
  final bool iconInlineEnd;

  /// Explicit caller text/icon colour; null keeps the variant's.
  final Color? foreground;
  final VoidCallback? onPressed;
  final IconData? icon;

  /// Lucide glyph; wins over [icon].
  final RaftGlyph? glyph;
  final bool busy, secondary, destructive;

  /// Legacy variant axis; mapped onto [RaftButtonVariant].
  final RaftControlVariant? variant;

  /// Legacy recipe variant (wins over [variant]).
  final RaftButtonRecipeVariant? tone;

  /// Legacy recipe size; when null it follows [visualHeight].
  final RaftButtonRecipeSize? size;

  /// 0.7.1 variant / size; win over the legacy parameters.
  final RaftButtonVariant? uiVariant;
  final RaftButtonSize? uiSize;
  final double visualHeight;

  /// A caller-owned physical height; typography still follows the size axis.
  /// Large text may grow past it, as with the normal size metrics.
  final double? physicalHeight;

  /// Component geometry/type namespace; independent of the theme identity.
  final String? metricsKey;

  /// `w-full` (stretch to the parent width; content stays centered).
  final bool expand;
  final FocusNode? focusNode;
  final String? tooltip;

  /// Explicit authored aria-label.
  final String? semanticLabel;

  /// Kept for call sites; the 0.7.1 disabled style is not an opacity.
  final RaftOpacityCompositing opacityCompositing;

  RaftButtonVariant get resolvedVariant =>
      uiVariant ??
      (tone != null
          ? RaftButtonVariant.fromRecipe(tone!)
          : RaftButtonVariant.fromControl(
              variant ??
                  (destructive
                      ? RaftControlVariant.danger
                      : secondary
                      ? RaftControlVariant.outline
                      : RaftControlVariant.accent),
            ));

  RaftButtonSize get resolvedSize =>
      uiSize ??
      (size != null
          ? RaftButtonSize.fromRecipe(size!)
          : (visualHeight <= 24
                ? RaftButtonSize.xs
                : visualHeight <= 28
                ? RaftButtonSize.sm
                : visualHeight <= 32
                ? RaftButtonSize.md
                : RaftButtonSize.lg));

  @override
  Widget build(BuildContext context) {
    final t = RaftTokens.of(context);
    final variantValue = resolvedVariant;
    final sizeValue = resolvedSize;
    final baseMetrics = RaftButtonMetrics.of(
      sizeValue,
      variantValue,
      t,
    ).forComponent(t, metricsKey);
    final metrics = physicalHeight == null
        ? baseMetrics
        : RaftButtonMetrics(
            height: physicalHeight!,
            paddingX: baseMetrics.paddingX,
            iconStartPaddingLeft: baseMetrics.iconStartPaddingLeft,
            iconEndPaddingRight: baseMetrics.iconEndPaddingRight,
            text: baseMetrics.text,
            icon: baseMetrics.icon,
            gap: baseMetrics.gap,
            square: baseMetrics.square,
          );
    final text = raftText(context, label);
    final hint = tooltip;
    final accessibleLabel =
        semanticLabel ??
        (text.isEmpty && hint != null
            ? raftText(context, hint)
            : busy
            ? text
            : null);
    return RaftInteractive(
      onPressed: onPressed,
      busy: busy,
      focusNode: focusNode,
      tooltip: tooltip,
      semanticLabel: accessibleLabel,
      builder: (context, st) {
        final disabled = onPressed == null || busy;
        final colors = RaftButtonColors.themed(
          t,
          variantValue,
          iconSize: sizeValue.isIcon,
          highContrast: MediaQuery.highContrastOf(context),
          disabled: disabled,
          overlay: (st.hovered || st.pressed) && !disabled,
        );
        final fg = foreground ?? colors.foreground;
        final inline = sizeValue == RaftButtonSize.inline;
        final iconSize = metrics.icon;
        final gapValue = gap ?? (inline ? 4.0 : metrics.gap);

        Widget? iconWidget;
        if (glyph != null) {
          iconWidget = RaftIcon(glyph!, size: iconSize, color: fg);
        } else if (icon != null) {
          iconWidget = RaftSymbol(icon!, size: iconSize, color: fg);
        }

        TextStyle labelStyle = t.scale(metrics.text, color: fg);
        if (inline) {
          final inherited = DefaultTextStyle.of(context).style;
          labelStyle = inherited.copyWith(
            color: fg,
            fontFamily: t.bodyFont,
            fontFamilyFallback: t.fontFallback,
            fontWeight: raftFontWeight(
              t.size('type.button.weight', fallback: 700),
            ),
          );
        } else if ((sizeValue == RaftButtonSize.xs ||
                sizeValue == RaftButtonSize.iconXs) &&
            t.option('button.xsLine', or: 'fixed') == 'inherited') {
          labelStyle = labelStyle.copyWith(
            height:
                DefaultTextStyle.of(context).style.height ?? kTextHeightNone,
          );
        }
        labelStyle = RaftControlTypography.of(context, labelStyle);
        if (variantValue == RaftButtonVariant.link &&
            t.option('button.linkDecoration', or: 'underline') == 'underline') {
          labelStyle = labelStyle.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: fg,
            decorationThickness: 1.5,
          );
        }

        final children = <Widget>[
          if (leading != null) ...[leading!, SizedBox(width: gapValue)],
          if (iconWidget != null && !iconInlineEnd) iconWidget,
          if (iconWidget != null && !iconInlineEnd && text.isNotEmpty)
            SizedBox(width: gapValue),
          if (text.isNotEmpty)
            Flexible(
              child: Text(
                text,
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          if (iconWidget != null && iconInlineEnd) ...[
            if (text.isNotEmpty) SizedBox(width: gapValue),
            iconWidget,
          ],
        ];
        // The label style and icon colour are inherited, like the Web `content` span: a leading slot (brand
        // mark) and the caller's own text widgets pick them up.
        Widget content = DefaultTextStyle.merge(
          style: labelStyle,
          child: IconTheme.merge(
            data: IconThemeData(color: fg, size: iconSize),
            child: Row(
              mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: children,
            ),
          ),
        );
        if (busy) {
          content = IconTheme.merge(
            data: IconThemeData(color: fg),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Visibility.maintain(visible: false, child: content),
                const RaftSpinner(),
              ],
            ),
          );
        }

        if (accessibleLabel != null) content = ExcludeSemantics(child: content);

        final start =
            iconWidget != null &&
                !iconInlineEnd &&
                iconInlineStart &&
                text.isNotEmpty
            ? metrics.iconStartPaddingLeft
            : metrics.paddingX;
        final end = iconWidget != null && iconInlineEnd && text.isNotEmpty
            ? metrics.iconEndPaddingRight
            : metrics.paddingX;
        final EdgeInsets padding = inline
            ? EdgeInsets.zero
            : metrics.square
            ? EdgeInsets.zero
            : EdgeInsets.only(
                left:
                    variantValue == RaftButtonVariant.link &&
                        t.option('button.linkPadding', or: 'none') == 'none'
                    ? 0
                    : start,
                right:
                    variantValue == RaftButtonVariant.link &&
                        t.option('button.linkPadding', or: 'none') == 'none'
                    ? 0
                    : end,
              );

        final box = RaftButtonSurface(
          variant: variantValue,
          size: sizeValue,
          metrics: metrics,
          colors: colors,
          state: st,
          disabled: disabled,
          padding: padding,
          expand: expand,
          child: content,
        );
        if (t.option('button.disabledSurface', or: 'muted') == 'opacity') {
          final opacity = busy || !disabled
              ? 1.0
              : t.size('opacity.buttonDisabled', fallback: 1);
          return switch (opacityCompositing) {
            RaftOpacityCompositing.layer => Opacity(
              opacity: opacity,
              child: box,
            ),
            RaftOpacityCompositing.alphaFilter => RaftCssOpacity(
              opacity: opacity,
              child: box,
            ),
          };
        }
        return box;
      },
    );
  }
}
