import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TextFilterListItem extends StatelessWidget {
  const TextFilterListItem({
    required this.textFilter,
    required this.onClear,
    super.key,
  });

  final String textFilter;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return CustomChip(
      title: Text(
        textFilter,
        style: context.textStyle.bodySmallSemiBold.copyWith(
          color: context.color.primaryLight300,
        ),
      ),
      trailingIcon: IconAssets.xMark,
      onTrailingIconPressed: onClear,
      backgroundColor: context.color.backgroundLight0,
    );
  }
}
