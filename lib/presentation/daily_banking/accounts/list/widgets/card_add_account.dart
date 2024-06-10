import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CardAddAccount extends StatelessWidget {
  const CardAddAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        AppSpacing.s5,
      ),
      margin: const EdgeInsets.only(
        left: AppSpacing.s2,
        bottom: AppSpacing.s5,
        right: AppSpacing.s2,
      ),
      decoration: BoxDecoration(
        color: context.color.backgroundLight0,
        borderRadius: BorderRadius.circular(
          context.radius.hard,
        ),
        border: Border.all(
          color: context.color.strokeLigth100,
        ),
      ),
      child: Center(
        child: Button(
          title: context.loc.dailyBankingAccountsAddAccount,
          icon: IconAssets.plus,
          type: ButtonType.text,
          size: ButtonSize.small,
          expand: true,
          foreground: context.color.statusInfo,
          onPressed: () async => context.pushNamed(
            AppRoute.dailyBankingAggregatedAccounts.name,
          ),
        ),
      ),
    );
  }
}
