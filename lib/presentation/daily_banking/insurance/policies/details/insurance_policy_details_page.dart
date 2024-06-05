import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/claims/simplified/simplified_claims_controller.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/policies/details/claims_tab/claims_tab.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/policies/details/policy_tab/policy_details_tab.dart';
import 'package:ui_kit/ui_kit.dart';

class InsurancePolicyDetailsPage extends ConsumerStatefulWidget {
  const InsurancePolicyDetailsPage({
    required this.insuranceId,
    required this.policyId,
    super.key,
  });

  final int insuranceId;
  final int policyId;

  @override
  ConsumerState<InsurancePolicyDetailsPage> createState() => _InsurancePolicyDetailsPageState();
}

class _InsurancePolicyDetailsPageState extends ConsumerState<InsurancePolicyDetailsPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(simplifiedClaimsControllerProvider.notifier).setInsuranceIds([widget.insuranceId]);
      unawaited(
        ref.read(simplifiedClaimsControllerProvider.notifier).applyFilters(),
      );
    });
    super.initState();
  }

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
                  title: context.loc.dailyBankingInsurancesPolicyDetails,
                  leading: Button(
                    icon: IconAssets.chevronLeft,
                    type: ButtonType.outlined,
                    size: ButtonSize.extraSmall,
                    onPressed: () async {
                      unawaited(
                        ref.read(simplifiedClaimsControllerProvider.notifier).resetFilters(),
                      );
                      context.pop();
                    },
                  ),
                  actions: [
                    Button(
                      icon: IconAssets.info,
                      type: ButtonType.outlined,
                      size: ButtonSize.extraSmall,
                      onPressed: () async {},
                    ),
                  ],
                  bottom: CustomTabBar(
                    tabs: [
                      Tab(text: context.loc.dailyBankingInsurancesPolicy),
                      Tab(text: context.loc.dailyBankingInsurancesClaims),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                PolicyDetailsTab(
                  insuranceId: widget.insuranceId,
                  policyId: widget.policyId,
                ),
                const ClaimsTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
