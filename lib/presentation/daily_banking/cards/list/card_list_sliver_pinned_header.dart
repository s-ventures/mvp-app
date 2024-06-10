import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/simplified_card.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/details/card_details_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CardListSliverPinnedHeader extends StatelessWidget {
  const CardListSliverPinnedHeader({
    required this.selectedCardsIndex,
    required this.cards,
    required this.selectCard,
    required this.setSelectedCardIndex,
    super.key,
  });

  final int selectedCardsIndex;
  final AsyncValue<List<SimplifiedCard>> cards;
  final void Function({
    required UniqueId cardContractId,
    required UniqueId cardId,
  }) selectCard;
  final void Function(int) setSelectedCardIndex;

  @override
  Widget build(BuildContext context) {
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
                setSelectedCardIndex(index);
                selectCard(cardId: cardId, cardContractId: cardContractId);
              },
            ),
          ) ??
          const CustomLoader(),
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
                            card.alias,
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
                    entityName: card.brand,
                    last4Digits: card.cardEncryptedNumber.lastFourCharacters,
                  ),
                if (card.id.toInt() != 50)
                  CreditCard(
                    plan: CreditCardPlan.premium,
                    type: CreditCardType.physical,
                    entityName: card.brand,
                    last4Digits: card.cardEncryptedNumber.lastFourCharacters,
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
