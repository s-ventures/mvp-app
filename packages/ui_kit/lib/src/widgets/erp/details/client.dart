import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ErpDetailsClient extends StatelessWidget {
  const ErpDetailsClient({
    required this.initials,
    required this.client,
    required this.address,
    required this.nif,
    super.key,
  });

  final String initials;
  final String client;
  final String address;
  final String nif;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cliente',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        Splash(
          borderRadius: BorderRadius.circular(
            context.radius.soft,
          ),
          onPressed: () async {},
          child: ListTile(
            dense: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.s4,
              vertical: AppSpacing.s1,
            ),
            tileColor: context.color.backgroundLight0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                context.radius.soft,
              ),
            ),
            leading: IconWithContainer(
                text: initials,
                backgroundColor: context.color.backgroundLight200,
                borderRadius: BorderRadius.circular(
                  context.radius.soft,
                )),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  client,
                  style: context.textStyle.subtitleLarge,
                ),
                Text(
                  address,
                  style: context.textStyle.buttonTabBar.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
              ],
            ),
            subtitle: Text(
              nif,
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.textLight600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
