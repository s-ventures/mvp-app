import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/cards/simplified/simplified_cards_controller.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/transactions/simplified/simplified_card_transactions_controller.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/list/card_list_sliver_pinned_header.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/list/card_transactions_header.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/list/card_transactions_list.dart';
import 'package:manifiesto_mvp_app/presentation/routing/params.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CardsHomePage extends ConsumerStatefulWidget {
  const CardsHomePage({
    super.key,
  });

  @override
  ConsumerState<CardsHomePage> createState() => _CardsHomePageState();
}

class _CardsHomePageState extends ConsumerState<CardsHomePage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    ref.read(simplifiedCardsControllerProvider.notifier).init();
    ref.read(simplifiedCardTransactionsControllerProvider.notifier).init();
    ref.read(simplifiedCardTransactionsControllerProvider.notifier).resetFilters();
    _scrollController.addListener(_loadMore);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _loadMore() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      ref.read(simplifiedCardTransactionsControllerProvider.notifier).loadNextPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final simplifiedCardsState = ref.watch(simplifiedCardsControllerProvider);
    final transactionState = ref.watch(simplifiedCardTransactionsControllerProvider);
    final simplifiedCardController = ref.read(simplifiedCardsControllerProvider.notifier);
    final transactionController = ref.read(simplifiedCardTransactionsControllerProvider.notifier);

    return Builder(
      builder: (context) {
        return CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverPinnedOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            CardListSliverPinnedHeader(
              selectedCardsIndex: simplifiedCardsState.selectedCardIndex,
              cards: simplifiedCardsState.cards,
              selectCard: simplifiedCardController.selectCard,
              setSelectedCardIndex: simplifiedCardController.setSelectedCardIndex,
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
              sliver: SliverToBoxAdapter(
                child: CardTransactionsHeader(
                  stateDate: transactionState.startDate,
                  endDate: transactionState.endDate,
                  amountFrom: transactionState.amountFrom,
                  amountTo: transactionState.amountTo,
                  operationType: transactionState.operationType,
                  category: transactionState.category,
                  setStartDate: transactionController.setStartDate,
                  setEndDate: transactionController.setEndDate,
                  setAmountFrom: transactionController.setAmountFrom,
                  setAmountTo: transactionController.setAmountTo,
                  setOperationType: transactionController.setOperationType,
                  setCategory: transactionController.setCategory,
                  applyFilters: transactionController.applyFilters,
                  resetFilters: transactionController.resetFilters,
                  onPressed: () => context.pushNamed(
                    AppRoute.dailyBankingSearchCardTransactions.name,
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
              sliver: CardTransactionsList(
                transactions: transactionState.transactions,
                onTransactionPressed: (transaction) {
                  context.pushNamed(
                    AppRoute.dailyBankingCardTransactionDetails.name,
                    extra: CardTransactionDetailsRouteParams(
                      // TODO(georgeta): Remove hardcoded value when 'cardContractId' is send by BFMF
                      cardContractId: '1068',
                      transactionId: transaction.id.getOrCrash(),
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
