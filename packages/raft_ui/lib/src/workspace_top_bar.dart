import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'design_primitives.dart';
import 'icons.dart';
import 'interaction.dart';
import 'localization.dart';
import 'raft/css_box.dart' show raftControlBorderPx;
import 'shortcut_platform.dart';
import 'status_bar.dart';
import 'tap_slop.dart';
import 'text_scaling.dart';
import 'theme.dart';

/// MainLayout's browser chrome policy. Native desktop windows own their title
/// bar; a browser or a tablet without that chrome uses the workspace bar.
bool raftShowsWorkspaceTopBar({
  required RaftTokens tokens,
  required double width,
  required bool nativeWindowChrome,
}) =>
    tokens.option('shell.browserTopBar', or: 'hidden') == 'shown' &&
    width >= RaftLayoutMetrics.desktopBreakpoint &&
    !nativeWindowChrome;

/// The browser's 48px frame row. The two side regions have equal widths, so
/// the search trigger remains centred on the window while workspace names vary.
class RaftWorkspaceTopBar extends StatelessWidget {
  const RaftWorkspaceTopBar({
    super.key,
    required this.workspace,
    required this.onSearch,
    this.trailing = const [],
    this.searchKey,
  });
  final Widget workspace;
  final VoidCallback onSearch;
  final List<Widget> trailing;

  /// Lets the host publish the real search field bounds to its overlay.
  final Key? searchKey;

  @override
  Widget build(BuildContext context) {
    final t = RaftTokens.of(context);
    final width = MediaQuery.sizeOf(context).width;
    return RaftChrome(
      child: RaftTapSlopHost(
        child: RaftStatusBarSource(
          color: t.colors['layer-workspace-rail']!,
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              color: t.colors['layer-workspace-rail'],
              border: Border(
                bottom: BorderSide(color: t.colors['line-workspace-rail']!),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: workspace,
                  ),
                ),
                SizedBox(
                  width: (width * .32).clamp(360.0, math.min(520.0, width)),
                  child: RaftWorkspaceSearchTrigger(
                    key: searchKey,
                    onPressed: onSearch,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      spacing: 4,
                      children: trailing,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// SearchTrigger is a button drawn as a field; opening it uses the application's
/// existing global-search controller rather than a second editable search.
class RaftWorkspaceSearchTrigger extends StatelessWidget {
  const RaftWorkspaceSearchTrigger({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final t = RaftTokens.of(context);
    final control = RaftControl(
      key: const Key('topbar-search'),
      recipe: _WorkspaceSearchRecipe(t, raftControlBorderPx(context, 1.5)),
      visualHeight: 36,
      minimumTargetSize: 36,
      semanticLabel: raftText(context, 'Search'),
      onPressed: onPressed,
      child: Row(
        children: [
          const RaftIcon(RaftGlyph.search, size: 18, strokeWidth: 2),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              raftText(context, 'Search'),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (RaftInteraction.of(context).pointer)
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: t.colors['line-hairline']!),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  globalSearchShortcutLabel(),
                  style: RaftTypography.mono(
                    t,
                    size: 12,
                    line: 16,
                    color: t.colors['foreground-hint'],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
    return RaftInteraction.of(context).touch
        ? RaftTapSlopAnchor(
            minSize: const Size.square(RaftMetrics.touchTarget),
            child: control,
          )
        : control;
  }
}

class _WorkspaceSearchRecipe extends RaftControlRecipe {
  const _WorkspaceSearchRecipe(super.tokens, this.usedBorder);
  final double usedBorder;
  @override
  bool get transformsOnInteraction => false;
  @override
  Gradient? get overlayGradient => null;
  @override
  double get insetHighlightAlpha => 0;
  @override
  Color get background => tokens.colors['layer-card']!;
  @override
  Color get foreground => tokens.colors['foreground-hint']!;
  @override
  EdgeInsets get padding => const EdgeInsets.symmetric(horizontal: 12);
  @override
  BorderRadius get radius => BorderRadius.circular(tokens.radius);
  @override
  BorderSide side({bool hovered = false}) =>
      BorderSide(color: tokens.colors['line-strong']!, width: usedBorder);
  @override
  List<BoxShadow> shadows({
    bool hovered = false,
    bool pressed = false,
    bool focused = false,
  }) => const [];
  @override
  TextStyle get textStyle =>
      RaftTypography.body(tokens, size: 16, line: 24, weight: FontWeight.w400);
}
