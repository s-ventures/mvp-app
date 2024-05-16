import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class MovementDetailsGettingHelp extends StatelessWidget {
  const MovementDetailsGettingHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedList(
      children: [
        Splash(
          borderRadius: BorderRadius.circular(context.radius.soft),
          onPressed: () async {},
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.s4,
              vertical: AppSpacing.s2,
            ),
            leading: IconWithContainer(
              icon: IconAssets.info,
              size: IconWithContainerSize.medium,
              backgroundColor: context.color.neutralLight100,
            ),
            title: Text(
              context.loc.commonGettingHelp,
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.textLight900,
              ),
            ),
            trailing: IconSvg.small(
              IconAssets.chevronRight,
              color: context.color.iconLight900,
            ),
          ),
        ),
      ],
    );
  }
}
