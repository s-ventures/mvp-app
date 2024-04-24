import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CategoryListTile extends StatelessWidget {
  const CategoryListTile({
    required this.leadingEmoji,
    required this.leadingBackgroundColor,
    required this.title,
    this.borderRadius = BorderRadius.zero,
    this.trailing,
    this.onTap,
    super.key,
  });

  final BorderRadius borderRadius;
  final String leadingEmoji;
  final Color leadingBackgroundColor;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        child: InkWell(
          child: ListTile(
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            onTap: onTap,
            leading: IconWithContainer(
              text: leadingEmoji,
              backgroundColor: leadingBackgroundColor,
            ),
            title: Text(
              title,
              style: context.textStyle.bodySmallRegular,
            ),
            trailing: trailing,
          ),
        ),
      ),
    );
  }
}
