import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/erp/quotes/pending/pending_quotes_controller.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class QuotesPending extends ConsumerStatefulWidget {
  const QuotesPending({
    required this.type,
    required this.setType,
    super.key,
  });

  final SwitchViewType type;
  final void Function(SwitchViewType) setType;

  @override
  ConsumerState<QuotesPending> createState() => _QuotesPendingState();
}

class _QuotesPendingState extends ConsumerState<QuotesPending> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(pendingQuotesControllerProvider.notifier).init(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pendingQuotes = ref.watch(
      pendingQuotesControllerProvider.select((value) => value.pendingQuotes),
    );
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'Pendientes',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ),
            SwitchView(
              onChanged: widget.setType,
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        pendingQuotes.when(
          data: (pendingQuotes) {
            if (widget.type == SwitchViewType.list) {
              return ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: pendingQuotes.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final quotation = pendingQuotes[index];

                  return ErpListTile(
                    title: quotation.number,
                    date: quotation.createdDate.formatToDayMonthYear(),
                    // TODO(georgeta): Añadir stakeholder name cuando BFMF lo añada
                    contact: 'Nombre Contacto',
                    amount: quotation.totalAmount,
                    status: quotation.status.name,
                    onPressed: () async => context.pushNamed(
                      AppRoute.erpQuotesDetails.name,
                    ),
                  );
                },
              );
            } else {
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: AppSpacing.s5,
                  mainAxisSpacing: AppSpacing.s5,
                ),
                itemCount: pendingQuotes.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final quotation = pendingQuotes[index];

                  return ErpGridTile(
                    title: quotation.number,
                    date: quotation.createdDate.formatToDayMonthYear(),
                    // TODO(georgeta): Añadir stakeholder name cuando BFMF lo añada
                    contact: 'Nombre Contacto',
                    amount: quotation.totalAmount,
                    status: quotation.status.name,
                    onPressed: () async => context.pushNamed(
                      AppRoute.erpQuotesDetails.name,
                    ),
                  );
                },
              );
            }
          },
          error: (error, _) => Center(
            child: Text(
              error.toString(),
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.error,
              ),
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator.adaptive()),
        ),
      ],
    );
  }
}
