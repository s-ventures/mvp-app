import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
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
    required this.onPressed,
    super.key,
  });

  final String name;
  final Widget leading;
  final String nif;
  final String type;
  final Color typeForegroundColor;
  final Color typeBackgroundColor;
  final VoidCallback onPressed;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Splash(
      borderRadius: borderRadius,
      onPressed: () async => onPressed.call(),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        leading: leading,
        title: Text(name, style: context.textStyle.bodySmallRegular),
        subtitle: Text(
          '${context.loc.commonCifOrNif}: $nif',
          style: context.textStyle.buttonTabBar.copyWith(color: context.color.textLight600),
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
    );
  }
}
