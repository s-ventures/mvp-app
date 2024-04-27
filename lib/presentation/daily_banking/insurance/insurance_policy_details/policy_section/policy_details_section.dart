import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/insurance_policy_details/policy_section/widgets/business_insurance.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/insurance_policy_details/policy_section/widgets/coverage_included.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/insurance_policy_details/policy_section/widgets/policy_billing.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class PolicyDetailsSection extends StatelessWidget {
  const PolicyDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.s5),
      children: [
        InsurancePolicyListTile(
          leadingEmoji: '🖥️',
          leadingBackgroundColor: const Color(0xFFE0E0E0),
          number: '123456',
          category: DateFormat('dd/MM/yyyy').format(DateTime.now()),
          status: 'En Vigor',
          statusColor: context.color.statusSuccess,
          title: 'Seguro de comercio',
          onTap: () =>
              context.pushNamed(AppRoute.dailyBankingInsuranceDetails.name),
        ),
        AppSpacing.vertical.s5,
        DateRangeListTile.disabled(
          startDateTitle: 'Emisión',
          startDate: DateFormat('dd/MM/yyyy').format(
            DateTime.now().subtract(
              const Duration(days: 30),
            ),
          ),
          endDateTitle: 'Vencimiento',
          endDate: DateFormat('dd/MM/yyyy').format(DateTime.now()),
        ),
        AppSpacing.vertical.s5,
        const PolicyBilling(),
        AppSpacing.vertical.s5,
        Text(
          'Póliza',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        const CoverageIncluded(),
        AppSpacing.vertical.s5,
        const BusinessInsurance(),
      ],
    );
  }
}
