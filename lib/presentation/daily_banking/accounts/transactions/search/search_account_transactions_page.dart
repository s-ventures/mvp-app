import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/simplified/simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/list/account_transaction_list.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/list/filter_account_transactions_bottom_sheet/filter_account_transactions_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/search/widgets/filter_list.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/search/widgets/search_bar.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:rxdart/rxdart.dart';
import 'package:ui_kit/ui_kit.dart';

class SearchAccountTransactionsPage extends ConsumerStatefulWidget {
  const SearchAccountTransactionsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchAccountTransactionsPageState();
}

class _SearchAccountTransactionsPageState extends ConsumerState<SearchAccountTransactionsPage> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  final _textSubject = PublishSubject<String>();
  StreamSubscription<String>? _debounceSubscription;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      _textSubject.add(_controller.text);
    });

    _debounceSubscription = _textSubject.debounceTime(const Duration(seconds: 1)).distinct().listen(
      (text) {
        ref
            .read(
              simplifiedAccountTransactionsControllerProvider.notifier,
            )
            .setSearch(text);
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    unawaited(_debounceSubscription?.cancel());
    unawaited(_textSubject.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.read(simplifiedAccountTransactionsControllerProvider.notifier);
    final state = ref.watch(simplifiedAccountTransactionsControllerProvider);

    final stateDate = state.startDate;
    final endDate = state.endDate;
    final amountFrom = state.amountFrom;
    final amountTo = state.amountTo;
    final operationType = state.operationType;
    final categorySelected = state.category;

    final isFilterApplied = stateDate != null ||
        endDate != null ||
        amountFrom != null ||
        amountTo != null ||
        operationType != TransactionOperationType.all;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: context.loc.commonSearch,
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async {
                  await controller.resetFilters().then((_) => context.pop());
                },
              ),
              actions: [
                Stack(
                  children: [
                    Button(
                      icon: IconAssets.filter,
                      type: ButtonType.outlined,
                      size: ButtonSize.extraSmall,
                      onPressed: () async {
                        await FilterAccountTransactionsBottomSheet.show<void>(
                          context: context,
                          onApply: controller.applyFilters,
                          onReset: controller.resetFilters,
                          stateDate: stateDate,
                          endDate: endDate,
                          amountFrom: amountFrom,
                          amountTo: amountTo,
                          operationType: operationType,
                          setStartDate: controller.setStartDate,
                          setEndDate: controller.setEndDate,
                          setAmountFrom: controller.setAmountFrom,
                          setAmountTo: controller.setAmountTo,
                          setTransactionType: controller.setOperationType,
                          setCategory: controller.setCategory,
                          categorySelected: categorySelected,
                        );
                      },
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
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(
                  kToolbarHeight + (isFilterApplied ? kTextTabBarHeight : 0),
                ),
                child: Column(
                  children: [
                    TransactionSearchBar(
                      controller: _controller,
                    ),
                    if (isFilterApplied)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.s5,
                        ),
                        child: FilterList(
                          stateDate: stateDate,
                          endDate: endDate,
                          amountFrom: amountFrom,
                          amountTo: amountTo,
                          operationType: operationType,
                          onClearDateRange: () {
                            controller
                              ..setStartDate(null)
                              ..setEndDate(null)
                              ..applyFilters();
                          },
                          onClearAmountRange: () {
                            controller
                              ..setAmountFrom(null)
                              ..setAmountTo(null)
                              ..applyFilters();
                          },
                          onClearCreditDebit: () {
                            controller
                              ..setOperationType(TransactionOperationType.all)
                              ..applyFilters();
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: CustomScrollView(
          slivers: [
            // const SliverPadding(
            //   padding: EdgeInsets.all(AppSpacing.s5),
            //   sliver: SliverToBoxAdapter(
            //     child: RecentCategories(
            //       // categories: categories,
            //       onCategoryPressed: print,
            //     ),
            //   ),
            // ),
            SliverPadding(
              padding: const EdgeInsets.all(
                AppSpacing.s5,
              ),
              sliver: AccountTransactionList(
                transactions: state.transactions,
                onTransactionPressed: (transaction) {
                  context.pushNamed(
                    AppRoute.dailyBankingAccountTransactionDetails.name,
                    pathParameters: {
                      'transactionId': transaction.id.getOrCrash(),
                      'accountId': transaction.accountId.getOrCrash(),
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
