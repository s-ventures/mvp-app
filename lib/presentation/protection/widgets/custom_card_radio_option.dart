import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum CardRadioOptionPeriod {
  annual('Anual'),
  semiannual('Semestral'),
  quarterly('Trimestral');

  const CardRadioOptionPeriod(this.name);

  final String name;
}

enum CardRadioOptionPayment {
  unique('Único pago'),
  monthly('Pago mensual');

  const CardRadioOptionPayment(this.name);

  final String name;
}

class CustomCardRadioOption extends StatelessWidget {
  const CustomCardRadioOption({
    required this.period,
    required this.type,
    required this.price,
    required this.fromDate,
    required this.value,
    required this.groupValue,
    required this.onPressed,
    super.key,
  });

  final CardRadioOptionPeriod period;
  final CardRadioOptionPayment type;
  final String price;
  final String fromDate;
  final String value;
  final String groupValue;
  final void Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.backgroundLight0,
        borderRadius: BorderRadius.circular(context.radius.soft),
        border: Border.all(
          color: context.color.strokeLigth100,
        ),
      ),
      child: Splash(
        borderRadius: BorderRadius.circular(context.radius.soft),
        onPressed: () async => onPressed(value),
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.s5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '${period.name} · ',
                        style: context.textStyle.bodySmallSemiBold.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      Text(
                        type.name,
                        style: context.textStyle.bodySmallSemiBold.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: AppSpacing.s6,
                    width: AppSpacing.s6,
                    decoration: BoxDecoration(
                      color: value == groupValue
                          ? context.color.secondary
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(
                        context.radius.hard,
                      ),
                      border: Border.all(
                        color: context.color.strokeLigth100,
                        width: value == groupValue ? 0 : 1,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        height: AppSpacing.s3,
                        width: AppSpacing.s3,
                        decoration: BoxDecoration(
                          color: context.color.backgroundLight0,
                          borderRadius: BorderRadius.circular(
                            context.radius.hard,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s6,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '$price €',
                    style: context.textStyle.h4.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.horizontal.s3,
                  Text(
                    type == CardRadioOptionPayment.unique ? '/año' : '/mes',
                    style: context.textStyle.h6.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s5,
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSpacing.s3,
                  horizontal: AppSpacing.s5,
                ),
                decoration: BoxDecoration(
                  color: context.color.backgroundLight200,
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
                child: Text(
                  'Desde $fromDate',
                  textAlign: TextAlign.center,
                  style: context.textStyle.buttonTabBar.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
