import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

class ScheduledTransferSignaturePage extends StatelessWidget {
  const ScheduledTransferSignaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Pago periódico',
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
                    'Código de confirmación de activación de pago periódico',
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
            onPressed: () async => context.pop(),
          ),
        ),
      ),
    );
  }
}
