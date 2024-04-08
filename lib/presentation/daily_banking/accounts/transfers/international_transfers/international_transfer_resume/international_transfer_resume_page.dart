import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class InternationalTransferResumePage extends StatelessWidget {
  const InternationalTransferResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar(
              centerTitle: true,
              title: 'Firma de operación',
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            CustomCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Titular',
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    'Shore2shore',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'BIC/SWIFT',
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    'ES12 1234 5678 8912 1345 7890',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Importe',
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    '${56.00.toCurrency(plusSign: false)} (EURO)',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Comisión de transferencia',
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    '${2.00.toCurrency(plusSign: false)} (EURO)',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Concepto',
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    'Viaje a Malaga',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Fecha de envío',
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    'Miércoles, 17 Enero, 16:31',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Llegada estimada',
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    'En segundos',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
          child: Button(
            title: 'Confirmar',
            size: ButtonSize.small,
            expand: true,
            onPressed: () async => context.pushNamed(AppRoute.dailyBankingInternationalTransferSignature.name),
          ),
        ),
      ),
    );
  }
}
