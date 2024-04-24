import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurances/policies/simplified/simplified_policies_controller.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/entities/simplified_policy.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurances/widgets/filter_policies_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class Policies extends ConsumerStatefulWidget {
  const Policies({
    super.key,
  });

  @override
  ConsumerState<Policies> createState() => _PoliciesState();
}

class _PoliciesState extends ConsumerState<Policies> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(simplifiedPoliciesControllerProvider.notifier).init(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final policies = ref.watch(
      simplifiedPoliciesControllerProvider.select((value) => value.policies),
    );
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.s5),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Pólizas',
                  style: context.textStyle.bodyMediumSemiBold.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
              ),
              Button(
                icon: IconAssets.filter,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async {
                  await FilterPoliciesBottomSheet.show(context: context);
                },
              ),
            ],
          ),
          AppSpacing.vertical.s3,
          policies.mapOrNull(
                data: (data) => _PoliciesList(
                  policies: data.value,
                ),
              ) ??
              const Center(child: CircularProgressIndicator.adaptive()),
        ],
      ),
    );
  }
}

class _PoliciesList extends StatelessWidget {
  const _PoliciesList({required this.policies});

  final List<SimplifiedPolicy> policies;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: policies.length,
      itemBuilder: (context, index) {
        final policy = policies[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.s3),
          child: InsurancePolicyListTile(
            leadingEmoji:
                '🖥️', //TODO: Pending to receive category and use the icon based on it
            leadingBackgroundColor: const Color(0xFFE0E0E0),
            number: policy.id.getOrCrash(),
            status: policy.status,
            statusColor: context.color.statusSuccess,
            category: '',
            title: policy.description,
            onTap: () =>
                context.pushNamed(AppRoute.dailyBankingInsuranceDetails.name),
          ),
        );
      },
    );
  }
}
