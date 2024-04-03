import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class IconOverTextButton extends StatelessWidget {
  const IconOverTextButton({
    required this.icon,
    required this.type,
    required this.label,
    this.isLoading = false,
    this.onPressed,
    super.key,
  });

  final String icon;
  final ButtonType type;
  final String label;
  final bool isLoading;
  final Future<void> Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 90,
      ),
      child: Column(
        children: [
          Column(
            children: [
              Button(
                icon: icon,
                type: type,
                size: ButtonSize.small,
                onPressed: onPressed,
                outlineColor: context.color.neutralLight100,
              ),
              AppSpacing.vertical.s2,
              Text(
                label,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
