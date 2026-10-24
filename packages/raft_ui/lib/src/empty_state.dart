import 'package:flutter/material.dart';

import 'icons.dart';
import 'panel_layout.dart' show RaftCssText;
import 'theme.dart';

/// Centered empty content. Semantic copy belongs to the caller; visual values
/// and the default icon renderer belong to the theme pack.
class RaftEmptyState extends StatelessWidget {
  const RaftEmptyState({
    super.key,
    required this.title,
    required this.detail,
    IconData? icon,
    this.glyph,
    this.action,
  }) : icon = icon ?? Icons.forum_outlined,
       _defaultIcon = icon == null;

  final String title, detail;
  final IconData icon;
  final bool _defaultIcon;

  /// Lucide glyph; wins over [icon].
  final RaftGlyph? glyph;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final t = RaftTokens.of(context);
    final css = t.option('emptyState.textLayout', or: 'css') == 'css';
    final titleBase = Theme.of(context).textTheme.titleLarge!;
    final bodyBase = DefaultTextStyle.of(context).style;
    final titleSize = t.size('type.emptyTitle.size', fallback: 17);
    final bodySize = t.size('type.emptyBody.size', fallback: 14);
    final titleStyle = titleBase.copyWith(
      fontFamily: t.fontFamily('font.emptyTitle'),
      fontSize: titleSize,
      height: t.size('type.emptyTitle.line', fallback: 22) / titleSize,
      color: t.colors['foreground-empty-title'] ?? t.muted,
    );
    final bodyStyle = bodyBase.copyWith(
      fontSize: bodySize,
      height: t.size('type.emptyBody.line', fallback: 20) / bodySize,
      color: t.colors['foreground-empty-body'] ?? t.muted,
    );
    Widget text(String value, TextStyle style) => css
        ? RaftCssText(value, style: style, textAlign: TextAlign.center)
        : Text(value, style: style, textAlign: TextAlign.center);
    final size = t.size('size.emptyGlyph', fallback: 36);
    final iconColor = t.colors['foreground-empty-icon'] ?? t.strong;
    final effectiveGlyph =
        glyph ??
        (_defaultIcon &&
                t.option('emptyState.defaultGlyph', or: 'messageSquare') ==
                    'messageSquare'
            ? RaftGlyph.messageSquare
            : null);
    final contentMax = t.size('size.emptyContentMax', fallback: 384);
    final descriptionMax = t.size('size.emptyDescriptionMax', fallback: 300);
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: t.size('space.emptyInline', fallback: 24),
          vertical: t.size('space.emptyBlock', fallback: 48),
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: contentMax > 0 ? contentMax : double.infinity,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (effectiveGlyph != null)
                RaftIcon(effectiveGlyph, size: size, color: iconColor)
              else
                Icon(icon, size: size, color: iconColor),
              SizedBox(height: t.size('space.emptyIconAfter', fallback: 16)),
              text(title, titleStyle),
              const SizedBox(height: 8),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: descriptionMax > 0
                      ? descriptionMax
                      : double.infinity,
                ),
                child: text(detail, bodyStyle),
              ),
              if (action != null)
                Padding(
                  padding: EdgeInsets.only(
                    top: t.size('space.emptyActionBefore', fallback: 20),
                  ),
                  child: action,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
