import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ErpDetailsDates extends StatelessWidget {
  const ErpDetailsDates({
    required this.date,
    required this.dateLabel,
    required this.expiration,
    required this.expirationLabel,
    required this.delivery,
    required this.deliveryLabel,
    super.key,
  });

  final String date;
  final String dateLabel;
  final String expiration;
  final String expirationLabel;
  final String delivery;
  final String deliveryLabel;

  @override
  Widget build(BuildContext context) {
    return CustomCard.outlined(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                date,
                style: context.textStyle.h6.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                dateLabel,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ],
          ),
          Container(
            height: 40,
            width: 1,
            color: context.color.strokeLigth200,
          ),
          Column(
            children: [
              Text(
                expiration,
                style: context.textStyle.h6.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                expirationLabel,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ],
          ),
          Container(
            height: 40,
            width: 1,
            color: context.color.strokeLigth200,
          ),
          Column(
            children: [
              Text(
                delivery,
                style: context.textStyle.h6.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s2,
              Text(
                deliveryLabel,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
