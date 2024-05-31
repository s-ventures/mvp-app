import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/erp/quotes/pending/pending_quotes_controller.dart';
import 'package:manifiesto_mvp_app/application/erp/quotes/simplified/simplified_quotes_controller.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/widgets/overview.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/widgets/pending.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/widgets/quotes.dart';
import 'package:ui_kit/ui_kit.dart';

class QuotesTab extends ConsumerStatefulWidget {
  const QuotesTab({super.key});

  @override
  ConsumerState<QuotesTab> createState() => _QuotesTabState();
}

class _QuotesTabState extends ConsumerState<QuotesTab> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(pendingQuotesControllerProvider.notifier).init(),
      );
      unawaited(
        ref.read(simplifiedQuotesControllerProvider.notifier).init(),
      );
    });
    super.initState();
  }

  SwitchViewType type = SwitchViewType.list;

  @override
  Widget build(BuildContext context) {
    final quotes = ref.watch(
      simplifiedQuotesControllerProvider.select((value) => value.quotes),
    );
    final pendingQuotes = ref.watch(
      pendingQuotesControllerProvider.select((value) => value.pendingQuotes),
    );

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.s5),
      children: [
        const QuotesOverview(),
        AppSpacing.vertical.s5,
        QuotesPending(
          pendingQuotes: pendingQuotes,
          type: type,
          setType: (value) {
            setState(() {
              type = value;
            });
          },
        ),
        AppSpacing.vertical.s5,
        Quotes(
          quotes: quotes,
          viewType: type,
        ),
      ],
    );
  }
}
