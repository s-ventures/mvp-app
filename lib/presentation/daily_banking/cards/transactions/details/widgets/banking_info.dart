import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum BankAccountType {
  account('Cuenta'),
  card('Tarjeta');

  const BankAccountType(this.name);
  final String name;
}

class CardBankingInfo extends StatelessWidget {
  const CardBankingInfo({
    required this.type,
    required this.last4,
    required this.icon,
    required this.category,
    super.key,
  });

  final BankAccountType type;
  final String last4;
  final String icon;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Información bancaria',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        CustomCard(
          outlined: true,
          child: Column(
            children: [
              Row(
                children: [
                  IconWithContainer(
                    icon: IconAssets.soon,
                    size: IconWithContainerSize.large,
                    foreground: Colors.white,
                    backgroundColor: context.color.secondaryLight600,
                  ),
                  AppSpacing.horizontal.s3,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        type.name,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      Text(
                        '·· $last4',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              AppSpacing.vertical.s4,
              Row(
                children: [
                  IconWithContainer(
                    text: icon,
                    size: IconWithContainerSize.large,
                    foreground: Colors.white,
                    backgroundColor: context.color.neutralLight100,
                  ),
                  AppSpacing.horizontal.s3,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Categoría',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      Text(
                        category,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
