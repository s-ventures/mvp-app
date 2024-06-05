import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ErpDetailsCategory extends StatelessWidget {
  const ErpDetailsCategory({
    required this.categorySelected,
    super.key,
  });

  final String categorySelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Categoría contable',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        CustomCard.outlined(
          child: Text(
            categorySelected,
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight600,
            ),
          ),
        ),
      ],
    );
  }
}
