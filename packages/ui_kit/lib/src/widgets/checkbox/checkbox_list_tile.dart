import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomCheckboxListTile extends StatelessWidget {
  const CustomCheckboxListTile({
    required this.title,
    required this.onChecked,
    this.value = false,
    this.checkboxSize = CheckboxSize.medium,
    this.checkboxIcon = IconAssets.check,
    this.borderRadius = BorderRadius.zero,
    super.key,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onChecked;
  final CheckboxSize? checkboxSize;
  final String? checkboxIcon;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        child: InkWell(
          child: CheckboxListTile(
            value: value,
            onChanged: (value) => onChecked(value!),
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            contentPadding: const EdgeInsets.only(
              left: 16,
              right: 8,
            ),
            title: Text(
              title,
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.textLight600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
