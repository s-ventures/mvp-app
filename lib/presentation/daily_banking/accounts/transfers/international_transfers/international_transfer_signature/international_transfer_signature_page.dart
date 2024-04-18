import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class InternationalTransferSignaturePage extends StatelessWidget {
  const InternationalTransferSignaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppSpacing.s5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Código de confirmación de pago',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  Text(
                    'Ingresa el código de confirmación que has recibido por SMS para confirmar el pago.',
                    style: context.textStyle.bodyMediumRegular,
                  ),
                  AppSpacing.vertical.s5,
                  const Placeholder(
                    fallbackHeight: 80,
                  ),
                  AppSpacing.vertical.s5,
                  Row(
                    children: [
                      Text(
                        '¿No recibes el código?',
                        style: context.textStyle.bodyMediumRegular,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Reenviar',
                          style: context.textStyle.bodyMediumRegular.copyWith(
                            color: context.color.statusInfo,
                          ),
                        ),
                      ),
                    ],
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
            onPressed: () async => AlertBottomSheet.show(
              context: context,
              icon: IconAssets.check,
              title:
                  'Has enviado ${56.00.toCurrency(plusSign: false)} a Shore2Shore',
              message:
                  'El pago se ha realizado correctamente. Puedes ver los detalles en tu historial de pagos.',
              buttonOkText: 'Continuar',
              onOkPressed: () => context.pushNamed(
                AppRoute.dailyBankingInternationalTransferCertificate.name,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
