import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/insurance_policy_details/claims_section/claims_section.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/insurance_policy_details/policy_section/policy_details_section.dart';
import 'package:ui_kit/ui_kit.dart';

class InsurancePolicyDetailsPage extends StatelessWidget {
  const InsurancePolicyDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                CustomAppBar.sliver(
                  floating: true,
                  pinned: true,
                  centerTitle: true,
                  title: 'Detalles de la póliza',
                  leading: Button(
                    icon: IconAssets.chevronLeft,
                    type: ButtonType.outlined,
                    size: ButtonSize.extraSmall,
                    onPressed: () async => context.pop(),
                  ),
                  actions: [
                    Button(
                      icon: IconAssets.info,
                      type: ButtonType.outlined,
                      size: ButtonSize.extraSmall,
                      onPressed: () async {},
                    ),
                  ],
                  bottom: const CustomTabBar(
                    tabs: [
                      Tab(text: 'Póliza'),
                      Tab(text: 'Siniestros'),
                    ],
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                PolicyDetailsSection(),
                ClaimsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
