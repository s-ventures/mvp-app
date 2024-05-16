import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/periodic_orders/detailed/detailed_periodic_order_controller.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:manifiesto_mvp_app/presentation/routing/params.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class PeriodicOrderDetailsPage extends ConsumerStatefulWidget {
  const PeriodicOrderDetailsPage({
    required this.periodicOrderId,
    super.key,
  });

  final int periodicOrderId;

  @override
  ConsumerState<PeriodicOrderDetailsPage> createState() =>
      _PeriodicOrderDetailsPageState();
}

class _PeriodicOrderDetailsPageState
    extends ConsumerState<PeriodicOrderDetailsPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(detailedPeriodicOrderControllerProvider.notifier).init(
              periodicOrderId: widget.periodicOrderId,
            ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final periodicOrder =
        ref.watch(detailedPeriodicOrderControllerProvider).periodicOrder;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: context.loc.dailyBankingScheduledTransfers,
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.edit,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () => context.pushNamed(
                    AppRoute.dailyBankingScheduledTransferEdit.name,
                    extra: PeriodicOrderDetailsRouteParams(
                      periodicOrderId: widget.periodicOrderId,
                    ),
                  ),
                ),
              ],
            ),
          ];
        },
        body: periodicOrder.when(
          data: (periodicOrder) => ListView(
            padding: const EdgeInsets.all(AppSpacing.s5),
            children: [
              CustomCard(
                child: Column(
                  children: [
                    Text(
                      periodicOrder.amount.toCurrency(plusSign: false),
                      style: context.textStyle.h4.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    AppSpacing.vertical.s5,
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppSpacing.s3,
                        horizontal: AppSpacing.s5,
                      ),
                      decoration: ShapeDecoration(
                        color: context.color.neutralLight100,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(context.radius.soft),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            periodicOrder.frecuency ==
                                    PeriodicOrderFrecuencyType.daily
                                ? context.loc.commonFrequencyDaily
                                : periodicOrder.frecuency ==
                                        PeriodicOrderFrecuencyType.weekly
                                    ? context.loc.commonFrequencyWeekly
                                    : periodicOrder.frecuency ==
                                            PeriodicOrderFrecuencyType.monthly
                                        ? context.loc.commonFrequencyMonthly
                                        : '',
                            style:
                                context.textStyle.bodyMediumSemiBold.copyWith(
                              color: context.color.textLight900,
                            ),
                          ),
                          AppSpacing.horizontal.s3,
                          Text(
                            context.loc.commonDateSinceDate(
                              periodicOrder.startDate.formatToDayMonthYear() ??
                                  '',
                            ),
                            style: context.textStyle.bodyMediumRegular.copyWith(
                              color: context.color.textLight600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.vertical.s5,
              CustomCard(
                outlined: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.loc.commonBeneficiary,
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    Text(
                      periodicOrder.beneficiaryName,
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    AppSpacing.vertical.s5,
                    Text(
                      context.loc.commonIban,
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    Text(
                      periodicOrder.beneficiaryAccount,
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    AppSpacing.vertical.s5,
                    Text(
                      context.loc.commonAmount,
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          periodicOrder.amount.toCurrency(plusSign: false),
                          style: context.textStyle.bodyMediumRegular.copyWith(
                            color: context.color.textLight900,
                          ),
                        ),
                        AppSpacing.horizontal.s2,
                        Text(
                          '(${periodicOrder.currencyCode})',
                          style: context.textStyle.bodyMediumRegular.copyWith(
                            color: context.color.textLight900,
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.vertical.s5,
                    Text(
                      context.loc.commonConcept,
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    Text(
                      periodicOrder.concept != null
                          ? periodicOrder.concept!
                          : context.loc.commonNoConcept,
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    AppSpacing.vertical.s5,
                    Text(
                      context.loc.commonFrequency,
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    Text(
                      periodicOrder.frecuency.name,
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    AppSpacing.vertical.s5,
                    Text(
                      context.loc.dailyBankingScheduledTransfersStartedThe,
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    Text(
                      periodicOrder.startDate
                          .formatToTransactionDate()
                          .toString(),
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    AppSpacing.vertical.s5,
                    Text(
                      context.loc.dailyBankingScheduledTransfersNextPaid,
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    Text(
                      periodicOrder.endDate != null
                          ? periodicOrder.endDate
                              .formatToTransactionDate()
                              .toString()
                          : '-',
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.vertical.s7,
              Row(
                children: [
                  Expanded(
                    child: Button(
                      title: context
                          .loc.dailyBankingScheduledTransfersRemoveTransfer,
                      size: ButtonSize.small,
                      background: context.color.statusError.withOpacity(
                        .15,
                      ),
                      foreground: context.color.statusError,
                      onPressed: () async => AlertBottomSheet.show(
                        context: context,
                        icon: IconAssets.trash,
                        title: context
                            .loc.dailyBankingScheduledTransfersRemoveModalTitle,
                        buttonOkText: context.loc
                            .dailyBankingScheduledTransfersRemoveModalButtonRemove,
                        buttonOkBackground:
                            context.color.statusError.withOpacity(
                          .15,
                        ),
                        buttonOkForeground: context.color.statusError,
                        buttonCancelText: context.loc.commonCancel,
                        buttonCancelType: ButtonType.text,
                        buttonsOrientation: AlertButtonsOrientation.vertical,
                      ),
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
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
