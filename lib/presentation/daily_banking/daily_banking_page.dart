import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/accounts_home_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/cards_home_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/insurance_home_page.dart';
import 'package:ui_kit/ui_kit.dart';

class DailyBankingPage extends StatelessWidget {
  const DailyBankingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: CustomAppBar.sliver(
                  centerTitle: true,
                  pinned: true,
                  type: CustomAppBarType.logo,
                  leading: Button(
                    icon: IconAssets.bell,
                    type: ButtonType.outlined,
                    size: ButtonSize.extraSmall,
                    onPressed: () async {},
                  ),
                  actions: [
                    Button(
                      icon: IconAssets.user,
                      type: ButtonType.outlined,
                      size: ButtonSize.extraSmall,
                      onPressed: () async {},
                    ),
                  ],
                  bottom: CustomTabBar(
                    tabs: [
                      Tab(text: context.loc.dailyBankingAccounts),
                      Tab(text: context.loc.dailyBankingCards),
                      Tab(text: context.loc.dailyBankingInsurance),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              AccountsHomePage(),
              CardsHomePage(),
              InsuranceHomePage(),
            ],
          ),
        ),
      ),
    );
  }
}
