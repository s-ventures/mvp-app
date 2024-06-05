import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/claims/detailed/detailed_claim_controller.dart';
import 'package:manifiesto_mvp_app/presentation/extensions/claims_status_color_extension.dart';
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
  ConsumerState<InsuranceClaimDetailsPage> createState() => _InsuranceClaimDetailsPageState();
}

class _InsuranceClaimDetailsPageState extends ConsumerState<InsuranceClaimDetailsPage> {
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
                title: context.loc.dailyBankingInsurancesPolicyDetailsClaimsDetails,
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
                InsuranceDetailsListTile(
                  leadingEmoji: '🖥️',
                  leadingBackgroundColor: const Color(0xFFE0E0E0),
                  title: claim.reason,
                  subtitle: context.loc.dailyBankingInsurancesPolicyNumberWithParams(
                    claim.id.getOrCrash(),
                  ),
                  category: claim.riskType,
                ),
                AppSpacing.vertical.s5,
                ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: AppSpacing.s5,
                    right: AppSpacing.s5,
                  ),
                  title: Text(
                    context.loc.dailyBankingInsurancesPolicyNumber,
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  trailing: Text(
                    claim.insuranceId.getOrCrash(),
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
                    context.loc.dailyBankingInsurancesPolicyDetailsClaimsDetailsOpeningDate,
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
                    context.loc.dailyBankingInsurancesPolicyDetailsClaimsDetailsStartDateProcessing,
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
                    context.loc.dailyBankingInsurancesPolicyDetailsClaimsDetailsEndDateProcessing,
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  trailing: Button(
                    size: ButtonSize.extraSmall,
                    onPressed: () async {},
                    title: claim.processEndDate?.formatToDayMonthYear() ?? '---',
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
                    context.loc.dailyBankingInsurancesPolicyDetailsClaimsDetailsStateClaim,
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  trailing: Chip(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    backgroundColor: claim.status.backgroundColor(context),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(context.radius.hard),
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    label: Text(
                      claim.status.name,
                      style: context.textStyle.bodyMediumSemiBold
                          .copyWith(color: claim.status.textColor(context)),
                    ),
                  ),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                ),
                AppSpacing.vertical.s5,
                // TODO(sergio): Mapa pendiente de implementar
                const MovementDetailsMap(
                  location: 'Madrid, España',
                ),

                AppSpacing.vertical.s5,
                Text(
                  context.loc.dailyBankingInsurancesPolicyDetailsClaimsDetailsContactPerson,
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
                    backgroundColor: context.color.neutralLight100,
                  ),
                  title: Text(
                    claim.agentName,
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight600,
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
                      dense: true,
                      leading: IconWithContainer(
                        icon: IconAssets.phone,
                        backgroundColor: context.color.neutralLight100,
                        foreground: context.color.textLight900,
                      ),
                      title: Text(
                        context.loc.commonPhone,
                        style: context.textStyle.buttonTabBar
                            .copyWith(color: context.color.textLight600),
                      ),
                      subtitle: Text(
                        claim.agentTelephone,
                        style: context.textStyle.bodySmallRegular,
                      ),
                    ),
                    ListTile(
                      dense: true,
                      leading: IconWithContainer(
                        icon: IconAssets.mail,
                        backgroundColor: context.color.neutralLight100,
                        foreground: context.color.textLight900,
                      ),
                      title: Text(
                        context.loc.commonEmail,
                        style: context.textStyle.buttonTabBar
                            .copyWith(color: context.color.textLight600),
                      ),
                      subtitle: Text(
                        claim.agentEmail,
                        style: context.textStyle.bodySmallRegular,
                      ),
                    ),
                    ListTile(
                      dense: true,
                      leading: IconWithContainer(
                        icon: IconAssets.marker,
                        backgroundColor: context.color.neutralLight100,
                        foreground: context.color.textLight900,
                      ),
                      title: Text(
                        context.loc.commonCity,
                        style: context.textStyle.buttonTabBar
                            .copyWith(color: context.color.textLight600),
                      ),
                      // TODO(georgeta): Este campo no nos llega del BFMF
                      subtitle: Text(
                        'Madrid, 28015, España',
                        style: context.textStyle.bodySmallRegular,
                      ),
                    ),
                  ],
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
              child: CustomLoader(),
            ),
          ),
        ),
      ),
    );
  }
}
