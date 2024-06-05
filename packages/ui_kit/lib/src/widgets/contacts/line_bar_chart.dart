import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class LineBarChart extends StatelessWidget {
  const LineBarChart({
    required this.greenValue,
    required this.greenLabel,
    required this.yellowValue,
    required this.yellowLabel,
    required this.redValue,
    required this.redLabel,
    this.bordered = false,
    this.verticalDirection = VerticalDirection.down,
    super.key,
  });

  final double? greenValue;
  final String? greenLabel;
  final double? yellowValue;
  final String? yellowLabel;
  final double? redValue;
  final String? redLabel;
  final bool bordered;
  final VerticalDirection verticalDirection;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: ((greenValue ?? 0) * 10).toInt(),
              child: Container(
                decoration: BoxDecoration(
                  color: context.color.statusSuccess,
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
                height: AppSpacing.s2,
              ),
            ),
            AppSpacing.horizontal.s2,
            Flexible(
              flex: ((yellowValue ?? 0) * 10).toInt(),
              child: Container(
                decoration: BoxDecoration(
                  color: context.color.statusWarning,
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
                height: AppSpacing.s2,
              ),
            ),
            AppSpacing.horizontal.s2,
            Flexible(
              flex: ((redValue ?? 0) * 10).toInt(),
              child: Container(
                decoration: BoxDecoration(
                  color: context.color.statusError,
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
                height: AppSpacing.s2,
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (greenLabel != null)
              _Value(
                label: greenLabel!,
                color: context.color.statusSuccess,
                bordered: bordered,
                value: greenValue!.toCurrency(plusSign: false),
                verticalDirection: verticalDirection,
              ),
            if (yellowLabel != null)
              _Value(
                label: yellowLabel!,
                color: context.color.statusWarning,
                bordered: bordered,
                value: yellowValue!.toCurrency(plusSign: false),
                verticalDirection: verticalDirection,
              ),
            if (redLabel != null)
              _Value(
                label: redLabel!,
                color: context.color.statusError,
                bordered: bordered,
                value: redValue!.toCurrency(plusSign: false),
                verticalDirection: verticalDirection,
              ),
          ],
        ),
      ],
    );
  }
}

class _Value extends StatelessWidget {
  const _Value({
    required this.label,
    required this.color,
    required this.value,
    required this.bordered,
    required this.verticalDirection,
  });

  final Color color;
  final String label;
  final String value;
  final bool bordered;
  final VerticalDirection verticalDirection;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacing.s3,
        horizontal: AppSpacing.s5,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            context.radius.soft,
          ),
          side: bordered
              ? BorderSide(
                  color: context.color.strokeLigth100,
                )
              : BorderSide.none,
        ),
      ),
      child: Column(
        verticalDirection: verticalDirection,
        children: [
          Row(
            children: [
              Container(
                width: AppSpacing.s3,
                height: AppSpacing.s3,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              ),
              AppSpacing.horizontal.s2,
              Text(
                label,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ],
          ),
          AppSpacing.vertical.s2,
          Text(
            value,
            style: context.textStyle.bodyMediumRegular,
          ),
        ],
      ),
    );
  }
}
