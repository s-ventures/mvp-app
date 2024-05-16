import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class PeriodicOrderOtpPage extends StatelessWidget {
  const PeriodicOrderOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpPage(
      title: context.loc.commonSignatureOperation,
      onPressedBack: () async => context.pop(),
      onPressedResend: () async {},
      btnConfirmText: context.loc.dailyBankingNationalTransfersOtpButton,
      onPressedConfirm: () async => AlertBottomSheet.show(
        context: context,
        icon: IconAssets.check,
        title: context.loc.dailyBankingScheduledTransfersOtpModalSuccessTitle,
        message: context
            .loc.dailyBankingScheduledTransfersOtpModalSuccessDescription,
        buttonOkText: context.loc.commonContinue,
        onOkPressed: () => context.pushNamed(
          AppRoute.dailyBankingNationalTransferCertificate.name,
        ),
      ),
    );
  }
}
