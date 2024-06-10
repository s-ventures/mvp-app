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

class CreditCard extends StatelessWidget {
  const CreditCard({
    required this.plan,
    required this.type,
    required this.last4Digits,
    required this.entityName,
    super.key,
  });

  final CreditCardPlan plan;
  final CreditCardType type;
  final String last4Digits;
  final String entityName;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.586,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.radius.soft),
          color: plan == CreditCardPlan.basic && type == CreditCardType.virtual
              ? context.color.secondaryLight600
              : plan == CreditCardPlan.premium && type == CreditCardType.virtual
                  ? const Color(0xFF2A2929)
                  : null,
        ),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(context.radius.soft),
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
                top: 24,
                left: 24,
                child: IconSvg.medium(
                  IconAssets.logotype,
                  color: context.color.textLight0,
                ),
              ),
              if (type == CreditCardType.virtual)
                Positioned(
                  top: 24,
                  right: 24,
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
                bottom: 24,
                left: 24,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entityName,
                      style: context.textStyle.bodyMediumBold.copyWith(
                        color: context.color.textLight0,
                      ),
                    ),
                    Text(
                      '•• $last4Digits',
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight0,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 24,
                right: 24,
                child: IconSvg.medium(
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
