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
            leading: Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(AppSpacing.s3),
              decoration: ShapeDecoration(
                color: context.color.backgroundLight200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
              ),
              child: IconSvg.small(
                IconAssets.security,
                color: context.color.iconLight900,
              ),
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
