import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class SoonPayOtpPage extends StatelessWidget {
  const SoonPayOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpPage(
      title: context.loc.dailyBankingSoonPayOtpTitle,
      onPressedBack: () async => context.pop(),
      onPressedResend: () async {},
      onPressedConfirm: () async => AlertBottomSheet.show(
        context: context,
        icon: IconAssets.calendar,
        title: context.loc.dailyBankingSoonPayScheduledOtpSuccessModalTitle(
          50,
          'Thomas Magnum',
        ),
        message: context.loc.dailyBankingSoonPayScheduledOtpSuccessModalDescription,
        buttonOkText: context.loc.dailyBankingSoonPayScheduledOtpSuccessModalButton,
        onOkPressed: () => context.pushNamed(
          AppRoute.dailyBankingTransfers.name,
        ),
      ),
    );
  }
}
