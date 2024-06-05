import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/list/filter_account_transactions_bottom_sheet/amount.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/list/filter_account_transactions_bottom_sheet/category.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/list/filter_account_transactions_bottom_sheet/category_list.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class FilterAccountTransactionsBottomSheet {
  static Future<T?> show<T>({
    required BuildContext context,
    required Future<void> Function() onApply,
    required Future<void> Function() onReset,
    required ValueChanged<DateTime> setStartDate,
    required ValueChanged<DateTime> setEndDate,
    required ValueChanged<double> setAmountFrom,
    required ValueChanged<double> setAmountTo,
    required ValueChanged<TransactionOperationType> setTransactionType,
    required DateTime? stateDate,
    required DateTime? endDate,
    required double? amountFrom,
    required double? amountTo,
    required TransactionOperationType? operationType,
    required String categorySelected,
    required void Function(String) setCategory,
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
          setTransactionType,
          stateDate,
          endDate,
          amountFrom,
          amountTo,
          operationType,
          categories,
          categorySelected,
        ),
        _buildCategories(
          modalSheetContext,
          pageIndexNotifier,
          categories,
          categorySelected,
          setCategory,
        ),
      ],
    );
  }

  static const List<Map<String, dynamic>> categories = [
    {
      'title': 'Energia',
      'emoji': '⚡',
      'backgroundColor': Color(0xfffff2e0),
      'value': 'Energia',
    },
    {
      'title': 'Alimentación',
      'emoji': '🍕',
      'backgroundColor': Color(0xfffce3dd),
      'value': 'Alimentacion',
    },
    {
      'title': 'Cultura',
      'emoji': '🎭',
      'backgroundColor': Color(0xFFE3DDFC),
      'value': 'Cultura',
    },
    {
      'title': 'Educación',
      'emoji': '📚',
      'backgroundColor': Color(0xFFE2F1DD),
      'value': 'Educacion',
    },
    {
      'title': 'Entretenimiento',
      'emoji': '🎮',
      'backgroundColor': Color(0xFFE0E0E0),
      'value': 'Entretenimiento',
    },
    {
      'title': 'Hogar',
      'emoji': '🏠',
      'backgroundColor': Color(0xFFF8EEDD),
      'value': 'Hogar',
    },
    {
      'title': 'Moda',
      'emoji': '🛍️',
      'backgroundColor': Color(0xFFFEDEF4),
      'value': 'Moda',
    },
    {
      'title': 'Salud',
      'emoji': '🏥',
      'backgroundColor': Color(0xFFDDEBFC),
      'value': 'Salud',
    },
    {
      'title': 'Tecnología',
      'emoji': '🖥️',
      'backgroundColor': Color(0xFFE0E0E0),
      'value': 'Tecnologia',
    },
    {
      'title': 'Transporte',
      'emoji': '🚗',
      'backgroundColor': Color(0xFFFEC5C4),
      'value': 'Transporte',
    },
    {
      'title': 'Viajes',
      'emoji': '🌍',
      'backgroundColor': Color(0xFFDFF5D7),
      'value': 'Viajes',
    },
  ];

  static SliverWoltModalSheetPage _buildFilters(
    BuildContext context,
    ValueNotifier<int> pageIndexNotifier,
    Future<void> Function() onApply,
    Future<void> Function() onReset,
    ValueChanged<DateTime> setStartDate,
    ValueChanged<DateTime> setEndDate,
    ValueChanged<double> setAmountFrom,
    ValueChanged<double> setAmountTo,
    ValueChanged<TransactionOperationType> setTransactionType,
    DateTime? stateDate,
    DateTime? endDate,
    double? amountFrom,
    double? amountTo,
    TransactionOperationType? operationType,
    List<Map<String, dynamic>> categories,
    String category,
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
                  title: context.loc.commonFilterDiscard,
                  type: ButtonType.text,
                  size: ButtonSize.small,
                  onPressed: () async {
                    await onReset().then((_) => context.pop());
                  },
                ),
                Button(
                  title: context.loc.commonFilterApply,
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
            context.loc.commonFilter,
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
                  AppSpacing.vertical.s2,
                  Text(
                    context.loc.commonDate,
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  DateRangeFilter(
                    startDate: stateDate,
                    endDate: endDate,
                    setStartDate: (DateTime value) => setStartDate(value),
                    setEndDate: (DateTime value) => setEndDate(value),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    context.loc.commonAmount,
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Amount(
                    amountFrom: amountFrom,
                    amountTo: amountTo,
                    operationType: operationType,
                    setAmountFrom: (double value) => setAmountFrom(value),
                    setAmountTo: (double value) => setAmountTo(value),
                    setOperationType: (TransactionOperationType value) => setTransactionType(value),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    context.loc.commonCategory,
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Category(
                    categoryValue: category,
                    categories: categories,
                    onPressed: () => pageIndexNotifier.value = 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  static SliverWoltModalSheetPage _buildCategories(
    BuildContext context,
    ValueNotifier<int> pageIndexNotifier,
    List<Map<String, dynamic>> categories,
    String categorySelected,
    void Function(String) setCategory,
  ) =>
      SliverWoltModalSheetPage(
        hasSabGradient: false,
        stickyActionBar: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                title: context.loc.commonCancel,
                type: ButtonType.text,
                size: ButtonSize.small,
                onPressed: () async {},
              ),
              Button(
                title: context.loc.commonFilterSelect,
                size: ButtonSize.small,
                onPressed: () async {
                  pageIndexNotifier.value = 0;
                },
              ),
            ],
          ),
        ),
        leadingNavBarWidget: IconButton(
          onPressed: () {
            pageIndexNotifier.value = 0;
          },
          icon: IconSvg.small(
            IconAssets.chevronLeft,
            color: context.color.iconLight900,
          ),
        ),
        backgroundColor: context.color.bottomSheetBackground,
        sabGradientColor: context.color.bottomSheetBackground,
        topBarTitle: Text(
          context.loc.commonCategory,
          style: context.textStyle.h6,
        ),
        isTopBarLayerAlwaysVisible: true,
        trailingNavBarWidget: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
            pageIndexNotifier.value = 0;
          },
          icon: IconSvg.small(
            IconAssets.xMark,
            color: context.color.iconLight900,
          ),
        ),
        mainContentSlivers: [
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
              bottom: 80,
            ),
            sliver: SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: context.color.backgroundLight0,
                  borderRadius: BorderRadius.circular(
                    context.radius.soft,
                  ),
                  border: Border.all(
                    color: context.color.strokeLigth100,
                  ),
                ),
                child: CategoryList(
                  categories: categories,
                  categorySelected: categorySelected,
                  setCategory: setCategory,
                  onPressed: () => pageIndexNotifier.value = 0,
                ),
              ),
            ),
          ),
        ],
      );
}
