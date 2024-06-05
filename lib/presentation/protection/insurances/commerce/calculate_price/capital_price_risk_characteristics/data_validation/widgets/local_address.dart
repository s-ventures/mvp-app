import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class LocalAddressData extends StatelessWidget {
  const LocalAddressData(this.address, {super.key});

  final String address;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dirección de envío',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        ListTile(
          dense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.s4),
          tileColor: context.color.backgroundLight0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(context.radius.hard),
          ),
          title: Text(
            'Dirección',
            style: context.textStyle.buttonTabBar.copyWith(
              color: context.color.textLight600,
            ),
          ),
          subtitle: Text(
            address,
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight900,
            ),
          ),
          leading: IconWithContainer(
            icon: IconAssets.marker,
            backgroundColor: context.color.backgroundLight200,
          ),
        ),
      ],
    );
  }
}
