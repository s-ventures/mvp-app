import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({
    required this.title,
    required this.onPressedBack,
    required this.onPressedResend,
    required this.onPressedConfirm,
    this.subtitle = 'Código de confirmación',
    this.message =
        'Ingresa el código de confirmación que has recibido por SMS para confirmar la operación.',
    this.btnConfirmText = 'Confirmar',
    super.key,
  });

  final String title;
  final String subtitle;
  final String message;
  final String btnConfirmText;
  final VoidCallback onPressedBack;
  final VoidCallback onPressedResend;
  final VoidCallback onPressedConfirm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: title,
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => onPressedBack.call(),
              ),
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            Text(
              subtitle,
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            Text(
              message,
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
                  onPressed: () async => onPressedResend.call(),
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
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
          child: Button(
            title: btnConfirmText,
            size: ButtonSize.small,
            expand: true,
            onPressed: () async => onPressedConfirm.call(),
          ),
        ),
      ),
    );
  }
}
