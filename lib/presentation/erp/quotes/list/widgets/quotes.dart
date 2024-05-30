import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/erp/quotes/simplified/simplified_quotes_controller.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/filter_quotes_bottom_sheet/filter_quotes_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class Quotes extends ConsumerStatefulWidget {
  const Quotes({
    required this.viewType,
    super.key,
  });

  final SwitchViewType viewType;

  @override
  ConsumerState<Quotes> createState() => _QuotesState();
}

class _QuotesState extends ConsumerState<Quotes> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(simplifiedQuotesControllerProvider.notifier).init(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final quotes = ref.watch(
      simplifiedQuotesControllerProvider.select((value) => value.quotes),
    );
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Presupuestos',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            Button(
              icon: IconAssets.filter,
              size: ButtonSize.extraSmall,
              type: ButtonType.outlined,
              onPressed: () => FilterQuotesBottomSheet.show(
                context: context,
                onApply: () async {},
                onReset: () async {},
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        FakeSearchBar(
          onPressed: () => context.pushNamed(
            AppRoute.erpQuotesSearch.name,
          ),
        ),
        AppSpacing.vertical.s5,
        quotes.when(
          data: (quotes) {
            if (widget.viewType == SwitchViewType.list) {
              return ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: quotes.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final quotation = quotes[index];

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
                itemCount: quotes.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  final quotation = quotes[index];

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
