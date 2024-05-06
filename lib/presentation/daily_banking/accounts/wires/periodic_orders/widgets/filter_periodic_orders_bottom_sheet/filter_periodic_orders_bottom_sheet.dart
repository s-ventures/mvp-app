import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/periodic_orders/widgets/filter_periodic_orders_bottom_sheet/amount_range.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/periodic_orders/widgets/filter_periodic_orders_bottom_sheet/date_range.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/periodic_orders/widgets/filter_periodic_orders_bottom_sheet/frecuency.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class FilterPeriodicOrdersBottomSheet {
  static Future<T?> show<T>({
    required BuildContext context,
    required Future<void> Function() onApply,
    required Future<void> Function() onReset,
    required ValueChanged<DateTime> setStartDate,
    required ValueChanged<DateTime> setEndDate,
    required ValueChanged<double> setAmountFrom,
    required ValueChanged<double> setAmountTo,
    required ValueChanged<PeriodicOrderFrecuencyType> setFrecuencyTo,
    required DateTime? startDate,
    required DateTime? endDate,
    required double? amountFrom,
    required double? amountTo,
    required PeriodicOrderFrecuencyType? frecuency,
  }) {
    final pageIndexNotifier = ValueNotifier(0);

    return WoltModalSheet.show(
      context: context,
      useRootNavigator: true,
      pageIndexNotifier: pageIndexNotifier,
      modalTypeBuilder: (context) => WoltModalType.bottomSheet,
      minPageHeight: 0,
      maxPageHeight: 0.99,
      onModalDismissedWithBarrierTap: () {
        onReset().then((_) => context.pop());
      },
      pageListBuilder: (modalSheetContext) => [
        _buildFilters(
          modalSheetContext,
          pageIndexNotifier,
          onApply,
          onReset,
          setStartDate,
          setEndDate,
          setAmountFrom,
          setAmountTo,
          setFrecuencyTo,
          startDate,
          endDate,
          amountFrom,
          amountTo,
          frecuency,
        ),
      ],
    );
  }

  static SliverWoltModalSheetPage _buildFilters(
    BuildContext context,
    ValueNotifier<int> pageIndexNotifier,
    Future<void> Function() onApply,
    Future<void> Function() onReset,
    ValueChanged<DateTime> setStartDate,
    ValueChanged<DateTime> setEndDate,
    ValueChanged<double> setAmountFrom,
    ValueChanged<double> setAmountTo,
    ValueChanged<PeriodicOrderFrecuencyType> setFrecuencyTo,
    DateTime? startDate,
    DateTime? endDate,
    double? amountFrom,
    double? amountTo,
    PeriodicOrderFrecuencyType? frecuency,
  ) =>
      SliverWoltModalSheetPage(
        hasSabGradient: false,
        stickyActionBar: Padding(
          padding: const EdgeInsets.only(
              right: AppSpacing.s5, bottom: AppSpacing.s5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                title: 'Descartar filtros',
                type: ButtonType.text,
                size: ButtonSize.small,
                onPressed: () async {
                  await onReset().then((_) => context.pop());
                },
              ),
              Button(
                title: 'Aplicar',
                size: ButtonSize.small,
                onPressed: () async {
                  await onApply().then((_) => context.pop());
                },
              ),
            ],
          ),
        ),
        // backgroundColor: context.color.bottomSheetBackground,
        sabGradientColor: context.color.bottomSheetBackground,
        leadingNavBarWidget: Transform.translate(
          offset: const Offset(16, 24),
          child: Text(
            'Filtrar',
            style: context.textStyle.h6,
          ),
        ),
        isTopBarLayerAlwaysVisible: true,
        trailingNavBarWidget: IconButton(
          onPressed: () => context.pop(),
          icon: IconSvg.small(
            IconAssets.xMark,
            color: context.color.iconLight900,
          ),
        ),
        mainContentSlivers: [
          SliverPadding(
            padding: const EdgeInsets.only(
              left: AppSpacing.s5,
              right: AppSpacing.s5,
              top: AppSpacing.s6,
              bottom: 100,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text(
                    'Periodicidad',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  FilterPeriodicOrdersFrecuency(
                    frecuency: frecuency,
                    setFrecuencyTo: (PeriodicOrderFrecuencyType value) =>
                        setFrecuencyTo(value),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Fecha',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  FilterPeriodicOrdersDateRange(
                    startDate: startDate,
                    endDate: endDate,
                    setStartDate: (DateTime value) => setStartDate(value),
                    setEndDate: (DateTime value) => setEndDate(value),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Importe',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  FilterPeriodicOrdersAmount(
                    amountFrom: amountFrom,
                    amountTo: amountTo,
                    setAmountFrom: (double value) => setAmountFrom(value),
                    setAmountTo: (double value) => setAmountTo(value),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
