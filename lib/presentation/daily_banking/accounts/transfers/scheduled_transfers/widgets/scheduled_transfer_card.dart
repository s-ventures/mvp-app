import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ScheduledTransferCard extends StatefulWidget {
  const ScheduledTransferCard({super.key});

  @override
  State<ScheduledTransferCard> createState() => _ScheduledTransferCardState();
}

class _ScheduledTransferCardState extends State<ScheduledTransferCard> {
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
                  text: 'AG',
                  backgroundColor: context.color.backgroundLight200,
                  subIcon: IconAssets.soon,
                ),
                title: Text(
                  'Alba García',
                  style: context.textStyle.bodyMediumSemiBold.copyWith(
                    color: context.color.textLight900,
                  ),
                ),
                subtitle: Text(
                  'NIF: BOB123456',
                  style: context.textStyle.bodyMediumRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                trailing: Button(
                  title: 'Ver detalles',
                  type: ButtonType.text,
                  size: ButtonSize.extraSmall,
                  foreground: context.color.secondaryLight600,
                  onPressed: () => context.pushNamed(AppRoute.dailyBankingScheduledTransferDetails.name),
                ),
              ),
              Divider(
                color: context.color.strokeLigth100,
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(AppSpacing.s5),
                child: Column(
                  children: [
                    Text('25,00 €', style: context.textStyle.h4.copyWith(color: context.color.textLight900)),
                    AppSpacing.vertical.s5,
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5, vertical: AppSpacing.s3),
                      decoration: ShapeDecoration(
                        color: context.color.backgroundLight200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(context.radius.soft),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Diariamente',
                            style: context.textStyle.bodyMediumSemiBold.copyWith(
                              color: context.color.textLight900,
                            ),
                          ),
                          AppSpacing.horizontal.s2,
                          Text(
                            '· Desde 12/01/2024',
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
