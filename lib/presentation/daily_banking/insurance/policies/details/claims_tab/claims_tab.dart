import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/claims/simplified/simplified_claims_controller.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/entities/claim_status_type.dart';
import 'package:manifiesto_mvp_app/presentation/routing/params.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ClaimsTab extends ConsumerWidget {
  const ClaimsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final claims = ref.watch(
      simplifiedClaimsControllerProvider.select((value) => value.claims),
    );

    return claims.mapOrNull(
          data: (data) {
            final claims = data.value;
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
                      extra: InsuranceClaimDetailsRouteParams(
                        claimId: claim.id.toInt(),
                        insuranceId: claim.insuranceId.toInt(),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ) ??
        const Center(child: CircularProgressIndicator.adaptive());
  }
}
