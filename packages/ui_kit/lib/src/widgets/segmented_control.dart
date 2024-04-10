import 'package:flutter/cupertino.dart';
import 'package:ui_kit/ui_kit.dart';

class SegmentedControl extends StatelessWidget {
  const SegmentedControl({
    required this.onValueChanged,
    required this.children,
    super.key,
  });

  final List<String> children;
  final void Function(String?) onValueChanged;

  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl<String>(
      backgroundColor: context.color.neutralLight100,
      groupValue: 'Todos',
      onValueChanged: (String? value) {
        if (value != null) {}
      },
      children: <String, Widget>{
        'Todos': Text(
          'Todos',
          style: context.textStyle.bodySmallSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        'Ingresos': Text(
          'Ingresos',
          style: context.textStyle.bodySmallSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        'Gastos': Text(
          'Gastos',
          style: context.textStyle.bodySmallSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
      },
    );
  }
}
