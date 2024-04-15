import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TransferDetailsDescription extends StatelessWidget {
  const TransferDetailsDescription({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Descripción',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s3,
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 90,
                child: CustomCard(
                  outlined: true,
                  child: Text(
                    text,
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
