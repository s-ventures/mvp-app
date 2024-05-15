import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.text,
    this.onTap,
    super.key,
  });

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.all(Radius.circular(context.radius.soft));

    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.s3),
            child: Text(
              text,
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.statusInfo,
              ),
            ),
          ),
        ),
      ),
    );
  }
}