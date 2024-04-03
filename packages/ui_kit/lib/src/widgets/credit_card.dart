import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    required this.plan,
    required this.last4Digits,
    super.key,
  });

  final String plan;
  final String last4Digits;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.586,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.radius.soft),
        ),
        color: context.color.primaryLight600,
        elevation: 1,
        child: Stack(
          children: [
            Positioned(
              top: 24,
              left: 24,
              child: IconSvg(
                IconAssets.logotype,
                color: context.color.iconLight0,
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
                          text: plan,
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
          ],
        ),
      ),
    );
  }
}
