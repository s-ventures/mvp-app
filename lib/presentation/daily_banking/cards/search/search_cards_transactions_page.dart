import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/transactions/filter/filter_simplified_card_transactions_controller.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/search/widgets/search_bar.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/transactions/list/card_transactions_list.dart';
import 'package:rxdart/rxdart.dart';
import 'package:ui_kit/ui_kit.dart';

class SearchCardTransactionsPage extends ConsumerStatefulWidget {
  const SearchCardTransactionsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchCardTransactionsPageState();
}

class _SearchCardTransactionsPageState
    extends ConsumerState<SearchCardTransactionsPage> {
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

    _debounceSubscription =
        _textSubject.debounceTime(const Duration(seconds: 1)).distinct().listen(
      (text) {
        ref
            .read(filterSimplifiedCardTransactionsControllerProvider.notifier)
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
    final controller =
        ref.read(filterSimplifiedCardTransactionsControllerProvider.notifier);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Buscar',
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async {
                  await controller.resetFilters().then((_) => context.pop());
                },
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: TransactionSearchBar(
                  controller: _controller,
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
            //       // TODO(jesus): Pass the categories from the provider
            //       // categories: categories,
            //       onCategoryPressed: print,
            //     ),
            //   ),
            // ),
            SliverPadding(
              padding: const EdgeInsets.all(
                AppSpacing.s5,
              ),
              sliver: CardTransactionsList(
                onTransactionPressed: (transaction) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
