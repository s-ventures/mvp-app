import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/accounts/simplified/simplified_accounts_controller.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/simplified/simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/list/account_list_sliver_pinned_header.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/list/account_transaction_list.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/list/account_transactions_header.dart';
import 'package:manifiesto_mvp_app/presentation/routing/params.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccountsHomePage extends ConsumerStatefulWidget {
  const AccountsHomePage({super.key});

  @override
  ConsumerState<AccountsHomePage> createState() => _AccountsState();
}

class _AccountsState extends ConsumerState<AccountsHomePage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    ref.read(simplifiedAccountsControllerProvider.notifier).init();
    ref.read(simplifiedAccountTransactionsControllerProvider.notifier).init();
    ref.read(simplifiedAccountTransactionsControllerProvider.notifier).resetFilters();
    _scrollController.addListener(_loadMore);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _loadMore() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      ref.read(simplifiedAccountTransactionsControllerProvider.notifier).loadNextPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final accountTransactionsState = ref.watch(simplifiedAccountTransactionsControllerProvider);
    final accountsState = ref.watch(simplifiedAccountsControllerProvider);
    final accountTransactionsController =
        ref.read(simplifiedAccountTransactionsControllerProvider.notifier);
    final accountsController = ref.read(simplifiedAccountsControllerProvider.notifier);

    return Builder(
      builder: (context) {
        return CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverPinnedOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            AccountListSliverPinnedHeader(
              accounts: accountsState.accounts,
              selectedAccountIndex: accountsState.selectedAccountIndex,
              setSelectedAccountIndex: accountsController.setSelectedAccountIndex,
              selectAccount: accountsController.selectAccount,
            ),
            AppSpacing.vertical.s3.sliver,
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconOverTextButton(
                      icon: IconAssets.plus,
                      type: ButtonType.outlined,
                      label: context.loc.dailyBankingAccountsAddMoney,
                      onPressed: () => context.pushNamed(
                        AppRoute.dailyBankingAddMoney.name,
                      ),
                    ),
                    IconOverTextButton(
                      icon: IconAssets.transfer,
                      type: ButtonType.filled,
                      label: context.loc.dailyBankingAccountsSendMoney,
                      onPressed: () => context.pushNamed(
                        AppRoute.dailyBankingTransfers.name,
                      ),
                    ),
                    IconOverTextButton(
                      icon: IconAssets.calendar,
                      type: ButtonType.outlined,
                      label: context.loc.dailyBankingAccountsSchedule,
                      onPressed: () => context.pushNamed(
                        AppRoute.dailyBankingScheduledTransfers.name,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppSpacing.vertical.s6.sliver,
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
              sliver: SliverToBoxAdapter(
                child: AccountTransactionsHeader(
                  applyFilters: accountTransactionsController.applyFilters,
                  resetFilters: accountTransactionsController.resetFilters,
                  stateDate: accountTransactionsState.startDate,
                  endDate: accountTransactionsState.endDate,
                  amountFrom: accountTransactionsState.amountFrom,
                  amountTo: accountTransactionsState.amountTo,
                  operationType: accountTransactionsState.operationType,
                  setStartDate: accountTransactionsController.setStartDate,
                  setEndDate: accountTransactionsController.setEndDate,
                  setAmountFrom: accountTransactionsController.setAmountFrom,
                  setAmountTo: accountTransactionsController.setAmountTo,
                  setOperationType: accountTransactionsController.setOperationType,
                  setCategory: accountTransactionsController.setCategory,
                  category: accountTransactionsState.category,
                  onPressed: () => context.pushNamed(
                    AppRoute.dailyBankingSearchAccountTransactions.name,
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s5,
                vertical: AppSpacing.s3,
              ),
              sliver: AccountTransactionList(
                transactions: accountTransactionsState.transactions,
                onTransactionPressed: (transaction) {
                  context.pushNamed(
                    AppRoute.dailyBankingAccountTransactionDetails.name,
                    extra: AccountTransactionDetailsRouteParams(
                      transactionId: transaction.id.getOrCrash(),
                      accountId: transaction.accountId.getOrCrash(),
                      type: transaction.type,
                    ),
                  );
                },
              ),
            ),
            AppSpacing.vertical.s5.sliver,
          ],
        );
      },
    );
  }
}
