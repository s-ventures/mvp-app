import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccidentsInsurancePaymentOtpPage extends StatelessWidget {
  const AccidentsInsurancePaymentOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpPage(
      title: 'Código de confirmación',
      message:
          'Para continuar, introduce la contraseña que acabamos de enviarte al teléfono acabado en "63"',
      onPressedBack: () async => context.pop(),
      onPressedResend: () async {},
      onPressedConfirm: () async => context.pushNamed(
        AppRoute.protectionInsuranceAccidentContracted.name,
      ),
    );
  }
}
