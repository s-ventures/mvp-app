import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ContactListTile extends StatelessWidget {
  const ContactListTile({
    required this.name,
    required this.leading,
    required this.nif,
    required this.type,
    required this.typeForegroundColor,
    required this.typeBackgroundColor,
    required this.borderRadius,
    this.onTap,
    super.key,
  });

  final String name;
  final Widget leading;
  final String nif;
  final String type;
  final Color typeForegroundColor;
  final Color typeBackgroundColor;
  final VoidCallback? onTap;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        child: InkWell(
          child: ListTile(
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            onTap: onTap,
            leading: leading,
            title: Text(name, style: context.textStyle.bodySmallRegular),
            subtitle: Text(
              'NIF: $nif',
              style: context.textStyle.buttonTabBar
                  .copyWith(color: context.color.textLight600),
            ),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: typeBackgroundColor,
                borderRadius: BorderRadius.circular(context.radius.soft),
              ),
              child: Text(
                type,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: typeForegroundColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
