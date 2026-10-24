import 'recipe_surface.dart';

import 'package:flutter/widgets.dart';

import 'recipes/recipe_runtime.dart';
import 'tap_slop.dart';
import 'theme.dart';

/// Projects the shared dialog's measured slots onto its existing recipe.
/// The original decorations, semantic colors and text family remain intact.
RaftSlotStyle raftDialogSlot(RaftTokens t, RaftSlotStyle source, String slot) {
  final properties = {...source.properties};
  void number(String property, String name, double fallback) {
    properties[property] = CssNum(t.size(name, fallback: fallback), 'px');
  }

  void inset(String part) {
    final prefix = 'space.dialog$part';
    number('padding-left', '${prefix}Inline', source.padding.left);
    number('padding-right', '${prefix}Inline', source.padding.right);
    number('padding-top', '${prefix}Top', source.padding.top);
    number('padding-bottom', '${prefix}Bottom', source.padding.bottom);
  }

  switch (slot) {
    case 'content':
      number('padding-left', 'space.dialogContentInline', source.padding.left);
      number(
        'padding-right',
        'space.dialogContentInline',
        source.padding.right,
      );
      number('padding-top', 'space.dialogContentBlock', source.padding.top);
      number(
        'padding-bottom',
        'space.dialogContentBlock',
        source.padding.bottom,
      );
      final line = t.colors['line-dialog'] ?? t.line;
      for (final side in ['top', 'right', 'bottom', 'left']) {
        number('border-$side-width', 'stroke.dialog', source.borderWidth.top);
        properties['border-$side-style'] = const CssKeyword('solid');
        properties['border-$side-color'] = CssColor(
          line.toARGB32(),
          null,
          line,
        );
      }
      final ring = t.size('stroke.dialogRing', fallback: 0);
      if (ring > 0) {
        final shadow = source['box-shadow'];
        properties['box-shadow'] = CssList([
          CssSeq([
            const CssNum(0),
            const CssNum(0),
            const CssNum(0),
            CssNum(ring, 'px'),
            CssColor(line.toARGB32(), null, line),
          ]),
          if (shadow is CssList)
            ...shadow.items
          else if (shadow != null)
            shadow,
        ]);
      }
      number('row-gap', 'space.dialogPartGap', source.rowGap ?? 0);
      for (final corner in [
        'top-left',
        'top-right',
        'bottom-left',
        'bottom-right',
      ]) {
        number('border-$corner-radius', 'radius.dialog', 8);
      }
    case 'header':
      inset('Header');
      number('column-gap', 'space.dialogHeaderGap', source.columnGap ?? 12);
    case 'body':
      inset('Body');
    case 'footer':
      inset('Footer');
      number('column-gap', 'space.dialogFooterGap', source.columnGap ?? 12);
      number('row-gap', 'space.dialogFooterGap', source.rowGap ?? 12);
    case 'title':
      final style = source.textStyle(t.recipeTokens);
      number('font-size', 'type.dialogTitle.size', style.fontSize ?? 16);
      number(
        'line-height',
        'type.dialogTitle.line',
        (style.fontSize ?? 16) * (style.height ?? 1.5),
      );
  }
  return RaftSlotStyle(
    properties,
    source.targets,
    source.classes,
    t.recipeTokens,
  );
}

/// CSS DialogClose has negative block/end margins. Its paint and full touch
/// target extend past the smaller flex slot; the host routes those touches.
class RaftDialogCloseOutset extends StatelessWidget {
  const RaftDialogCloseOutset({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final t = RaftTokens.of(context);
    final extent = t.size('size.dialogClose', fallback: 28);
    final outset = t.size('space.dialogCloseOutset', fallback: 0);
    if (outset == 0) return SizedBox.square(dimension: extent, child: child);
    return RaftTapSlopAnchor(
      minSize: const Size.square(48),
      child: SizedBox(
        width: extent - outset,
        height: extent - outset * 2,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0,
              top: -outset,
              width: extent,
              height: extent,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
