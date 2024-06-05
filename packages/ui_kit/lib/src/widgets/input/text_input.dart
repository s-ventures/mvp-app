import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_kit/ui_kit.dart';

enum TextInputSize {
  large(24),
  medium(16),
  small(12),
  extraSmall(8);

  const TextInputSize(this.verticalPadding);

  final double verticalPadding;
}

class TextInput extends StatefulWidget {
  const TextInput({
    this.controller,
    this.size = TextInputSize.medium,
    this.initialValue,
    this.labelText,
    this.hintText,
    this.suffixText,
    this.helperText,
    this.keyboardType,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.onTap,
    this.onTapOutside,
    this.floatingLabelBehavior = FloatingLabelBehavior.auto,
    this.suffixIcon,
    this.focusNode,
    this.prefix,
    this.prefixIcon,
    this.readOnly = false,
    this.obscureText = false,
    this.autofillHints = const <String>[],
    this.onChanged,
    this.border,
    this.borderRadius,
    this.enabledBorder = true,
    this.maxLength,
    this.minLines,
    this.onEditingComplete,
    this.maxLines,
    this.counter,
    this.hintStyle,
    this.style,
    this.alignLabelWithHint,
    this.errorText,
    this.contentPadding,
    this.autofocus = false,
    this.enabled = true,
    this.suffixConstraints,
    this.textAlign = TextAlign.start,
    this.prefixConstraints,
    this.fillColor,
    super.key,
  });

  final TextEditingController? controller;
  final TextInputSize size;
  final String? labelText;
  final String? hintText;
  final String? suffixText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final VoidCallback? onTapOutside;
  final VoidCallback? onTap;
  final VoidCallback? onEditingComplete;
  final FloatingLabelBehavior floatingLabelBehavior;
  final Widget? suffixIcon;
  final Widget? prefix;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final bool readOnly;
  final bool obscureText;
  final List<String> autofillHints;
  final ValueChanged<String>? onChanged;
  final InputBorder? border;
  final double? borderRadius;
  final bool enabledBorder;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final int? counter;
  final bool? alignLabelWithHint;
  final bool enabled;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final String? initialValue;
  final String? errorText;
  final String? helperText;
  final EdgeInsets? contentPadding;
  final bool autofocus;
  final BoxConstraints? suffixConstraints;
  final TextAlign textAlign;
  final BoxConstraints? prefixConstraints;
  final Color? fillColor;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  TextEditingController get _activeController =>
      widget.controller ?? _internalController;
  final TextEditingController _internalController = TextEditingController();

  final _focusNode = FocusNode();
  bool _hasFocus = false;

  @override
  void initState() {
    _focusNode.addListener(_onFocusChange);
    _activeController
      ..text = widget.initialValue ?? widget.controller?.text ?? ''
      ..addListener(_updateUI);
    super.initState();
  }

  @override
  void dispose() {
    _focusNode
      ..removeListener(_onFocusChange)
      ..dispose();
    _internalController.dispose();
    _activeController.removeListener(_updateUI);
    super.dispose();
  }

  void _updateUI() {
    setState(() {});
  }

  void _onFocusChange() {
    setState(() {
      _hasFocus = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final hasError = widget.errorText != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: widget.contentPadding ??
              const EdgeInsets.symmetric(
                horizontal: AppSpacing.s4,
                vertical: AppSpacing.s3,
              ),
          decoration: BoxDecoration(
            color: widget.fillColor ?? context.color.backgroundLight0,
            border: Border.all(
              color: widget.enabledBorder
                  ? hasError
                      ? context.color.statusError
                      : _hasFocus
                          ? context.color.primaryLight600
                          : context.color.strokeLigth100
                  : Colors.transparent,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                widget.borderRadius ?? context.radius.soft,
              ),
            ),
          ),
          child: IntrinsicHeight(
            child: TextField(
              autofocus: widget.autofocus,
              textAlign: widget.textAlign,
              controller: _activeController,
              keyboardType: widget.keyboardType,
              inputFormatters: widget.inputFormatters,
              textCapitalization: widget.textCapitalization,
              readOnly: widget.readOnly,
              obscureText: widget.obscureText,
              onEditingComplete: widget.onEditingComplete,
              autofillHints: widget.autofillHints,
              enabled: widget.enabled,
              maxLength:
                  widget.counter != null ? widget.counter! : widget.maxLength,
              minLines: widget.minLines,
              style: widget.style ??
                  (widget.size == TextInputSize.extraSmall
                      ? context.textStyle.bodySmallRegular.copyWith(
                          color: widget.enabled
                              ? context.color.textLight900
                              : context.color.textLight300,
                        )
                      : context.textStyle.bodyMediumRegular.copyWith(
                          color: widget.enabled
                              ? context.color.textLight900
                              : context.color.textLight300,
                        )),
              maxLines: widget.obscureText ? 1 : widget.maxLines,
              focusNode: _focusNode,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                counter:
                    widget.counter != null ? const SizedBox.shrink() : null,
                labelText: widget.labelText,
                hintText: widget.hintText,
                filled: widget.fillColor != null || !widget.enabled,
                fillColor: widget.fillColor ??
                    (widget.enabled
                        ? context.color.neutralLight0
                        : context.color.neutralLight100),
                alignLabelWithHint: widget.alignLabelWithHint ??
                    (widget.maxLines != null && widget.maxLines! > 1),
                floatingLabelBehavior: widget.floatingLabelBehavior,
                labelStyle: context.textStyle.bodyMediumRegular.copyWith(
                  color: widget.enabled
                      ? context.color.textLight600
                      : context.color.textLight300,
                ),
                hintStyle: widget.hintStyle ??
                    context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                suffixText: widget.suffixText,
                suffixStyle: widget.style ??
                    (widget.size == TextInputSize.extraSmall
                        ? context.textStyle.bodySmall
                        : context.textStyle.bodyMedium),
                suffixIconConstraints: widget.suffixConstraints,
                prefix: widget.prefix,
                prefixIcon: widget.prefixIcon,
                suffixIcon: widget.suffixIcon,
                suffixIconColor: widget.enabled
                    ? context.color.iconLight600
                    : context.color.iconLight300,
                prefixIconConstraints: widget.prefixConstraints,
                helperStyle: context.textStyle.bodySmallRegular.copyWith(
                  color: hasError
                      ? context.color.statusError
                      : widget.enabled
                          ? context.color.textLight600
                          : context.color.textLight300,
                ),
                // Borders
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
              ),
              onTap: widget.onTap,
              onTapOutside: (event) {
                widget.onTapOutside?.call();
                FocusScope.of(context).unfocus();
              },
              onChanged: widget.onChanged,
            ),
          ),
        ),
        if (widget.errorText != null || widget.helperText != null)
          Padding(
            padding: const EdgeInsets.only(
              left: AppSpacing.s2,
              top: AppSpacing.s2,
              right: AppSpacing.s2,
              bottom: AppSpacing.s2,
            ),
            child: widget.errorText != null
                ? Text(
                    widget.errorText ?? widget.helperText ?? '',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.statusError,
                    ),
                  )
                : widget.helperText != null
                    ? Text(
                        widget.helperText ?? '',
                        style: context.textStyle.buttonTabBar.copyWith(
                          color: context.color.textLight600,
                        ),
                      )
                    : const SizedBox.shrink(),
          ),
      ],
    );
  }
}
