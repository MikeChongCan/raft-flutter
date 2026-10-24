import 'recipe_surface.dart';
import 'recipes/banner.g.dart';
import 'recipes/recipe_runtime.dart';
import 'theme.dart';

RaftBannerRecipeStyle raftBannerSlots(
  RaftTokens t,
  RaftBannerRecipeStyle source,
  RaftBannerRecipeSize size,
  RaftBannerRecipeStatus status,
) {
  final foreground = t.colors['foreground-banner-body'] ?? t.muted;
  final desc = {
    ...source.description.properties,
    'color': CssColor(foreground.toARGB32(), null, foreground),
  };
  if (size != RaftBannerRecipeSize.md)
    return RaftBannerRecipeStyle(
      root: source.root,
      title: source.title,
      description: RaftSlotStyle(
        desc,
        source.description.targets,
        source.description.classes,
        t.recipeTokens,
      ),
      action: source.action,
    );
  desc['font-size'] = CssNum(
    t.size('type.bannerBody.size', fallback: 13),
    'px',
  );
  desc['line-height'] = CssNum(
    t.size('type.bannerBody.line', fallback: 16),
    'px',
  );
  final root = {...source.root.properties};
  final color = t.colors['line-banner'] ?? t.line;
  final border = t.size('stroke.bannerBorder', fallback: 0);
  final ring = t.size('stroke.bannerRing', fallback: 0);
  final fill =
      t.colors[switch (status) {
        RaftBannerRecipeStatus.destructive => 'layer-banner-destructive',
        RaftBannerRecipeStatus.warning => 'layer-banner-warning',
        RaftBannerRecipeStatus.info => 'layer-banner-info',
        RaftBannerRecipeStatus.success => 'layer-banner-success',
        _ => 'fill-muted',
      }]!;
  root['background-color'] = CssColor(fill.toARGB32(), null, fill);
  for (final side in ['top', 'right', 'bottom', 'left']) {
    root['border-$side-width'] = CssNum(border, 'px');
    root['border-$side-style'] = const CssKeyword('solid');
    root['border-$side-color'] = CssColor(color.toARGB32(), null, color);
    root['padding-$side'] = CssNum(
      side == 'left' || side == 'right'
          ? t.size('space.bannerInline', fallback: 12)
          : 12,
      'px',
    );
  }
  for (final corner in [
    'top-left',
    'top-right',
    'bottom-left',
    'bottom-right',
  ]) {
    root['border-$corner-radius'] = CssNum(
      t.size('radius.banner', fallback: 4),
      'px',
    );
  }
  root['column-gap'] = CssNum(t.size('space.bannerGap', fallback: 8), 'px');
  root['font-size'] = CssNum(
    t.size('type.bannerBody.size', fallback: 13),
    'px',
  );
  root['line-height'] = const CssNum(20, 'px');
  root['letter-spacing'] = CssNum(
    t.size('type.bannerBody.tracking', fallback: 0),
    'px',
  );
  if (ring > 0)
    root['box-shadow'] = CssSeq([
      const CssKeyword('inset'),
      const CssNum(0),
      const CssNum(0),
      const CssNum(0),
      CssNum(ring, 'px'),
      CssColor(color.toARGB32(), null, color),
    ]);
  return RaftBannerRecipeStyle(
    root: RaftSlotStyle(
      root,
      source.root.targets,
      source.root.classes,
      t.recipeTokens,
    ),
    title: source.title,
    description: RaftSlotStyle(
      desc,
      source.description.targets,
      source.description.classes,
      t.recipeTokens,
    ),
    action: source.action,
  );
}
