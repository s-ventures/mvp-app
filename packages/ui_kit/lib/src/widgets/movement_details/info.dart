import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class MovementDetailsInfo extends StatelessWidget {
  const MovementDetailsInfo({
    required this.period,
    super.key,
  });

  final String period;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s3),
      decoration: ShapeDecoration(
        color: context.color.neutralLight100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.radius.soft),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.loc.commonDetailsMovement,
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight900,
            ),
          ),
          Text(
            ' · ',
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight600,
            ),
          ),
          Text(
            period,
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight600,
            ),
          ),
        ],
      ),
    );
  }
}
