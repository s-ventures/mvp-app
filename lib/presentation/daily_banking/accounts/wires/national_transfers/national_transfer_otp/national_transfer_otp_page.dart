import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class NationalTransferOtpPage extends StatelessWidget {
  const NationalTransferOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpPage(
      title: context.loc.dailyBankingNationalTransfersOtpTitle,
      onPressedBack: () async => context.pop(),
      onPressedResend: () async {},
      btnConfirmText: context.loc.dailyBankingNationalTransfersOtpButton,
      onPressedConfirm: () async => AlertBottomSheet.show(
        context: context,
        icon: IconAssets.calendar,
        title: context.loc
            .dailyBankingNationalTransfersScheduledOtpModalSuccessTitle(
          56.00.toCurrency(plusSign: false),
          'Shore2Shore',
        ),
        message: context.loc
            .dailyBankingNationalTransfersScheduledOtpModalSuccessDescription,
        buttonOkText: context.loc.commonContinue,
        onOkPressed: () => context.pushNamed(
          AppRoute.dailyBankingNationalTransferCertificate.name,
        ),
      ),
    );
  }
}
