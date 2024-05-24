import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/policies/detailed/detailed_policy_controller.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/policies/details/policy_tab/widgets/business_insurance.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/policies/details/policy_tab/widgets/policy_billing.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/coverages.dart';
import 'package:ui_kit/ui_kit.dart';

class PolicyDetailsTab extends ConsumerStatefulWidget {
  const PolicyDetailsTab({
    required this.insuranceId,
    required this.policyId,
    super.key,
  });

  final int insuranceId;
  final int policyId;

  @override
  ConsumerState<PolicyDetailsTab> createState() => _PolicyDetailsTabState();
}

class _PolicyDetailsTabState extends ConsumerState<PolicyDetailsTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(detailedPolicyControllerProvider.notifier).init(
              insuranceId: widget.insuranceId,
              policyId: widget.policyId,
            ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final policy = ref.watch(detailedPolicyControllerProvider).policy;

    return policy.when(
      data: (policy) => ListView(
        padding: const EdgeInsets.all(AppSpacing.s5),
        children: [
          InsuranceDetailsListTile(
            leadingBackgroundColor: const Color(0xFFE0E0E0),
            // TODO(georgeta): Pending to receive category and use the icon based on it
            leadingEmoji: '🖥️',
            category: 'Accidentes',
            title: policy.description,
            subtitle: context.loc.dailyBankingInsurancesPolicyNumberWithParams(
              policy.id.getOrCrash(),
            ),
          ),
          AppSpacing.vertical.s5,
          DateRangeListTile.disabled(
            startDateTitle: context.loc.dailyBankingInsurancesPolicyDetailsDateOfIssue,
            startDate: policy.createDate.formatToDayMonthYear() ?? '---',
            endDateTitle: context.loc.dailyBankingInsurancesPolicyDetailsExpirationDate,
            endDate: policy.endDate.formatToDayMonthYear() ?? '---',
          ),
          AppSpacing.vertical.s5,
          PolicyBilling(
            amount: policy.amount,
            lastInvoiceAmount: policy.lastInvoiceAmount,
            paymentPeriodicity: policy.paymentPeriodicity,
          ),
          AppSpacing.vertical.s5,
          Coverages(
            title: context.loc.dailyBankingInsurancesPolicyDetailsCoverageIncluded,
            coverages: [
              context
                  .loc.dailyBankingInsurancesPolicyDetailsCoverageIncludedClaimsGeneralBreakdowns,
              context.loc.dailyBankingInsurancesPolicyDetailsCoverageIncludedComputerAssistance,
              context.loc
                  .dailyBankingInsurancesPolicyDetailsCoverageIncludedRobberyWithAndWithoutViolence,
              context.loc.dailyBankingInsurancesPolicyDetailsCoverageIncludedElectricalDamage,
              context.loc.dailyBankingInsurancesPolicyDetailsCoverageIncludedMachineryBreakdown,
              context.loc.dailyBankingInsurancesPolicyDetailsCoverageIncludedGlassBreakage,
              context.loc.dailyBankingInsurancesPolicyDetailsCoverageIncludedAestheticDamage,
              context.loc.dailyBankingInsurancesPolicyDetailsCoverageIncludedLiability,
              context.loc.dailyBankingInsurancesPolicyDetailsCoverageIncludedDailyLossProfit,
              context.loc.dailyBankingInsurancesPolicyDetailsCoverageIncludedForcedEviction,
            ],
          ),
          AppSpacing.vertical.s5,
          const BusinessInsurance(),
        ],
      ),
      error: (error, _) => Center(
        child: Text(
          error.toString(),
          style: context.textStyle.bodySmallRegular.copyWith(
            color: context.color.error,
          ),
        ),
      ),
      loading: () => const Center(
        child: CustomLoader(),
      ),
    );
  }
}
