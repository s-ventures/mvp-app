import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomDatePickerListTile extends StatelessWidget {
  const CustomDatePickerListTile({
    required this.title,
    this.subtitle,
    this.leading,
    this.initialDate,
    this.onChanged,
    super.key,
  });

  final String title;
  final String? subtitle;
  final Widget? leading;
  final DateTime? initialDate;
  final void Function(DateTime)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppSpacing.s4,
        vertical: subtitle != null || initialDate != null ? 0 : AppSpacing.s1,
      ),
      tileColor: context.color.backgroundLight0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          context.radius.soft,
        ),
        side: BorderSide(
          color: context.color.strokeLigth100,
        ),
      ),
      leading: leading,
      title: Text(
        title,
        style: subtitle != null
            ? context.textStyle.buttonTabBar.copyWith(
                color: context.color.textLight600,
              )
            : context.textStyle.bodyMediumRegular.copyWith(
                color: context.color.textLight900,
              ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: context.textStyle.bodyMediumRegular.copyWith(
                color: context.color.textLight900,
              ),
            )
          : null,
      trailing: IconSvg.medium(
        IconAssets.calendar,
        color: context.color.iconLight600,
      ),
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: initialDate ?? DateTime.now(),
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101),
        );
        if (picked != null && onChanged != null) {
          onChanged!(picked);
        }
      },
    );
  }
}
