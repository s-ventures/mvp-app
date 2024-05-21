import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ScheduleRepeatOptionList extends StatelessWidget {
  const ScheduleRepeatOptionList(
      {required this.options, this.groupValue = 'nunca', this.onPressed, super.key,});

  final List<Map<String, dynamic>> options;
  final dynamic groupValue;
  final void Function(dynamic)? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedList(
      children: options.asMap().entries.map((entry) {
        final index = entry.key;
        final optionMap = entry.value;
        return CustomRadioListTile(
          title: optionMap['title'] as String,
          value: optionMap['value'],
          groupValue: groupValue,
          onChanged: onPressed,
          borderRadius: index == 0
              ? BorderRadius.only(
                  topLeft: Radius.circular(context.radius.soft),
                  topRight: Radius.circular(context.radius.soft),
                )
              : index == options.length - 1
                  ? BorderRadius.only(
                      bottomLeft: Radius.circular(context.radius.soft),
                      bottomRight: Radius.circular(context.radius.soft),
                    )
                  : null,
        );
      }).toList(),
    );
  }
}
