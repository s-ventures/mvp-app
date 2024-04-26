import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurances/claims/filter/filter_simplified_claims_controller.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurances/policies/details/claims_tab/claims_tab.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurances/policies/details/policy_tab/policy_details_tab.dart';
import 'package:ui_kit/ui_kit.dart';

class InsurancePolicyDetailsPage extends ConsumerStatefulWidget {
  const InsurancePolicyDetailsPage({
    required this.insuranceId,
    required this.policyId,
    super.key,
  });

  final int insuranceId;
  final String policyId;

  @override
  ConsumerState<InsurancePolicyDetailsPage> createState() =>
      _InsurancePolicyDetailsPageState();
}

class _InsurancePolicyDetailsPageState
    extends ConsumerState<InsurancePolicyDetailsPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(filterSimplifiedClaimsControllerProvider.notifier)
          .setInsuranceIds([widget.insuranceId]);
      unawaited(
        ref
            .read(filterSimplifiedClaimsControllerProvider.notifier)
            .applyFilters(),
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
