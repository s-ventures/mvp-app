import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class Voucher extends StatelessWidget {
  const Voucher({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Comprobante',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        OutlinedList(
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
                  icon: IconAssets.file,
                  size: IconWithContainerSize.medium,
                  backgroundColor: context.color.neutralLight100,
                ),
                title: Text(
                  'Comprobante',
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
        ),
      ],
    );
  }
}
