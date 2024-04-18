import 'package:flutter/material.dart';
import 'package:ui_kit/src/src.dart';
import 'package:ui_kit/ui_kit.dart';

enum CheckboxSize { small, medium, large }

enum CheckboxType { rectangle, circle }

enum CheckboxColor { primary, secondary, tertiary, neutral }

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    required this.onChecked,
    this.isChecked = false,
    this.size = CheckboxSize.medium,
    this.icon = IconAssets.check,
    this.type = CheckboxType.rectangle,
    this.activeColor = CheckboxColor.primary,
    super.key,
  });

  factory CustomCheckbox.small({
    required ValueChanged<bool> onChecked,
    bool isChecked = false,
    String icon = IconAssets.check,
    CheckboxType type = CheckboxType.rectangle,
    CheckboxColor activeColor = CheckboxColor.primary,
  }) {
    return CustomCheckbox(
      onChecked: onChecked,
      isChecked: isChecked,
      size: CheckboxSize.small,
      icon: icon,
      type: type,
      activeColor: activeColor,
    );
  }

  factory CustomCheckbox.medium({
    required ValueChanged<bool> onChecked,
    bool isChecked = false,
    String icon = IconAssets.check,
    CheckboxType type = CheckboxType.rectangle,
    CheckboxColor activeColor = CheckboxColor.primary,
  }) {
    return CustomCheckbox(
      onChecked: onChecked,
      isChecked: isChecked,
      icon: icon,
      type: type,
      activeColor: activeColor,
    );
  }

  factory CustomCheckbox.large({
    required ValueChanged<bool> onChecked,
    bool isChecked = false,
    String icon = IconAssets.check,
    CheckboxType type = CheckboxType.rectangle,
    CheckboxColor activeColor = CheckboxColor.primary,
  }) {
    return CustomCheckbox(
      onChecked: onChecked,
      isChecked: isChecked,
      size: CheckboxSize.large,
      icon: icon,
      type: type,
      activeColor: activeColor,
    );
  }

  final bool isChecked;
  final ValueChanged<bool> onChecked;
  final CheckboxSize size;
  final String icon;
  final CheckboxType type;
  final CheckboxColor activeColor;

  @override
  Widget build(BuildContext context) {
    double iconSize;
    double boxSize;

    switch (size) {
      case CheckboxSize.small:
        iconSize = 8.0;
        boxSize = 16.0;
      case CheckboxSize.medium:
        iconSize = 16.0;
        boxSize = 24.0;
      case CheckboxSize.large:
        iconSize = 24.0;
        boxSize = 32.0;
    }

    return InkWell(
      splashColor: activeColor == CheckboxColor.primary
          ? context.color.primaryLight100
          : activeColor == CheckboxColor.secondary
              ? context.color.secondaryLight100
              : activeColor == CheckboxColor.tertiary
                  ? context.color.tertiaryLight200
                  : context.color.strokeLigth200,
      borderRadius: type == CheckboxType.circle
          ? BorderRadius.circular(100)
          : BorderRadius.circular(
              size == CheckboxSize.small
                  ? context.radius.checkboxSmall
                  : size == CheckboxSize.medium
                      ? context.radius.checkboxMedium
                      : context.radius.checkboxLarge,
            ),
      onTap: () => onChecked(!isChecked),
      child: Padding(
        padding: EdgeInsets.all(context.radius.soft),
        child: Container(
          width: boxSize,
          height: boxSize,
          decoration: ShapeDecoration(
            color: isChecked && activeColor == CheckboxColor.primary
                ? context.color.primary
                : isChecked && activeColor == CheckboxColor.secondary
                    ? context.color.secondary
                    : isChecked && activeColor == CheckboxColor.tertiary
                        ? context.color.tertiary
                        : context.color.backgroundLight0,
            shape: type == CheckboxType.circle
                ? CircleBorder(
                    side: BorderSide(
                      color: isChecked && activeColor == CheckboxColor.primary
                          ? context.color.primary
                          : isChecked && activeColor == CheckboxColor.secondary
                              ? context.color.secondary
                              : isChecked &&
                                      activeColor == CheckboxColor.tertiary
                                  ? context.color.tertiary
                                  : !isChecked &&
                                          activeColor == CheckboxColor.primary
                                      ? context.color.primaryLight100
                                      : !isChecked &&
                                              activeColor ==
                                                  CheckboxColor.secondary
                                          ? context.color.secondaryLight100
                                          : !isChecked &&
                                                  activeColor ==
                                                      CheckboxColor.tertiary
                                              ? context.color.tertiaryLight200
                                              : context.color.strokeLigth200,
                      width: 2,
                    ),
                  )
                : RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      size == CheckboxSize.small
                          ? context.radius.checkboxSmall
                          : size == CheckboxSize.medium
                              ? context.radius.checkboxMedium
                              : context.radius.checkboxLarge,
                    ),
                    side: BorderSide(
                      color: isChecked && activeColor == CheckboxColor.primary
                          ? context.color.primary
                          : isChecked && activeColor == CheckboxColor.secondary
                              ? context.color.secondary
                              : isChecked &&
                                      activeColor == CheckboxColor.tertiary
                                  ? context.color.tertiary
                                  : !isChecked &&
                                          activeColor == CheckboxColor.primary
                                      ? context.color.primaryLight100
                                      : !isChecked &&
                                              activeColor ==
                                                  CheckboxColor.secondary
                                          ? context.color.secondaryLight100
                                          : !isChecked &&
                                                  activeColor ==
                                                      CheckboxColor.tertiary
                                              ? context.color.tertiaryLight200
                                              : context.color.strokeLigth200,
                      width: 2,
                    ),
                  ),
          ),
          child: Center(
            child: isChecked
                ? IconSvg(
                    icon,
                    color: context.color.backgroundLight0,
                    size: iconSize,
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}
