import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AmountInput extends StatelessWidget {
  const AmountInput({
    required this.controller,
    required this.onChanged,
    this.keyboardType = TextInputType.number,
    this.size = TextInputSize.extraSmall,
    this.suffixText,
    this.fillColor,
    this.style,
    super.key,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  final String? suffixText;
  final Color? fillColor;
  final TextInputSize size;
  final AppThemeTextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: TextInput(
        controller: controller,
        size: size,
        textAlign: TextAlign.center,
        contentPadding: const EdgeInsets.symmetric(
          vertical: AppSpacing.s2,
          horizontal: AppSpacing.s4,
        ),
        keyboardType: keyboardType,
        onChanged: onChanged,
        fillColor: fillColor ?? context.color.neutralLight100,
        style: style ??
            context.textStyle.bodyMediumSemiBold.copyWith(
              color: context.color.textLight600,
            ),
        suffixText: suffixText,
      ),
    );
  }
}
