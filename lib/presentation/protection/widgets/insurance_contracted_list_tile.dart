import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class InsuranceContractedListTile extends StatelessWidget {
  const InsuranceContractedListTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onPressed,
    super.key,
  });

  final Future<Object?> Function()? onPressed;
  final String title;
  final String subtitle;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Splash(
      borderRadius: BorderRadius.circular(context.radius.soft),
      onPressed: onPressed,
      child: ListTile(
        dense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.s5,
          vertical: AppSpacing.s2,
        ),
        tileColor: context.color.backgroundLight0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.radius.soft),
          side: BorderSide(
            color: context.color.strokeLigth100,
          ),
        ),
        leading: icon,
        title: Text(
          title,
          style: context.textStyle.bodySmallRegular,
        ),
        subtitle: Text(
          subtitle,
          style: context.textStyle.buttonTabBar.copyWith(
            color: context.color.textLight300,
          ),
        ),
      ),
    );
  }
}
