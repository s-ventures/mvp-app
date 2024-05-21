import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/cards/simplified/simplified_cards_controller.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/simplified_card.dart';
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
    final cards = ref.watch(
      simplifiedCardsControllerProvider.select((value) => value.cards),
    );
    final selectedCardsIndex = ref.watch(
      simplifiedCardsControllerProvider.select((value) => value.selectedCardIndex),
    );
    final controller = ref.watch(simplifiedCardsControllerProvider.notifier);

    return SliverAppBar(
      shadowColor: Colors.grey,
      scrolledUnderElevation: 4,
      pinned: true,
      surfaceTintColor: context.color.backgroundLight200,
      backgroundColor: context.color.backgroundLight200,
      toolbarHeight: 250,
      flexibleSpace: cards.mapOrNull(
            data: (data) => _CardList(
              cards: data.value,
              selectedCardIndex: selectedCardsIndex,
              onPageChanged: ({
                required UniqueId cardContractId,
                required UniqueId cardId,
                required int index,
              }) {
                controller
                  ..setSelectedCardIndex(index)
                  ..selectCard(cardId: cardId, cardContractId: cardContractId);
              },
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
    required this.selectedCardIndex,
  });

  final List<SimplifiedCard> cards;
  final void Function({
    required UniqueId cardContractId,
    required UniqueId cardId,
    required int index,
  }) onPageChanged;
  final int selectedCardIndex;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(
        viewportFraction: .9,
        initialPage: selectedCardIndex,
      ),
      itemCount: cards.length,
      onPageChanged: (index) {
        final card = cards[index];
        onPageChanged(
          cardContractId: card.contract.id,
          cardId: card.id,
          index: index,
        );
      },
      itemBuilder: (context, index) {
        final card = cards[index];

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Container(
            padding: const EdgeInsets.all(AppSpacing.s5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(context.radius.hard),
              color: context.color.backgroundLight0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomChip(
                      title: Row(
                        children: [
                          Text(
                            context.loc.dailyBankingCardsAlias,
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
                              Text(context.loc.dailyBankingCardsMenuDeactivate),
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
                              Text(context.loc.dailyBankingCardsMenuSeeDetails),
                              AppSpacing.horizontal.s7,
                              IconSvg.small(IconAssets.info),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: '',
                          onTap: () {
                            context.pushNamed(
                              AppRoute.dailyBankingCardSettings.name,
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(context.loc.dailyBankingCardsMenuSettings),
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
                if (card.id.toInt() == 50)
                  CreditCard(
                    plan: CreditCardPlan.basic,
                    type: CreditCardType.physical,
                    last4Digits: card.lastFourDigits,
                  ),
                if (card.id.toInt() != 50)
                  CreditCard(
                    plan: CreditCardPlan.premium,
                    type: CreditCardType.physical,
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
