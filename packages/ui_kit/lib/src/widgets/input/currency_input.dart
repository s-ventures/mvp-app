import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:ui_kit/ui_kit.dart';

class CurrencyInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    if (newValue.text == ',') {
      return const TextEditingValue(
        text: '0,',
        selection: TextSelection.collapsed(offset: 2),
      );
    }

    final text = newValue.text.replaceAll('.', '');
    final parts = text.split(',');

    if (parts.length > 1) {
      final value = double.parse(parts[0]);
      final formatter = NumberFormat('#,###', 'es_ES');

      final decimalDigits =
          parts[1].length > 2 ? parts[1].substring(0, 2) : parts[1];

      final newText = '${formatter.format(value)},$decimalDigits';

      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    } else {
      final value = double.parse(text);
      final formatter = NumberFormat('#,###', 'es_ES');
      final newText = formatter.format(value);

      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }
  }
}

class CurrencyInput extends StatelessWidget {
  const CurrencyInput({
    this.controller,
    super.key,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      stepWidth: 100,
      child: TextField(
        cursorHeight: 40,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp('[0-9,]')),
          CurrencyInputFormatter(),
        ],
        textAlign: TextAlign.center,
        style: context.textStyle.h3.copyWith(
          color: context.color.textLight900,
        ),
        controller: controller,
        decoration: InputDecoration(
          labelText: '0,00 €',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelStyle: context.textStyle.h3.copyWith(
            color: context.color.textLight900,
          ),
          suffixText: '€',
          suffixStyle: context.textStyle.h3.copyWith(
            color: context.color.textLight900,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          isDense: true,
          isCollapsed: true,
        ),
      ),
    );
  }
}
