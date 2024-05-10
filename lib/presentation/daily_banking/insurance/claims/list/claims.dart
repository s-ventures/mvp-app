import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/claims/filter/filter_simplified_claims_controller.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/claims/simplified/simplified_claims_controller.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/entities/simplified_claim.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/claims/list/widgets/filter_claims_bottom_sheet/filter_claims_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/claims/list/widgets/filter_list_claims.dart';
import 'package:manifiesto_mvp_app/presentation/extension/claims_status_color_extension.dart';
import 'package:manifiesto_mvp_app/presentation/routing/params.dart';
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

    final controller =
        ref.read(filterSimplifiedClaimsControllerProvider.notifier);
    final startDate = ref.watch(
      filterSimplifiedClaimsControllerProvider
          .select((value) => value.createDateFrom),
    );
    final endDate = ref.watch(
      filterSimplifiedClaimsControllerProvider
          .select((value) => value.createDateTo),
    );

    final status = ref.watch(
      filterSimplifiedClaimsControllerProvider.select((value) => value.status),
    );

    final isFilterApplied =
        startDate != null || endDate != null || status != null;

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
              Stack(
                children: [
                  Button(
                    icon: IconAssets.filter,
                    type: ButtonType.outlined,
                    size: ButtonSize.extraSmall,
                    onPressed: () => FilterClaimsBottomSheet.show(
                      context: context,
                      onApply: controller.applyFilters,
                      onReset: controller.resetFilters,
                      setStartDate: controller.setStartDate,
                      setEndDate: controller.setEndDate,
                      setStatusTo: controller.setStatus,
                      status: status,
                      startDate: startDate,
                      endDate: endDate,
                    ),
                  ),
                  if (isFilterApplied)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.s2,
                          vertical: AppSpacing.s1,
                        ),
                        width: AppSpacing.s3,
                        height: AppSpacing.s3,
                        decoration: BoxDecoration(
                          color: context.color.statusError,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
          if (isFilterApplied)
            FilterListClaims(
              startDate: startDate,
              endDate: endDate,
              status: status,
              onClearDateRange: () {
                controller
                  ..setStartDate(null)
                  ..setEndDate(null)
                  ..applyFilters();
              },
              onClearStatus: () {
                controller
                  ..setStatus(null)
                  ..applyFilters();
              },
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
            statusColor: claim.status.textColor(context),
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
  }
}
