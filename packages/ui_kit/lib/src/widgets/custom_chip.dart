import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    required this.title,
    this.selected = false,
    this.onSelected,
    this.leadingIcon,
    this.leadingIconColor,
    this.trailingIcon,
    this.isExpanded = false,
    this.onTrailingIconPressed,
    this.size = CustomChipSize.small,
    this.backgroundColor,
    this.selectedColor,
    super.key,
  });

  final Widget title;
  final bool selected;
  final ValueChanged<bool>? onSelected;
  final VoidCallback? onTrailingIconPressed;
  final Color? backgroundColor;
  final Color? selectedColor;
  final String? leadingIcon;
  final Color? leadingIconColor;
  final String? trailingIcon;
  final bool isExpanded;
  final CustomChipSize size;

  @override
  Widget build(BuildContext context) {
    var label = title;

    if (isExpanded) {
      label = Center(child: label);
    }

    return InputChip(
      padding: EdgeInsets.symmetric(
        vertical: switch (size) {
          CustomChipSize.large => 13,
          CustomChipSize.small => 5,
          CustomChipSize.extraSmall => 4,
        },
        horizontal: switch (size) {
          CustomChipSize.large => 16,
          CustomChipSize.small => 12,
          CustomChipSize.extraSmall => 4,
        },
      ),
      label: label,
      shape: const StadiumBorder(),
      showCheckmark: false,
      avatar: leadingIcon != null
          ? Container(
              height: AppSpacing.s6,
              width: AppSpacing.s6,
              padding: const EdgeInsets.all(AppSpacing.s2),
              decoration: ShapeDecoration(
                color: context.color.backgroundLight0,
                shape: const CircleBorder(),
              ),
              child: IconSvg.small(
                leadingIcon!,
                color: leadingIconColor ?? context.color.strokeLigth200,
              ),
            )
          : null,
      deleteIcon: trailingIcon != null
          ? IconSvg.small(
              trailingIcon!,
              color: selected
                  ? context.color.strokeLigth100
                  : context.color.primaryLight300,
            )
          : null,
      onDeleted: onTrailingIconPressed,
      backgroundColor: backgroundColor ?? context.color.backgroundLight0,
      color: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return selectedColor ?? context.color.primaryLight300;
          }
          return backgroundColor ?? context.color.backgroundLight0;
        },
      ),
      selected: selected,
      onSelected: onSelected,
      selectedColor: selectedColor ?? context.color.primaryLight300,
    );
  }
}

enum CustomChipSize {
  extraSmall,
  small,
  large,
}
