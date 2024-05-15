import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomCheckboxListTile extends StatelessWidget {
  const CustomCheckboxListTile({
    required this.title,
    required this.onPressed,
    this.borderRadius = BorderRadius.zero,
    this.checkboxIcon = IconAssets.check,
    this.checkboxSize = CheckboxSize.medium,
    this.contentPadding,
    this.controlAffinity = ListTileControlAffinity.trailing,
    this.dense = false,
    this.leading,
    this.tileColor,
    this.trailing,
    this.value = false,
    super.key,
  });

  final String title;
  final ValueChanged<bool> onPressed;

  final BorderRadius borderRadius;
  final String checkboxIcon;
  final CheckboxSize? checkboxSize;
  final EdgeInsetsGeometry? contentPadding;
  final ListTileControlAffinity controlAffinity;
  final bool dense;
  final Widget? leading;
  final Color? tileColor;
  final Widget? trailing;
  final bool value;

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
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        tileColor: tileColor,
        contentPadding: contentPadding,
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
            : leading ?? const SizedBox.shrink(),
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
            : trailing ?? const SizedBox.shrink(),
      ),
    );
  }
}
