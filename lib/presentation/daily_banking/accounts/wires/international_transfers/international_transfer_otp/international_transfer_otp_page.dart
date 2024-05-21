import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class InternationalTransferOtpPage extends StatelessWidget {
  const InternationalTransferOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpPage(
      title: context.loc.dailyBankingInternationalTransfersOtpTitle,
      onPressedBack: () async => context.pop(),
      onPressedResend: () async {},
      btnConfirmText: context.loc.dailyBankingInternationalTransfersOtpButton,
      onPressedConfirm: () async => AlertBottomSheet.show(
        context: context,
        icon: IconAssets.check,
        title:
            context.loc.dailyBankingInternationalTransfersOtpSuccessModalTitle(
          56.00.toCurrency(plusSign: false),
          'Shore2Shore',
        ),
        message: context
            .loc.dailyBankingInternationalTransfersOtpSuccessModalDescription,
        buttonOkText: context.loc.commonContinue,
        onOkPressed: () => context.pushNamed(
          AppRoute.dailyBankingInternationalTransferCertificate.name,
        ),
      ),
    );
  }
}
