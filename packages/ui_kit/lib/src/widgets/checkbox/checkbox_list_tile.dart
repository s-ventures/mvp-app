import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomCheckboxListTile extends StatelessWidget {
  const CustomCheckboxListTile({
    required this.title,
    required this.onPressed,
    this.value = false,
    this.checkboxSize = CheckboxSize.medium,
    this.checkboxIcon = IconAssets.check,
    this.borderRadius = BorderRadius.zero,
    super.key,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onPressed;
  final CheckboxSize? checkboxSize;
  final String? checkboxIcon;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Splash(
      borderRadius: borderRadius,
      onPressed: () async => onPressed(value),
      child: ListTile(
        title: Text(
          title,
          style: context.textStyle.bodySmallRegular.copyWith(
            color: context.color.textLight900,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(AppSpacing.s2),
          width: AppSpacing.s6,
          height: AppSpacing.s6,
          decoration: ShapeDecoration(
            color: value ? context.color.secondary : Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.radius.checkboxSmall),
              side: BorderSide(
                color: value
                    ? context.color.secondary
                    : context.color.strokeLigth100,
              ),
            ),
          ),
          child: IconSvg.small(
            IconAssets.check,
            color: value ? context.color.iconLight0 : Colors.transparent,
          ),
        ),
      ),
    );
  }
}
