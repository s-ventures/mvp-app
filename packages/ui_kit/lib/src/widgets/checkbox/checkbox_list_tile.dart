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
    this.controlAffinity = ListTileControlAffinity.trailing,
    this.dense = false,
    super.key,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onPressed;
  final CheckboxSize? checkboxSize;
  final String checkboxIcon;
  final BorderRadius borderRadius;
  final ListTileControlAffinity controlAffinity;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    return Splash(
      borderRadius: borderRadius,
      onPressed: () async => onPressed(value),
      child: ListTile(
        dense: dense,
        title: Text(
          title,
          style: context.textStyle.bodySmallRegular.copyWith(
            color: context.color.textLight900,
          ),
        ),
        leading: controlAffinity == ListTileControlAffinity.leading
            ? Container(
                padding: const EdgeInsets.all(AppSpacing.s2),
                width: AppSpacing.s6,
                height: AppSpacing.s6,
                decoration: ShapeDecoration(
                  color: value ? context.color.secondary : Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(context.radius.checkboxSmall),
                    side: BorderSide(
                      color: value
                          ? context.color.secondary
                          : context.color.strokeLigth100,
                    ),
                  ),
                ),
                child: IconSvg.small(
                  checkboxIcon,
                  color: value ? context.color.iconLight0 : Colors.transparent,
                ),
              )
            : null,
        trailing: controlAffinity == ListTileControlAffinity.trailing
            ? Container(
                padding: const EdgeInsets.all(AppSpacing.s2),
                width: AppSpacing.s6,
                height: AppSpacing.s6,
                decoration: ShapeDecoration(
                  color: value ? context.color.secondary : Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(context.radius.checkboxSmall),
                    side: BorderSide(
                      color: value
                          ? context.color.secondary
                          : context.color.strokeLigth100,
                    ),
                  ),
                ),
                child: IconSvg.small(
                  checkboxIcon,
                  color: value ? context.color.iconLight0 : Colors.transparent,
                ),
              )
            : null,
      ),
    );
  }
}
