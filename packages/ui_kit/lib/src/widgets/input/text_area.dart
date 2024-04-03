import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_kit/ui_kit.dart';

enum TextAreaSize {
  medium(8),
  small(6);

  const TextAreaSize(this.minLines);

  final int minLines;
}

class TextArea extends StatefulWidget {
  const TextArea({
    this.controller,
    this.size = TextAreaSize.medium,
    this.initialValue,
    this.labelText,
    this.hintText,
    this.suffixText,
    this.helperText,
    this.keyboardType = TextInputType.multiline,
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
    this.maxLength,
    this.counter,
    this.hintStyle,
    this.alignLabelWithHint,
    this.errorText,
    this.contentPadding,
    this.autofocus = false,
    this.enabled = true,
    this.suffixConstraints,
    this.prefixConstraints,
    super.key,
  });

  final TextEditingController? controller;
  final TextAreaSize size;
  final String? labelText;
  final String? hintText;
  final String? suffixText;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final VoidCallback? onTapOutside;
  final VoidCallback? onTap;
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
  final int? maxLength;
  final int? counter;
  final bool? alignLabelWithHint;
  final bool enabled;
  final TextStyle? hintStyle;
  final String? initialValue;
  final String? errorText;
  final String? helperText;
  final EdgeInsets? contentPadding;
  final bool autofocus;
  final BoxConstraints? suffixConstraints;
  final BoxConstraints? prefixConstraints;

  @override
  State<TextArea> createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea> {
  TextEditingController get _activeController =>
      widget.controller ?? _internalController;
  final TextEditingController _internalController = TextEditingController();

  @override
  void initState() {
    _activeController
      ..text = widget.initialValue ?? widget.controller?.text ?? ''
      ..addListener(_updateUI);
    super.initState();
  }

  @override
  void dispose() {
    _internalController.dispose();
    _activeController.removeListener(_updateUI);
    super.dispose();
  }

  void _updateUI() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final hasError = widget.errorText != null;

    return TextField(
      autofocus: widget.autofocus,
      controller: _activeController,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      textCapitalization: widget.textCapitalization,
      readOnly: widget.readOnly,
      obscureText: widget.obscureText,
      autofillHints: widget.autofillHints,
      enabled: widget.enabled,
      maxLength: widget.counter != null ? widget.counter! : widget.maxLength,
      minLines: widget.size.minLines,
      maxLines: null,
      style: context.textStyle.bodyMediumRegular.copyWith(
          color: widget.enabled
              ? context.color.textLight900
              : context.color.textLight300),
      focusNode: widget.focusNode ??
          (widget.readOnly ? _AlwaysDisabledFocusNode() : null),
      decoration: InputDecoration(
        helperText: widget.helperText,
        errorText: widget.errorText,
        counter: widget.counter != null ? const SizedBox.shrink() : null,
        contentPadding: widget.contentPadding ??
            const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
        border: widget.border ??
            OutlineInputBorder(borderRadius: BorderRadius.circular(context.radius.soft)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: hasError
                ? context.color.statusError
                : context.color.strokeLigth100,
          ),
          borderRadius: BorderRadius.circular(context.radius.soft),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(context.radius.soft),
        ),
        labelText: widget.labelText,
        filled: !widget.enabled,
        fillColor: widget.enabled
            ? context.color.neutralLight0
            : context.color.neutralLight100,
        hintText: widget.hintText,
        alignLabelWithHint: true,
        floatingLabelBehavior: widget.floatingLabelBehavior,
        labelStyle: context.textStyle.bodyMediumRegular.copyWith(
            color: widget.enabled
                ? context.color.textLight600
                : context.color.textLight300),
        hintStyle: widget.hintStyle ??
            context.textStyle.bodyMediumRegular
                .copyWith(color: context.color.textLight600),
        suffixText: widget.suffixText,
        suffixStyle: context.textStyle.bodyMedium,
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
                    : context.color.textLight300),
      ),
      onTap: widget.onTap,
      onTapOutside: (event) {
        widget.onTapOutside?.call();
        FocusScope.of(context).unfocus();
      },
      onChanged: widget.onChanged,
    );
  }
}

class _AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
