import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomRadioListTile extends StatelessWidget {
  const CustomRadioListTile({
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.subtitle,
    this.leadingEmoji,
    this.leadingBackgroundColor,
    this.showRadio = true,
    this.borderRadius = BorderRadius.zero,
    this.controlAffinity = ListTileControlAffinity.trailing,
    super.key,
  });

  final String title;
  final String? subtitle;
  final dynamic value;
  final dynamic groupValue;
  final String? leadingEmoji;
  final Color? leadingBackgroundColor;
  final bool showRadio;
  final BorderRadius? borderRadius;
  final ListTileControlAffinity controlAffinity;
  final void Function(dynamic value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Splash(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: RadioListTile(
        title: Text(title),
        subtitle: subtitle != null
            ? Text(
                subtitle!,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              )
            : null,
        value: value,
        groupValue: groupValue,
        onChanged: (value) => onChanged?.call(value),
        controlAffinity: controlAffinity,
        fillColor:
            showRadio ? null : MaterialStateProperty.all(Colors.transparent),
        splashRadius: 0,
        secondary: leadingEmoji != null
            ? IconWithContainer(
                text: leadingEmoji,
                backgroundColor: leadingBackgroundColor!,
              )
            : null,
        contentPadding: const EdgeInsets.only(left: 16),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.zero,
        ),
      ),
    );
  }
}
