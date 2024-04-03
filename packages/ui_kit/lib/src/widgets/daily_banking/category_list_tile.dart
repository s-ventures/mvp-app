import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CategoryListTile extends StatelessWidget {
  const CategoryListTile({
    required this.leadingEmoji,
    required this.leadingBackgroundColor,
    this.borderRadius = BorderRadius.zero,
    required this.title,
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
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: leadingBackgroundColor,
                borderRadius: BorderRadius.circular(context.radius.soft),
              ),
              child: Center(
                child: Text(
                  leadingEmoji,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
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
