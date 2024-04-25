import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BusinessInsurance extends StatelessWidget {
  const BusinessInsurance({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedList(
      children: [
        Splash(
          borderRadius: BorderRadius.circular(context.radius.soft),
          onPressed: () async {},
          child: ListTile(
            leading: IconWithContainer(
              icon: IconAssets.security,
              backgroundColor: context.color.backgroundLight200,
            ),
            title: Text(
              'Seguro de comercios',
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.textLight900,
              ),
            ),
            trailing: IconSvg.small(
              IconAssets.download,
              color: context.color.iconLight900,
            ),
          ),
        ),
      ],
    );
  }
}
