import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/filter_quotes_bottom_sheet/widgets/contacts_filter.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/filter_quotes_bottom_sheet/widgets/status_filter.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class FilterQuotesBottomSheet {
  static Future<T?> show<T>({
    required BuildContext context,
    required Future<void> Function() onApply,
    required Future<void> Function() onReset,
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
        ),
      ],
    );
  }

  static SliverWoltModalSheetPage _buildFilters(
    BuildContext context,
    ValueNotifier<int> pageIndexNotifier,
    Future<void> Function() onApply,
    Future<void> Function() onReset,
  ) =>
      SliverWoltModalSheetPage(
        hasSabGradient: false,
        stickyActionBar: ColoredBox(
          color: const Color(0xFFEFEFF0),
          child: Padding(
            padding: const EdgeInsets.only(
              right: AppSpacing.s5,
              // bottom: AppSpacing.s5,
              // top: AppSpacing.s5,
            ),
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
        ),
        backgroundColor: context.color.bottomSheetBackground,
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
              bottom: 80,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text(
                    'Estado',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  const QuotesStatusFilter(
                    status: 'status',
                    setStatusTo: print,
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Fecha de vencimiento',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  DateRangeFilter(
                    startDate: DateTime.now().subtract(
                      const Duration(
                        days: 30,
                      ),
                    ),
                    endDate: DateTime.now(),
                    setStartDate: print,
                    setEndDate: print,
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Importe',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  const FilterAmountRange(
                    from: 0,
                    to: 1000,
                    setFrom: print,
                    setTo: print,
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Contacto',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  const QuotesContactFilter(
                    contacts: 'contacts',
                    setContactTo: print,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
