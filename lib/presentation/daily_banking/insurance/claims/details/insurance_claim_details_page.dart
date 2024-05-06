import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/claims/detailed/detailed_claim_controller.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/entities/claim_status_type.dart';
import 'package:ui_kit/ui_kit.dart';

class InsuranceClaimDetailsPage extends ConsumerStatefulWidget {
  const InsuranceClaimDetailsPage({
    required this.claimId,
    required this.insuranceId,
    super.key,
  });

  final int claimId;
  final int insuranceId;

  @override
  ConsumerState<InsuranceClaimDetailsPage> createState() =>
      _InsuranceClaimDetailsPageState();
}

class _InsuranceClaimDetailsPageState
    extends ConsumerState<InsuranceClaimDetailsPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(detailedClaimControllerProvider.notifier).init(
              claimId: widget.claimId,
              insuranceId: widget.insuranceId,
            ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final claim = ref.watch(detailedClaimControllerProvider).claim;

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                centerTitle: true,
                title: 'Detalles del siniestro',
                leading: Button(
                  icon: IconAssets.arrowLeft,
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
              ),
            ];
          },
          body: claim.when(
            data: (claim) => ListView(
              padding: const EdgeInsets.all(16),
              children: [
                InsurancePolicyListTile(
                  leadingEmoji: '🖥️',
                  leadingBackgroundColor: const Color(0xFFE0E0E0),
                  title: claim.reason,
                  number: claim.insuranceId.getOrCrash(),
                  status: claim.riskType,
                  statusColor: context.color.statusSuccess,
                  category: '',
                ),
                AppSpacing.vertical.s5,
                ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: AppSpacing.s5,
                    right: AppSpacing.s5,
                  ),
                  title: Text(
                    'Número de expediente',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  trailing: Text(
                    claim.id.getOrCrash(),
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                ),
                AppSpacing.vertical.s3,
                ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: AppSpacing.s5,
                    right: AppSpacing.s4,
                  ),
                  title: Text(
                    'Fecha apertura',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  trailing: Button(
                    size: ButtonSize.extraSmall,
                    onPressed: () async {},
                    title: claim.createDate.formatToDayMonthYear(),
                    background: context.color.neutralLight100,
                    foreground: context.color.iconLight900,
                  ),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                ),
                AppSpacing.vertical.s3,
                ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: AppSpacing.s5,
                    right: AppSpacing.s4,
                  ),
                  title: Text(
                    'Fecha inicio tramitación',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  trailing: Button(
                    size: ButtonSize.extraSmall,
                    onPressed: () async {},
                    title: claim.processStartDate.formatToDayMonthYear(),
                    background: context.color.neutralLight100,
                    foreground: context.color.iconLight900,
                  ),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                ),
                AppSpacing.vertical.s3,
                ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: AppSpacing.s5,
                    right: AppSpacing.s4,
                  ),
                  title: Text(
                    'Fecha fin de tramitación',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  trailing: Button(
                    size: ButtonSize.extraSmall,
                    onPressed: () async {},
                    title:
                        claim.processEndDate?.formatToDayMonthYear() ?? '---',
                    background: context.color.neutralLight100,
                    foreground: context.color.iconLight900,
                  ),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                ),
                AppSpacing.vertical.s3,
                ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: AppSpacing.s5,
                    right: AppSpacing.s4,
                  ),
                  title: Text(
                    'Estado de siniestro',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  trailing: Chip(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    backgroundColor: claim.status == ClaimStatusType.open
                        ? context.color.statusWarning.withOpacity(0.15)
                        : context.color.statusSuccess.withOpacity(0.15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(context.radius.hard),
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    label: Text(
                      claim.status.name,
                      style: context.textStyle.bodyMediumSemiBold.copyWith(
                        color: claim.status == ClaimStatusType.open
                            ? context.color.statusWarning
                            : context.color.statusSuccess,
                      ),
                    ),
                  ),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                ),
                AppSpacing.vertical.s5,
                OutlinedList(
                  children: [
                    ListTile(
                      leading: IconWithContainer(
                        icon: IconAssets.warning,
                        backgroundColor: context.color.backgroundLight200,
                      ),
                      title: Text(
                        'Situación de riesgo',
                        style: context.textStyle.bodyMediumRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      subtitle: Text(
                        '---',
                        style: context.textStyle.bodyMediumRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: IconWithContainer(
                        icon: IconAssets.invoice,
                        backgroundColor: context.color.backgroundLight200,
                      ),
                      title: Text(
                        'Causa',
                        style: context.textStyle.bodyMediumRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      subtitle: Text(
                        claim.reason,
                        style: context.textStyle.bodyMediumRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                    ),
                  ],
                ),
                AppSpacing.vertical.s5,
                Text(
                  'Encargado de reparación',
                  style: context.textStyle.bodyMediumSemiBold.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                AppSpacing.vertical.s3,
                ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: AppSpacing.s5,
                    right: AppSpacing.s4,
                  ),
                  leading: IconWithContainer(
                    text: claim.agentName.initials,
                    backgroundColor: context.color.backgroundLight200,
                  ),
                  title: Text(
                    claim.agentName,
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  trailing: IconSvg.small(
                    IconAssets.phone,
                    color: context.color.iconLight900,
                  ),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                ),
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
          ),
        ),
      ),
    );
  }
}
