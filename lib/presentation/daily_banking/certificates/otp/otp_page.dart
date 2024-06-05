import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CertificatesAndDocumentsRequestPaymentOtpPage extends StatelessWidget {
  const CertificatesAndDocumentsRequestPaymentOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpPage(
      title: context.loc.dailyBankingAccountsCertificatesPaymentOtpTitle,
      onPressedBack: () async => context.pop(),
      onPressedResend: () async {},
      btnConfirmText: context.loc.dailyBankingAccountsCertificatesPaymentOtpButton,
      onPressedConfirm: () async => AlertBottomSheet.show(
        context: context,
        icon: IconAssets.check,
        title: context.loc.dailyBankingAccountsCertificatesPaymentOtpSuccessTitle,
        message: context.loc.dailyBankingAccountsCertificatesPaymentOtpSuccessDescription,
        buttonOkText: context.loc.dailyBankingAccountsCertificatesPaymentOtpSuccessButton,
        onOkPressed: () => context.pushNamed(
          AppRoute.dailyBankingCertsAndDocumentsRequestDownload.name,
        ),
      ),
    );
  }
}
