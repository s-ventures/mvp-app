import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CardSettingsPage extends StatelessWidget {
  const CardSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                floating: true,
                pinned: true,
                centerTitle: true,
                title: context.loc.dailyBankingCardsSettingsTitle,
                leading: Button(
                  icon: IconAssets.arrowLeft,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async => context.pop(),
                ),
              ),
            ];
          },
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              OutlinedList(
                children: [
                  Splash(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                    onPressed: () => context.pushNamed(
                      AppRoute.dailyBankingCardSettingsLimits.name,
                    ),
                    child: ListTile(
                      title: Text(
                        context.loc.dailyBankingCardsSettingsCardLimits,
                        style: context.textStyle.bodyMediumSemiBold,
                      ),
                      subtitle: Text(
                        context
                            .loc.dailyBankingCardsSettingsCardLimitsDescription,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      trailing: IconSvg.small(IconAssets.chevronRight),
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s5,
              OutlinedList(
                children: [
                  Splash(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                    onPressed: () => context
                        .pushNamed(AppRoute.dailyBankingCardSettingsAlias.name),
                    child: ListTile(
                      title: Text(
                        context.loc.dailyBankingCardsSettingsCardAlias,
                        style: context.textStyle.bodyMediumSemiBold,
                      ),
                      subtitle: Text(
                        context
                            .loc.dailyBankingCardsSettingsCardAliasDescription,
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      trailing: IconSvg.small(IconAssets.chevronRight),
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s6,
              Text(
                context.loc.commonSecurity,
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s3,
              OutlinedList(
                children: [
                  Splash(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(context.radius.soft),
                      topRight: Radius.circular(context.radius.soft),
                    ),
                    child: ListTile(
                      title: Text(
                        context.loc.dailyBankingCardsSettingsCardOnlinePayment,
                        style: context.textStyle.bodyMediumRegular,
                      ),
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  Splash(
                    child: ListTile(
                      title: Text(
                        context.loc.dailyBankingCardsSettingsCardAtmWithdrawals,
                        style: context.textStyle.bodyMediumRegular,
                      ),
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  Splash(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(context.radius.soft),
                      bottomRight: Radius.circular(context.radius.soft),
                    ),
                    child: ListTile(
                      title: Text(
                        context.loc
                            .dailyBankingCardsSettingsCardContactlessPayment,
                        style: context.textStyle.bodyMediumRegular,
                      ),
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s6,
              Button(
                title:
                    context.loc.dailyBankingCardsSettingsCardReportTheftOrLoss,
                size: ButtonSize.small,
                background: context.color.error.withOpacity(0.15),
                foreground: context.color.error,
                onPressed: () async {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
