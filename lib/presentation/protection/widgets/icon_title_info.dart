import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class IconTitleInfoMessage extends StatelessWidget {
  const IconTitleInfoMessage({
    required this.icon,
    required this.title,
    required this.message,
    super.key,
  });

  final String icon;
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: IconWithContainer(
            icon: icon,
            size: IconWithContainerSize.large,
            borderRadius: BorderRadius.circular(context.radius.hard),
            outlined: true,
            width: 56,
            height: 56,
          ),
        ),
        AppSpacing.vertical.s3,
        Center(
          child: Text(
            title,
            style: context.textStyle.h6.copyWith(
              color: context.color.textLight900,
            ),
          ),
        ),
        AppSpacing.vertical.s5,
        CustomCard(
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: context.textStyle.bodySmallRegular.copyWith(
              color: context.color.textLight600,
            ),
          ),
        ),
      ],
    );
  }
}
