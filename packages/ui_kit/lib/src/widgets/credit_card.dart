import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

enum CreditCardPlan {
  basic,
  premium,
}

enum CreditCardType {
  virtual,
  physical,
}

enum CreditCardSize { extraSmall, normal }

class CreditCard extends StatelessWidget {
  const CreditCard({
    required this.plan,
    required this.type,
    required this.last4Digits,
    this.size = CreditCardSize.normal,
    super.key,
  });

  final CreditCardPlan plan;
  final CreditCardType type;
  final String last4Digits;
  final CreditCardSize size;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.586,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            size == CreditCardSize.extraSmall ? 3 : context.radius.soft,
          ),
          color: plan == CreditCardPlan.basic && type == CreditCardType.virtual
              ? context.color.secondaryLight600
              : plan == CreditCardPlan.premium && type == CreditCardType.virtual
                  ? const Color(0xFF2A2929)
                  : null,
        ),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              size == CreditCardSize.extraSmall ? 3 : context.radius.soft,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: plan == CreditCardPlan.basic && type == CreditCardType.physical
                    ? const CardSvg.basic()
                    : plan == CreditCardPlan.premium && type == CreditCardType.physical
                        ? const CardSvg.premium()
                        : const SizedBox.shrink(),
              ),
              Positioned(
                top: size == CreditCardSize.extraSmall ? 6 : 24,
                left: size == CreditCardSize.extraSmall ? 6 : 24,
                child: size == CreditCardSize.extraSmall
                    ? IconSvg(
                        IconAssets.logotype,
                        color: context.color.textLight0,
                        size: 6,
                      )
                    : IconSvg.medium(
                        IconAssets.logotype,
                        color: context.color.textLight0,
                      ),
              ),
              if (type == CreditCardType.virtual)
                Positioned(
                  top: size == CreditCardSize.extraSmall ? 6 : 24,
                  right: size == CreditCardSize.extraSmall ? 6 : 24,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 1,
                    ),
                    decoration: BoxDecoration(
                      color: context.color.backgroundLight0.withOpacity(.3),
                      borderRadius: BorderRadius.circular(context.radius.hard),
                    ),
                    child: Text(
                      type == CreditCardType.virtual
                          ? context.loc.dailyBankingCardsVirtual
                          : context.loc.dailyBankingCardsPhysical,
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight0,
                      ),
                    ),
                  ),
                ),
              Positioned(
                bottom: size == CreditCardSize.extraSmall ? 6 : 24,
                left: size == CreditCardSize.extraSmall ? 6 : 24,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (size != CreditCardSize.extraSmall) ...[
                      RichText(
                        text: TextSpan(
                          text: 'soon ',
                          style: context.textStyle.bodyMediumBold.copyWith(
                            color: context.color.textLight0,
                            fontSize: size == CreditCardSize.extraSmall ? 6 : 14,
                          ),
                          children: [
                            TextSpan(
                              text: plan == CreditCardPlan.basic
                                  ? context.loc.dailyBankingCardsBasic
                                  : context.loc.dailyBankingCardsPremium,
                              style: context.textStyle.bodyMediumRegular.copyWith(
                                color: context.color.textLight0,
                                fontSize: size == CreditCardSize.extraSmall ? 6 : 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    Text(
                      '•• $last4Digits',
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight0,
                        fontSize: size == CreditCardSize.extraSmall ? 6 : 14,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: size == CreditCardSize.extraSmall ? 6 : 24,
                right: size == CreditCardSize.extraSmall ? 6 : 24,
                child: size == CreditCardSize.extraSmall
                    ? IconSvg(
                        IconAssets.visa,
                        color: context.color.textLight0,
                        size: 6,
                      )
                    : IconSvg.medium(
                        IconAssets.visa,
                        color: context.color.textLight0,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
