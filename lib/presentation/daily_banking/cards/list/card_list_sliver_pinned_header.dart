import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/cards/simplified/simplified_cards_controller.dart';
import 'package:manifiesto_mvp_app/domain/cards/cards/entities/simplified_card.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/details/card_details_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CardListSliverPinnedHeader extends ConsumerStatefulWidget {
  const CardListSliverPinnedHeader({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountListSliverPinnedHeaderState();
}

class _AccountListSliverPinnedHeaderState extends ConsumerState<CardListSliverPinnedHeader> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(simplifiedCardsControllerProvider.notifier).init());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final accounts = ref.watch(
      simplifiedCardsControllerProvider.select((value) => value.cards),
    );
    final controller = ref.read(simplifiedCardsControllerProvider.notifier);

    return SliverAppBar(
      shadowColor: Colors.grey,
      scrolledUnderElevation: 4,
      pinned: true,
      surfaceTintColor: context.color.backgroundLight200,
      backgroundColor: context.color.backgroundLight200,
      toolbarHeight: 250,
      flexibleSpace: accounts.mapOrNull(
            data: (data) => _CardList(
              cards: data.value,
              onPageChanged: controller.selectCard,
            ),
          ) ??
          const CircularProgressIndicator.adaptive(),
    );
  }
}

class _CardList extends StatelessWidget {
  const _CardList({
    required this.cards,
    required this.onPageChanged,
  });

  final List<SimplifiedCard> cards;
  final void Function({
    required UniqueId cardContractId,
    required UniqueId cardId,
  }) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(viewportFraction: .9),
      itemCount: cards.length,
      onPageChanged: (index) {
        final card = cards[index];
        onPageChanged(
          cardContractId: card.contract.id,
          cardId: card.id,
        );
      },
      itemBuilder: (context, index) {
        final card = cards[index];

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: CustomCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomChip(
                      title: Row(
                        children: [
                          Text(
                            'Alias',
                            style: context.textStyle.bodySmallSemiBold.copyWith(
                              color: context.color.primaryLight600,
                            ),
                          ),
                          Text(
                            ' • ${card.type.name}',
                            style: context.textStyle.buttonTabBar.copyWith(
                              color: context.color.primaryLight300,
                            ),
                          ),
                        ],
                      ),
                      backgroundColor: context.color.backgroundLight200,
                      onSelected: (_) {},
                    ),
                    const Spacer(),
                    CustomPopupMenuButton(
                      items: [
                        PopupMenuItem(
                          value: '',
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Desactivar'),
                              AppSpacing.horizontal.s7,
                              IconSvg.small(IconAssets.power),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: '',
                          onTap: () {
                            CardDetailsBottomSheet.show<void>(
                              context: context,
                              cardId: card.id,
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Ver detalles'),
                              AppSpacing.horizontal.s7,
                              IconSvg.small(IconAssets.info),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: '',
                          onTap: () {
                            context.pushNamed(AppRoute.dailyBankingCardSettings.name);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Ajustes'),
                              AppSpacing.horizontal.s7,
                              IconSvg.small(IconAssets.invoice),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                AppSpacing.vertical.s2,
                CreditCard(
                  plan: 'basic',
                  last4Digits: card.lastFourDigits,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
