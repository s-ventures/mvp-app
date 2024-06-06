import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
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
        borderRadius: BorderRadius.circular(context.radius.hard),
        border: Border.all(
          color: context.color.strokeLigth100,
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconSvg.small(
              IconAssets.plus,
              color: context.color.statusInfo,
            ),
            AppSpacing.horizontal.s3,
            Text(
              context.loc.dailyBankingAccountsAddAccount,
              style: TextStyle(
                color: context.color.statusInfo,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
