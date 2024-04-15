import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TransferDetailsDate extends StatelessWidget {
  const TransferDetailsDate({
    required this.dateOfPayment,
    required this.dateOfCharged,
    super.key,
  });

  final String dateOfPayment;
  final String dateOfCharged;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      outlined: true,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fecha cargo',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                AppSpacing.vertical.s2,
                Button(
                  title: dateOfCharged,
                  size: ButtonSize.extraSmall,
                  background: context.color.neutralLight100,
                  foreground: context.color.textLight600,
                  expand: true,
                ),
              ],
            ),
          ),
          AppSpacing.horizontal.s5,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fecha abono',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                AppSpacing.vertical.s2,
                Button(
                  title: dateOfPayment,
                  size: ButtonSize.extraSmall,
                  background: context.color.neutralLight100,
                  foreground: context.color.textLight600,
                  expand: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
