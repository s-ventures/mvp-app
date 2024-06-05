import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/accounts_home_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/cards_home_page.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurances/insurances_page.dart';
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
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: CustomAppBar(
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
                  bottom: const CustomTabBar(
                    tabs: [
                      Tab(text: 'Cuentas'),
                      Tab(text: 'Tarjetas'),
                      Tab(text: 'Seguros'),
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
              Insurances(),
            ],
          ),
        ),
      ),
    );
  }
}
