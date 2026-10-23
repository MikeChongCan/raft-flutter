// raft-ui `Select`: trigger (`Button` outline md merged with the `select`
// recipe `trigger` slot), value / chevron icon, and the popup (`content`,
// `list`, `item`, `itemIndicator` slots) in an overlay anchored below the
// trigger.
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'design_primitives.dart';
import 'hover_region.dart';
import 'anchored_popup.dart';
import 'dismiss_scope.dart';
import 'icons.dart';
import 'localization.dart';
import 'recipe_surface.dart';
import 'raft/ui_tokens.dart';
import 'recipes/button_variants.g.dart';
import 'recipes/recipe_runtime.dart';
import 'recipes/select.g.dart';
import 'theme.dart';

/// `cn(a, b)` for two resolved slots: later declarations win (the class
/// list order raft-ui passes to tailwind-merge).
RaftSlotStyle raftMergeSlots(RaftSlotStyle a, RaftSlotStyle b) {
  final targets = <String, Map<String, CssValue>>{
    for (final e in a.targets.entries) e.key: {...e.value},
  };
  for (final e in b.targets.entries) {
    (targets[e.key] ??= {}).addAll(e.value);
  }
  return RaftSlotStyle(
    {...a.properties, ...b.properties},
    targets,
    [...a.classes, ...b.classes],
    b.tokens ?? a.tokens,
  );
}

class RaftSelectField<T> extends StatefulWidget {
  const RaftSelectField({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.label,
    this.placeholder = 'Select...',
    this.invalid = false,
    this.visualHeight = RaftMetrics.buttonMd,
    this.minimumTargetHeight,
    this.height,
  });

  /// Callsite trigger height (`SelectTrigger className="h-10"`).
  final double? height;
  final T? value;

  /// Items: `value`, `child` (the item text) and `enabled`.
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?>? onChanged;

  /// Accessible name (aria-label).
  final String? label;

  /// `SelectValue placeholder`.
  final String placeholder;
  final bool invalid;

  /// Kept for source compatibility; the trigger is the Button md box.
  final double visualHeight;
  final double? minimumTargetHeight;

  @override
  State<RaftSelectField<T>> createState() => _RaftSelectFieldState<T>();
}

class _RaftSelectFieldState<T> extends State<RaftSelectField<T>> {
  final portal = OverlayPortalController();
  final link = LayerLink();
  final anchorKey = GlobalKey();
  final triggerFocus = FocusNode();
  Size triggerSize = Size.zero;

  bool get open => portal.isShowing;

  void toggle() => setState(() => open ? portal.hide() : portal.show());

  void close() {
    if (!open) return;
    setState(portal.hide);
    triggerFocus.requestFocus();
  }

