import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ProtectionCustomCheckboxListTile extends StatefulWidget {
  const ProtectionCustomCheckboxListTile({
    required this.title,
    required this.isChecked,
    required this.onPressed,
    this.icon,
    this.subtitle,
    this.isDisabled = false,
    this.checkboxPosition = CheckboxPosition.trailing,
    this.checkboxType = CheckboxType.rectangle,
    this.chekcboxIcon = IconAssets.check,
    this.checkboxSize = CheckboxSize.medium,
    this.checkboxColor = CheckboxColor.primary,
    super.key,
  });

  final CheckboxPosition checkboxPosition;
  final CheckboxType? checkboxType;
  final String chekcboxIcon;
  final CheckboxSize? checkboxSize;
  final CheckboxColor? checkboxColor;
  final Widget? icon;
  final bool isChecked;
  final bool isDisabled;
  final ValueChanged<bool> onPressed;
  final String? subtitle;
  final String title;

  @override
  State<ProtectionCustomCheckboxListTile> createState() =>
      _ProtectionCustomCheckboxListTileState();
}

class _ProtectionCustomCheckboxListTileState
    extends State<ProtectionCustomCheckboxListTile> {
  @override
  Widget build(BuildContext context) {
    return Splash(
      // onPressed: widget.isDisabled
      //     ? null
      //     : () async {
      //         widget.onPressed(!widget.isChecked);
      //       },
      borderRadius: BorderRadius.circular(context.radius.soft),
      child: ListTile(
        tileColor: context.color.backgroundLight0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.radius.soft),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.s4,
          vertical: AppSpacing.s3,
        ),
        dense: true,
        leading: widget.checkboxPosition == CheckboxPosition.trailing
            ? widget.icon
            : _buildCheckbox(),
        title: Text(
          widget.title,
          style: context.textStyle.bodySmallRegular.copyWith(
            color: context.color.textLight900,
          ),
        ),
        subtitle: widget.subtitle != null
            ? Text(
                widget.subtitle!,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              )
            : null,
        trailing: widget.checkboxPosition == CheckboxPosition.leading
            ? widget.icon
            : _buildCheckbox(),
        onTap: widget.isDisabled
            ? null
            : () async {
                widget.onPressed(!widget.isChecked);
              },
      ),
    );
  }

  CustomCheckbox _buildCheckbox() {
    return CustomCheckbox(
      onChecked: widget.onPressed,
      isChecked: widget.isChecked,
      size: widget.checkboxSize!,
      icon: widget.chekcboxIcon,
      type: widget.checkboxType!,
      activeColor: widget.checkboxColor!,
      splash: CheckboxSplash.none,
      onChanged: widget.onPressed,
    );
  }
}
