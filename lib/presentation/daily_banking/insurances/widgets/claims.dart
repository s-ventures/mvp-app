import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurances/claims/simplified/simplified_claims_controller.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/claim_status_type.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/simplified_claim.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurances/widgets/filter_claims_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/routing/router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class Claims extends ConsumerStatefulWidget {
  const Claims({super.key});

  @override
  ConsumerState<Claims> createState() => _ClaimsState();
}

class _ClaimsState extends ConsumerState<Claims> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(simplifiedClaimsControllerProvider.notifier).init(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final claims = ref.watch(
      simplifiedClaimsControllerProvider.select((value) => value.claims),
    );

    return Padding(
      padding: const EdgeInsets.all(AppSpacing.s5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Siniestros',
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
                  await FilterClaimsBottomSheet.show(context: context);
                },
              ),
            ],
          ),
          Row(
            children: [
              CustomChip(
                title: Text(
                  'Todos',
                  style: context.textStyle.bodySmallSemiBold.copyWith(
                    color: context.color.primaryLight300,
                  ),
                ),
                onSelected: print,
              ),
              AppSpacing.horizontal.s3,
              CustomChip(
                title: Text(
                  'En curso',
                  style: context.textStyle.bodySmallSemiBold.copyWith(
                    color: context.color.textLight0,
                  ),
                ),
                selected: true,
                onSelected: print,
              ),
            ],
          ),
          AppSpacing.vertical.s3,
          claims.mapOrNull(
                data: (data) => _ClaimsList(
                  claims: data.value,
                ),
              ) ??
              const Center(child: CircularProgressIndicator.adaptive()),
        ],
      ),
    );
  }
}

class _ClaimsList extends StatelessWidget {
  const _ClaimsList({required this.claims});

  final List<SimplifiedClaim> claims;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: claims.length,
      itemBuilder: (context, index) {
        final claim = claims[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.s3),
          child: InsuranceClaimListTile(
            leadingEmoji: '🖥️',
            leadingBackgroundColor: const Color(0xFFE0E0E0),
            number: claim.id.getOrCrash(),
            status: claim.status.name,
            statusColor: claim.status == ClaimStatusType.open
                ? context.color.statusWarning
                : context.color.statusSuccess,
            title: claim.reason,
            onTap: () => context.pushNamed(
              AppRoute.dailyBankingInsuranceClaimDetails.name,
              extra: InsuranceClaimDetailsRouteArgs(
                claimId: claim.id.toInt(),
                insuranceId: claim.insuranceId,
              ),
            ),
          ),
        );
      },
    );
  }
}