  @override
  void dispose() {
    triggerFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = RaftTokens.of(context);
    final rt = t.recipeTokens;
    final enabled = widget.onChanged != null;
    final selected = widget.items
        .where((e) => e.value == widget.value && widget.value != null)
        .firstOrNull;
    final trigger = RaftInteractive(
      onPressed: enabled ? toggle : null,
      focusNode: triggerFocus,
      semanticLabel: widget.label == null
          ? null
          : raftText(context, widget.label!),
      builder: (context, st) {
        final states = t.recipeStates(
          hovered: st.hovered,
          pressed: st.pressed,
          focusVisible: st.focusVisible,
          disabled: !enabled,
          extra: [
            if (open) 'data-popup-open',
            if (widget.invalid) 'data-invalid',
          ],
        );
        // The offset-shadow structure uses the original raised recipe; the
        // other control structures retain its ring base before token binding.
        final raised =
            t.option('press.effect', or: 'overlay') == 'offsetShadow';
        final recipeTheme = raised ? RaftRecipeTheme.brutal : t.recipeTheme;
        final button = RaftButtonRecipe.resolve(
          theme: recipeTheme,
          variant: RaftButtonRecipeVariant.outline,
          size: RaftButtonRecipeSize.md,
          states: states,
          tokens: rt,
        ).root;
        final sel = RaftSelectRecipe.resolve(
          theme: recipeTheme,
          states: states,
          tokens: rt,
        );
        final merged = raftMergeSlots(button, sel.trigger);
        final s = RaftSlotStyle(
          {
            ...merged.properties,
            'font-size': CssNum(
              t.size('type.selectValue.size', fallback: 14),
              'px',
            ),
            'line-height': const CssNum(20, 'px'),
            'color': CssVar(
              '--foreground-select',
              null,
              selected == null
                  ? 'foregroundSelectPlaceholder'
                  : !enabled
                  ? 'foregroundSelectDisabled'
                  : 'foregroundSelect',
            ),
            'background-color': CssVar(
              '--layer-select',
              null,
              enabled ? 'layerSelect' : 'layerSelectDisabled',
            ),
            if (!enabled)
              'opacity': CssNum(t.size('opacity.selectDisabled', fallback: .4)),
            // Flat controls have no inherited inset sheen / outer ring. Raised
            // controls keep their original shadow, independently of color.
            if (!raised && t.option('control.sheen', or: 'none') == 'none')
              'box-shadow': const CssKeyword('none'),
          },
          merged.targets,
          merged.classes,
          merged.tokens,
        );
        return RaftRecipeBox(
          style: s,
          tokens: rt,
          // `w-full` (brutal trigger slot); elegant stays content-sized but
          // these callers stretch it in a column.
          width: double.infinity,
          height:
              widget.height ??
              t.size('size.selectTrigger', fallback: s.height ?? 32),
          padding: EdgeInsets.fromLTRB(
            t.size('space.selectTriggerStart', fallback: 12),
            0,
            12,
            0,
          ),
          decorationOverride: (d) => d.copyWith(
            boxShadow:
                !raised &&
                    t.option('control.sheen', or: 'none') == 'none' &&
                    st.focusVisible
                ? [
                    for (final layer in t.ui.focusRing.layers)
                      BoxShadow(color: layer.color, spreadRadius: layer.spread),
                  ]
                : d.boxShadow,
            border: t.option('control.edge', or: 'ring') == 'inkBorder'
                ? Border.all(
                    color:
                        t.colors[widget.invalid
                            ? 'danger-strong'
                            : enabled
                            ? 'line-select'
                            : 'line-select-disabled']!,
                    // CSS at the source capture DPR floors its authored 1.5.
                    width: t
                        .size('stroke.control', fallback: 1)
                        .floorToDouble(),
                  )
                : d.border,
            borderRadius: BorderRadius.circular(
              t.size('radius.control', fallback: 6),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Builder(
                  builder: (context) => DefaultTextStyle.merge(
                    style: TextStyle(
                      fontWeight:
                          FontWeight.values[((selected == null
                                          ? t.size(
                                              'type.selectPlaceholder.weight',
                                              fallback: 500,
                                            )
                                          : t.size(
                                              'type.selectValue.weight',
                                              fallback: 500,
                                            )) /
                                      100 -
                                  1)
                              .round()
                              .clamp(0, 8)],
                    ),
                    maxLines: 1,
                    softWrap: false,
                    overflow: TextOverflow.clip,
                    child: selected?.child ?? Text(widget.placeholder),
                  ),
                ),
              ),
              SizedBox(width: sel.trigger.columnGap ?? 6),
              Opacity(
                opacity: sel.icon.opacity ?? 1,
                child: Builder(
                  builder: (context) => RaftIcon(
                    RaftGlyph.chevronDown,
                    size: t.size('size.selectChevron', fallback: 14),
                    strokeWidth: t.size('stroke.selectChevron', fallback: 1.5),
                    color: DefaultTextStyle.of(context).style.color,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
    return CompositedTransformTarget(
      key: anchorKey,
      link: link,
      child: OverlayPortal(
        controller: portal,
        overlayChildBuilder: (context) =>
            RaftBackDismiss(onDismiss: close, child: _popup(context, t)),
        child: LayoutBuilder(
          builder: (context, constraints) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              final box = context.findRenderObject() as RenderBox?;
              if (box != null && box.hasSize) triggerSize = box.size;
            });
            return trigger;
          },
        ),
      ),
    );
  }

  Widget _popup(BuildContext context, RaftTokens t) {
    final rt = t.recipeTokens;
    final sel = RaftSelectRecipe.resolve(
      theme: t.recipeTheme,
      states: t.recipeStates(),
      tokens: rt,
    );
    final items = [
      for (var i = 0; i < widget.items.length; i++)
        _SelectItem<T>(
          item: widget.items[i],
          selected: widget.items[i].value == widget.value,
          last: i == widget.items.length - 1,
          autofocus:
              widget.items[i].value == widget.value ||
              (widget.value == null && i == 0),
          onSelect: () {
            widget.onChanged?.call(widget.items[i].value);
            close();
          },
        ),
    ];
    return Positioned.fill(
      child: TapRegion(
        onTapOutside: (_) => close(),
        // Escape closes even while focus is still on the trigger.
        child: RaftDismissScope(
          onDismiss: close,
          takeFocus: true,
          child: Stack(
            children: [
              RaftAnchoredPopup(
                anchorKey: anchorKey,
                movement: Scrollable.maybeOf(this.context)?.position,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: triggerSize.width,
                    maxWidth: triggerSize.width,
                  ),
                  child: RaftRecipeBox(
                    style: sel.content,
                    tokens: rt,
                    clip: true,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: sel.list.maxHeight ?? 256,
                      ),
                      child: FocusTraversalGroup(
                        child: SingleChildScrollView(
                          padding: sel.list.padding,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              for (var i = 0; i < items.length; i++) ...[
                                if (i > 0)
                                  SizedBox(height: sel.list.rowGap ?? 0),
                                items[i],
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SelectItem<T> extends StatefulWidget {
  const _SelectItem({
    super.key,
    required this.item,
    required this.selected,
    required this.last,
    required this.autofocus,
    required this.onSelect,
  });
  final DropdownMenuItem<T> item;
  final bool selected, last, autofocus;
  final VoidCallback onSelect;
  @override
  State<_SelectItem<T>> createState() => _SelectItemState<T>();
}

class _SelectItemState<T> extends State<_SelectItem<T>> {
  bool hovered = false, highlighted = false;

  @override
  Widget build(BuildContext context) {
    final t = RaftTokens.of(context);
    final rt = t.recipeTokens;
    final enabled = widget.item.enabled;
    final sel = RaftSelectRecipe.resolve(
      theme: t.recipeTheme,
      states: t.recipeStates(
        hovered: hovered && enabled && RaftHoverScope.of(context),
        extra: [
          if (!enabled) 'data-disabled',
          if (widget.selected) 'data-selected',
          if (highlighted && enabled) 'data-highlighted',
          if (widget.last) 'last-child',
        ],
      ),
      tokens: rt,
    );
    return Semantics(
      selected: widget.selected,
      enabled: enabled,
      button: true,
      child: FocusableActionDetector(
        enabled: enabled,
        autofocus: widget.autofocus && enabled,
        onShowFocusHighlight: (v) => setState(() => highlighted = v),
        onShowHoverHighlight: (v) =>
            setState(() => hovered = v && RaftHoverScope.of(context)),
        mouseCursor: SystemMouseCursors.basic,
        shortcuts: const {
          SingleActivator(LogicalKeyboardKey.arrowDown): NextFocusIntent(),
          SingleActivator(LogicalKeyboardKey.arrowUp): PreviousFocusIntent(),
        },
        actions: {
          ActivateIntent: CallbackAction<ActivateIntent>(
            onInvoke: (_) {
              widget.onSelect();
              return null;
            },
          ),
        },
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: enabled ? widget.onSelect : null,
          child: RaftRecipeBox(
            style: sel.item,
            tokens: rt,
            child: Row(
              children: [
                Expanded(
                  child: DefaultTextStyle.merge(
                    maxLines: 1,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    child: widget.item.child,
                  ),
                ),
                if (widget.selected) ...[
                  SizedBox(width: sel.item.columnGap ?? 8),
                  RaftIcon(
                    RaftGlyph.check,
                    size: 14,
                    color: sel.itemIndicator.color?.resolve(rt),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
