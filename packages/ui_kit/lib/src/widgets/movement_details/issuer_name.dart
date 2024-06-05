import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class MovementDetailsIssuer extends StatelessWidget {
  const MovementDetailsIssuer({
    required this.issuer,
    super.key,
  });

  final String issuer;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      outlined: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.loc.commonIssuerName,
            style: context.textStyle.bodySmallSemiBold.copyWith(
              color: context.color.textLight600,
            ),
          ),
          AppSpacing.vertical.s1,
          Text(
            issuer,
            style: context.textStyle.bodyMediumRegular.copyWith(
              color: context.color.textLight900,
            ),
          ),
        ],
      ),
    );
  }
}
