import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/transactions/simplified/simplified_card_transactions_controller.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/list/transactions_header.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/list/card_list_sliver_pinned_header.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/list/card_transactions_list.dart';
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
    _scrollController.addListener(_loadMore);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _loadMore() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      ref
          .read(simplifiedCardTransactionsControllerProvider.notifier)
          .loadNextPage();
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
            const CardListSliverPinnedHeader(),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
              sliver: SliverToBoxAdapter(
                child: TransactionsHeader(
                  onPressed: () => context.pushNamed(
                      AppRoute.dailyBankingSearchCardTransactions.name),
                ),
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.s5),
              sliver: CardTransactionsList(),
            ),
            AppSpacing.vertical.s5.sliver,
          ],
        );
      },
    );
  }
}
