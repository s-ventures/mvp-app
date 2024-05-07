import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/policies/detailed/detailed_policy_controller.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/policies/details/policy_tab/widgets/business_insurance.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/policies/details/policy_tab/widgets/coverage_included.dart';
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

class _PolicyDetailsTabState extends ConsumerState<PolicyDetailsTab> {
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
    final policy = ref.watch(detailedPolicyControllerProvider).policy;

    return policy.when(
      data: (policy) => ListView(
        padding: const EdgeInsets.all(AppSpacing.s5),
        children: [
          InsurancePolicyListTile(
            leadingEmoji:
                '🖥️', // TODO(georgeta): Pending to receive category and use the icon based on it
            leadingBackgroundColor: const Color(0xFFE0E0E0),
            number: policy.id.getOrCrash(),
            category: '',
            status: policy.status,
            statusColor: context.color.statusSuccess,
            title: policy.description,
          ),
          AppSpacing.vertical.s5,
          DateRangeListTile.disabled(
            startDateTitle: 'Emisión',
            startDate: policy.createDate.formatToDayMonthYear() ?? '---',
            endDateTitle: 'Vencimiento',
            endDate: policy.endDate.formatToDayMonthYear() ?? '---',
          ),
          AppSpacing.vertical.s5,
          PolicyBilling(
            amount: policy.amount,
            lastInvoiceAmount: policy.lastInvoiceAmount,
            paymentPeriodicity: policy.paymentPeriodicity,
          ),
          AppSpacing.vertical.s5,
          const Coverages(
            title: 'Coberturas incluidas',
            coverages: [
              'Siniestros y averias generales',
              'Asistencia Informática',
              'Robo con y sin violencia',
              'Daños Eléctricos',
              'Avería de Maquinaria',
              'Roturas de cristales',
              'Daños Estéticos',
              'Responsabilidad Civil',
              'Pérdida de Beneficios diaria',
              'Desalojo Forzoso',
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
        child: CircularProgressIndicator(),
      ),
    );
  }
}
