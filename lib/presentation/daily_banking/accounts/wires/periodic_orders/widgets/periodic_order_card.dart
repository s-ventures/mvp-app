import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/simplified_periodic_order.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class PeriodicOrderCard extends StatelessWidget {
  const PeriodicOrderCard({
    required this.periodicOrder,
    super.key,
  });

  final SimplifiedPeriodicOrder periodicOrder;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: ShapeDecoration(
            color: context.color.backgroundLight0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.radius.soft),
              side: BorderSide(
                color: context.color.strokeLigth100,
              ),
            ),
          ),
          child: Column(
            children: [
              ListTile(
                dense: true,
                leading: IconWithContainer(
                  text: periodicOrder.beneficiaryName.initials,
                  backgroundColor: context.color.backgroundLight200,
                  subIcon: IconAssets.soon,
                ),
                title: Text(
                  periodicOrder.beneficiaryName,
                  style: context.textStyle.bodyMediumSemiBold.copyWith(
                    color: context.color.textLight900,
                  ),
                ),
                subtitle: Text(
                  periodicOrder.concept ?? '',
                  style: context.textStyle.bodyMediumRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                trailing: Button(
                  title: 'Ver detalles',
                  type: ButtonType.text,
                  size: ButtonSize.extraSmall,
                  foreground: context.color.secondaryLight600,
                  onPressed: () => context.pushNamed(
                    AppRoute.dailyBankingScheduledTransferDetails.name,
                  ),
                ),
              ),
              const CustomDivider(),
              Padding(
                padding: const EdgeInsets.all(AppSpacing.s5),
                child: Column(
                  children: [
                    Text(
                      periodicOrder.amount.toCurrency(plusSign: false),
                      style: context.textStyle.h4.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    AppSpacing.vertical.s5,
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.s5,
                        vertical: AppSpacing.s3,
                      ),
                      decoration: ShapeDecoration(
                        color: context.color.backgroundLight200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            context.radius.soft,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            periodicOrder.frecuency?.name ?? '',
                            style:
                                context.textStyle.bodyMediumSemiBold.copyWith(
                              color: context.color.textLight900,
                            ),
                          ),
                          AppSpacing.horizontal.s2,
                          Text(
                            '· Desde ${periodicOrder.startDate?.formatToDayMonthYear() ?? ''}',
                            style: context.textStyle.bodyMediumRegular.copyWith(
                              color: context.color.textLight600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
