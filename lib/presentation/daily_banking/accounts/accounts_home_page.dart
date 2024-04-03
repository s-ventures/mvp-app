import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/simplified/simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/list/account_list_sliver_pinned_header.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/list/account_transaction_list.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/list/transactions_header.dart';
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
    return Builder(
      builder: (context) {
        return CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverPinnedOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            const AccountListSliverPinnedHeader(),
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
                      label: 'Añadir dinero',
                      onPressed: () async {},
                    ),
                    IconOverTextButton(
                      icon: IconAssets.transfer,
                      type: ButtonType.filled,
                      label: 'Enviar dinero',
                      onPressed: () => context.pushNamed(AppRoute.dailyBankingTransfers.name),
                    ),
                    IconOverTextButton(
                      icon: IconAssets.wallet,
                      type: ButtonType.outlined,
                      label: 'Cuentas',
                      onPressed: () => context.pushNamed(AppRoute.dailyBankingAggregatedAccounts.name),
                    ),
                  ],
                ),
              ),
            ),
            AppSpacing.vertical.s6.sliver,
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
              sliver: SliverToBoxAdapter(
                child: TransactionsHeader(
                  onPressed: () => context.pushNamed(AppRoute.dailyBankingSearchAccountTransactions.name),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
              sliver: AccountTransactionList(
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
            AppSpacing.vertical.s5.sliver,
          ],
        );
      },
    );
  }
}
