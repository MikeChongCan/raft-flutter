// The frozen Elegant and Brutal paint of the text inputs (a57b9dab): one builder per call-shape the pre-theme
// build drew differently. The Raft look never reaches this file: `RaftTextInput` and `RaftTextarea` paint it from
// the generated recipes. Delete the whole file with the legacy looks; do not add to it.
part of 'form_controls.dart';

RaftRecipeStates _frozenStates(RaftTokens t, [Set<String> flags = const {}]) =>
    RaftRecipeStates({...flags, if (t.dark) RaftRecipeStates.dark});

/// Tailwind preflight `::placeholder { color: color-mix(in oklab, currentcolor 50%, transparent) }`.
Color _frozenPlaceholder(Color current) =>
    current.withValues(alpha: current.a * .5);

TextStyle _frozenSlotText(RaftTokens t, RaftSlotStyle s) {
  final tokens = RaftRecipeTokens(t);
  return RaftTypography.heading(t, size: 14, line: 20, weight: FontWeight.w400)
      .merge(s.textStyle(tokens))
      .copyWith(fontVariations: const [], fontFamilyFallback: t.fontFallback);
}

extension _FrozenTextInput on _RaftTextInputState {
  /// The pre-theme looks painted `RaftTextInput` with the Raft tokens (`t.ui`) in a hand-built box.
  Widget buildFrozenField(BuildContext context, RaftTokens t) {
    final ui = t.ui;
    final focused = focus.hasFocus;
    final disabled = !widget.enabled;
    final disabledInk = raftChromeBlend(ui.foregroundDisabled, ui.fillMuted);
    final textStyle = t
        .scale(
          RaftTypeScale.body,
          color: disabled ? disabledInk : ui.foreground,
        )
        .merge(widget.style);
    final placeholder = disabled ? disabledInk : ui.foregroundHint;
    final field = _editable(textStyle, placeholder);
    final box = RaftCssBox(
      radius: 8,
      fill: disabled ? ui.fillMuted : ui.layerCard,
      borderWidth: raftControlBorderPx(context, 1.5),
      borderColor: disabled
          ? raftChromeBlend(ui.lineHairline, ui.fillMuted)
          : widget.invalid
          ? ui['danger-strong']
          : ui.lineStrong,
      rings: [
        if (focused && !disabled)
          for (final layer in ui.focusRing.layers)
            RaftRing(layer.spread, layer.color),
      ],
      height: widget.padding == null ? 44 : null,
      padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 12),
      // An `<input>` centres its line in a box taller than the line; a TextField only fills its own line.
      alignment: Alignment.centerLeft,
      child: SizedBox(width: double.infinity, child: field),
    );
    return Semantics(label: widget.semanticLabel, child: hoverRegion(box));
  }

  /// Dialog inputs: a Material text field dressed by the theme's input decoration inside the shared field frame.
  Widget buildFrozenDialog(BuildContext context, RaftTokens t) {
    final base = Theme.of(context).inputDecorationTheme.contentPadding;
    final resolved = base?.resolve(Directionality.of(context));
    final style =
        (widget.enabled
                ? t.fieldStyle
                : t.fieldStyle.copyWith(color: t.colors['foreground-disabled']))
            .copyWith(
              fontFamily: widget.mono ? t.monoFont : null,
              fontSize: widget.mono ? 12 : null,
              height: widget.mono ? 16 / 12 : null,
            );
    Widget field = TextField(
      contextMenuBuilder: RaftTextSelectionToolbar.editableText,
      autofillHints: null,
      key: widget.fieldKey,
      controller: controller,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      autofocus: widget.autofocus,
      obscureText: widget.obscureText,
      // `disabled:` text: elegant foreground-disabled; brutal dims the whole Textarea, not the Input.
      style: style,
      minLines: 1,
      maxLines: 1,
      onSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        hintText: widget.hintText,
        // `pl-9` replaces the input's left padding when a glyph leads.
        contentPadding: widget.leadingGlyph == null || resolved == null
            ? null
            : resolved.copyWith(left: resolved.left - 12 + 36),
      ),
    );
    if (widget.leadingGlyph != null) {
      field = Stack(
        alignment: Alignment.centerLeft,
        children: [
          field,
          Positioned(
            left: 12 + t.border, // left-3 inside the border box
            child: IgnorePointer(
              child: RaftIcon(
                widget.leadingGlyph!,
                size: 14,
                color: t.colors['foreground-muted'],
              ),
            ),
          ),
        ],
      );
    }
    return RaftFieldSurface(child: field);
  }

  /// Agent forms, the forward dialog's search and the combobox input: the `input` recipe in a recipe box.
  Widget buildFrozenRecipe(BuildContext context, RaftTokens t) {
    final tokens = RaftRecipeTokens(t);
    final focused = focus.hasFocus;
    if (widget.leadingGlyph != null) return _frozenRecipeGlyph(t, tokens, focused);
    final states = _frozenStates(t, {
      if (widget.invalid) 'data-invalid',
      if (focused) RaftRecipeStates.focus,
      if (focused) RaftRecipeStates.focusVisible,
      if (!widget.enabled) RaftRecipeStates.disabled,
    });
    final root = RaftInputRecipe.resolve(
      theme: t.recipeTheme,
      states: states,
      tokens: tokens,
    ).root;
    final style = root
        .textStyle(tokens, currentColor: t.ink)
        .copyWith(
          color: root.color?.resolve(tokens) ?? t.ink,
          leadingDistribution: TextLeadingDistribution.even,
        );
    // Tailwind preflight `::placeholder { color: color-mix(currentcolor 50%) }` unless the recipe styles it.
    final placeholderColor =
        root.target('::placeholder')?.color?.resolve(tokens) ??
        style.color!.withValues(alpha: .5);
    final pad = root.padding;
    Widget editor = TextField(
      contextMenuBuilder: RaftTextSelectionToolbar.editableText,
      autofillHints: null,
      controller: controller,
      focusNode: focus,
      readOnly: widget.readOnly,
      enabled: widget.enabled,
      obscureText: widget.obscureText,
      obscuringCharacter: '•',
      maxLines: 1,
      maxLength: widget.maxLength,
      textAlignVertical: pad.vertical > 0
          ? TextAlignVertical.top
          : TextAlignVertical.center,
      style: style,
      cursorColor: style.color,
      cursorWidth: 1,
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      // Bare editable text: every frame/border comes from the recipe box.
      decoration: InputDecoration(
        isCollapsed: true,
        isDense: true,
        filled: false,
        contentPadding: EdgeInsets.zero,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        counterText: '',
        hintText: widget.hintText,
        hintStyle: style.copyWith(color: placeholderColor),
      ),
      buildCounter:
          (_, {required currentLength, required isFocused, maxLength}) => null,
    );
    if (widget.onKeyEvent != null) {
      editor = Focus(
        canRequestFocus: false,
        onKeyEvent: widget.onKeyEvent,
        child: editor,
      );
    }
    return Semantics(
      label: widget.semanticLabel,
      textField: true,
      child: RaftRecipeBox(
        style: root,
        tokens: tokens,
        height: t.size('size.fieldInput', fallback: 38),
        // The editor owns its typography, but single-line input still grows with its text.
        growWithText: true,
        alignment: pad.vertical == 0 ? Alignment.centerLeft : null,
        applyText: false,
        child: widget.trailing == null
            ? editor
            : Row(
                children: [
                  Expanded(child: editor),
                  const SizedBox(width: 2 * _tw),
                  widget.trailing!,
                ],
              ),
      ),
    );
  }

  /// `Input` with `pl-9` and the absolutely placed 14px icon at `left-3` (the forward dialog's search).
  Widget _frozenRecipeGlyph(RaftTokens t, RaftTokenResolver resolver, bool focused) {
    // Same state set as RaftInput: the dark flag selects the `dark:` layers and `autoFocus` exposes the focus ring.
    final s = RaftInputRecipe.resolve(
      theme: t.recipeTheme,
      states: t.recipeStates(
        extra: [
          if (focused) RaftRecipeStates.focus,
          if (focused) RaftRecipeStates.focusVisible,
        ],
      ),
      tokens: resolver,
    ).root;
    final text = s
        .textStyle(resolver)
        .copyWith(
          color: t.colors['foreground'],
          leadingDistribution: TextLeadingDistribution.even,
        );
    final border = s.borderWidth;
    return RaftRecipeBox(
      style: s,
      tokens: resolver,
      padding: EdgeInsets.zero,
      applyText: false,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          TextField(
            contextMenuBuilder: RaftTextSelectionToolbar.editableText,
            autofillHints: null,
            controller: controller,
            focusNode: focus,
            onChanged: widget.onChanged,
            style: text,
            cursorColor: t.strong,
            decoration: InputDecoration(
              isCollapsed: true,
              filled: false,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: text.copyWith(
                color: t.colors['foreground-placeholder'],
              ),
              contentPadding: EdgeInsets.fromLTRB(
                36,
                s.padding.top,
                s.padding.right,
                s.padding.bottom,
              ),
            ),
          ),
          Positioned(
            left: 12 - border.left,
            child: IgnorePointer(
              child: RaftIcon(
                widget.leadingGlyph!,
                size: 14,
                color: t.colors['foreground-muted'],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Settings forms: the `input` recipe as a plain container with the callsite `text-sm` and `h-*`.
  Widget buildFrozenSettings(BuildContext context, RaftTokens t) {
    final tokens = RaftRecipeTokens(t);
    final focused = focus.hasFocus;
    final s = RaftInputRecipe.resolve(
      theme: raftRecipeTheme(t),
      states: RaftRecipeStates({
        if (!widget.enabled) RaftRecipeStates.disabled,
        if (focused) RaftRecipeStates.focus,
        if (t.dark) RaftRecipeStates.dark,
      }),
      tokens: tokens,
    ).root;
    // Callsite `text-sm`.
    var text = widget.legacy == RaftLegacyInput.settingsPlain
        ? _frozenSlotText(t, s)
        : _frozenSlotText(t, s).copyWith(fontSize: 14, height: 20 / 14);
    if (widget.mono) text = text.copyWith(fontFamily: t.monoFont);
    // A fixed box height is a minimum once the text is larger than the default: the field grows with its text.
    final grows = widget.height != null && RaftScaled.grows(context);
    final field = Container(
      height: grows ? null : widget.height,
      constraints: grows ? BoxConstraints(minHeight: widget.height!) : null,
      alignment: widget.height == null ? null : Alignment.centerLeft,
      decoration: s.decoration(tokens),
      padding: widget.padding ?? s.padding,
      child: TextField(
        contextMenuBuilder: RaftTextSelectionToolbar.editableText,
        autofillHints: null,
        key: widget.fieldKey,
        controller: controller,
        focusNode: focus,
        autofocus: widget.autofocus,
        enabled: widget.enabled,
        readOnly: widget.readOnly,
        obscureText: widget.obscureText,
        enableSuggestions: !widget.obscureText,
        autocorrect: !widget.obscureText,
        keyboardType:
            widget.keyboardType ??
            (widget.numeric ? TextInputType.number : null),
        inputFormatters: [
          if (widget.numeric) FilteringTextInputFormatter.digitsOnly,
          ...?widget.inputFormatters,
          if (widget.maxLength != null)
            LengthLimitingTextInputFormatter(widget.maxLength),
        ],
        textCapitalization: widget.upperCase
            ? TextCapitalization.characters
            : TextCapitalization.none,
        style: text,
        cursorColor: text.color ?? t.strong,
        onChanged: widget.onChanged,
        onSubmitted: widget.onSubmitted,
        decoration: _bare(
          hintText: widget.hintText,
          hintStyle: text.copyWith(
            color: _frozenPlaceholder(text.color ?? t.strong),
          ),
        ),
      ),
    );
    // `disabled:opacity-*` lives on the recipe root.
    return widget.enabled
        ? field
        : Opacity(opacity: s.opacity ?? .6, child: field);
  }
}

extension _FrozenTextarea on _RaftTextareaState {
  /// Dialog textareas: a Material multi-line field dressed by the theme's input decoration, `min-h-24`.
  Widget buildFrozenDialog(BuildContext context, RaftTokens t) {
    final base = Theme.of(context).inputDecorationTheme.contentPadding;
    final resolved = base?.resolve(Directionality.of(context));
    final style =
        (widget.enabled
                ? t.fieldStyle
                : t.fieldStyle.copyWith(color: t.colors['foreground-disabled']))
            .copyWith(
              fontFamily: widget.mono ? t.monoFont : null,
              fontSize: widget.mono ? 12 : null,
              height: widget.mono ? 16 / 12 : null,
            );
    // Above the default text size a multi-line field is a minimum height that grows with the text it holds
    // (its box stays at least 96px tall), rather than a fixed 96px viewport onto it.
    final growing = RaftScaled.grows(context);
    var minLines = 1;
    if (growing) {
      final line =
          MediaQuery.textScalerOf(context).scale(style.fontSize ?? 14) *
          (style.height ?? 1.25);
      final chrome = (resolved?.vertical ?? 24) + 2 * t.border;
      minLines = math.max(1, ((96 - chrome) / line).ceil());
    }
    Widget field = TextField(
      contextMenuBuilder: RaftTextSelectionToolbar.editableText,
      autofillHints: null,
      key: widget.fieldKey,
      controller: controller,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      autofocus: widget.autofocus,
      style: style,
      minLines: growing ? minLines : null,
      maxLines: null,
      expands: !growing,
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(hintText: widget.hintText),
    );
    if (!growing) field = SizedBox(height: 96, child: field);
    return RaftFieldSurface(child: field);
  }

  /// Agent forms: the `textarea` recipe in a recipe box, `rows` lines high.
  Widget buildFrozenRecipe(BuildContext context, RaftTokens t) {
    final tokens = RaftRecipeTokens(t);
    final states = _frozenStates(t, {
      if (widget.invalid) 'data-invalid',
      if (focus.hasFocus) RaftRecipeStates.focus,
      if (focus.hasFocus) RaftRecipeStates.focusVisible,
      if (!widget.enabled) RaftRecipeStates.disabled,
    });
    final root = RaftTextareaRecipe.resolve(
      theme: t.recipeTheme,
      states: states,
      tokens: tokens,
    ).root;
    final style = root
        .textStyle(tokens, currentColor: t.ink)
        .copyWith(
          color: root.color?.resolve(tokens) ?? t.ink,
          leadingDistribution: TextLeadingDistribution.even,
        );
    // Tailwind preflight `::placeholder { color: color-mix(currentcolor 50%) }` unless the recipe styles it.
    final placeholderColor =
        root.target('::placeholder')?.color?.resolve(tokens) ??
        style.color!.withValues(alpha: .5);
    final lineHeight = (style.fontSize ?? 14) * (style.height ?? 1);
    final pad = root.padding;
    final border = root.borderWidth;
    final minHeight = [
      root.minHeight ?? 0,
      widget.rows * lineHeight + pad.vertical + border.vertical,
    ].reduce((a, b) => a > b ? a : b);
    final editor = TextField(
      contextMenuBuilder: RaftTextSelectionToolbar.editableText,
      autofillHints: null,
      controller: controller,
      focusNode: focus,
      readOnly: widget.readOnly,
      enabled: widget.enabled,
      maxLines: null,
      expands: true,
      maxLength: widget.maxLength,
      textAlignVertical: TextAlignVertical.top,
      style: style,
      cursorColor: style.color,
      cursorWidth: 1,
      onChanged: widget.onChanged,
      // Bare editable text: every frame/border comes from the recipe box.
      decoration: InputDecoration(
        isCollapsed: true,
        isDense: true,
        filled: false,
        contentPadding: EdgeInsets.zero,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        counterText: '',
        hintText: widget.hintText,
        hintStyle: style.copyWith(color: placeholderColor),
      ),
      buildCounter:
          (_, {required currentLength, required isFocused, maxLength}) => null,
    );
    return Semantics(
      label: widget.semanticLabel,
      textField: true,
      child: RaftRecipeBox(
        style: root,
        tokens: tokens,
        height: minHeight,
        growWithText: false,
        applyText: false,
        child: editor,
      ),
    );
  }

  /// Settings forms: the `textarea` recipe as a plain container, `min-h-*` and growing.
  Widget buildFrozenSettings(BuildContext context, RaftTokens t) {
    final tokens = RaftRecipeTokens(t);
    final s = RaftTextareaRecipe.resolve(
      theme: raftRecipeTheme(t),
      states: RaftRecipeStates({
        if (focus.hasFocus) RaftRecipeStates.focus,
        if (t.dark) RaftRecipeStates.dark,
      }),
      tokens: tokens,
    ).root;
    // Callsite `text-sm leading-relaxed`.
    final recipeText = widget.textStep == null;
    final text = recipeText
        ? _frozenSlotText(t, s)
        : _frozenSlotText(
            t,
            s,
          ).copyWith(fontSize: 14, height: widget.lineHeight ?? 1.625);
    return Container(
      constraints: BoxConstraints(minHeight: widget.minHeight ?? 64),
      decoration: s.decoration(tokens),
      padding: s.padding,
      child: TextField(
        contextMenuBuilder: RaftTextSelectionToolbar.editableText,
        key: widget.fieldKey,
        controller: controller,
        focusNode: focus,
        autofocus: widget.autofocus,
        style: text,
        minLines: 1,
        maxLines: null,
        maxLength: widget.maxLength,
        buildCounter:
            (_, {required currentLength, required isFocused, maxLength}) =>
                null,
        cursorColor: text.color ?? t.strong,
        onChanged: widget.onChanged,
        decoration: _bare(
          hintText: widget.hintText,
          hintStyle: text.copyWith(
            color: _frozenPlaceholder(text.color ?? t.strong),
          ),
        ),
      ),
    );
  }
}
