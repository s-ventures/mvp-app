import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CardGettingHelp extends StatelessWidget {
  const CardGettingHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedList(
      children: [
        Splash(
          borderRadius: BorderRadius.circular(context.radius.soft),
          onPressed: () async {},
          child: ListTile(
            leading: IconWithContainer(
              icon: IconAssets.info,
              size: IconWithContainerSize.medium,
              backgroundColor: context.color.neutralLight100,
            ),
            title: Text(
              'Obtener ayuda',
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
