import 'package:flutter/material.dart';
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
    super.key,
  });

  final CreditCardPlan plan;
  final CreditCardType type;
  final String last4Digits;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.586,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.radius.soft),
          color: plan == CreditCardPlan.basic
              ? context.color.secondaryLight600
              : const Color(0xFF2A2929),
        ),
        child: Stack(
          children: [
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
                    type == CreditCardType.virtual ? 'Virtual' : 'Physical',
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
                  RichText(
                    text: TextSpan(
                      text: 'soon ',
                      style: context.textStyle.bodyMediumBold.copyWith(
                        color: context.color.textLight0,
                      ),
                      children: [
                        TextSpan(
                          text: plan.name,
                          style: context.textStyle.bodyMediumRegular.copyWith(
                            color: context.color.textLight0,
                          ),
                        ),
                      ],
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
    );
  }
}
