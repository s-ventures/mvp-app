import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class HelpWithTheQuotation extends StatelessWidget {
  const HelpWithTheQuotation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Necesitas ayuda en tu contratación?',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        Button(
          title: 'Te ayudamos con la cotización',
          type: ButtonType.outlined,
          size: ButtonSize.small,
          icon: IconAssets.headPhones,
          onPressed: () async => AlertBottomSheet.show(
            context: context,
            icon: IconAssets.headPhones,
            title: 'Servicio de atención al cliente',
            message: 'Vas a ponerte en contacto con el Servicio de atención al cliente de soon.',
            buttonOkText: 'Contactar',
            buttonCancelText: 'Cancelar',
            buttonsOrientation: AlertButtonsOrientation.vertical,
          ),
        ),
      ],
    );
  }
}
