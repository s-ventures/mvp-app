import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ErpDetailsAttachments extends StatelessWidget {
  const ErpDetailsAttachments({
    required this.title,
    required this.date,
    required this.size,
    this.onPressed,
    super.key,
  });

  final String title;
  final String date;
  final String size;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Archivos adjuntos',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        Splash(
          borderRadius: BorderRadius.circular(
            context.radius.soft,
          ),
          onPressed: onPressed != null ? () async => onPressed!.call() : null,
          child: ListTile(
            dense: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.s4,
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
            leading: IconWithContainer(
              icon: IconAssets.file,
              backgroundColor: context.color.backgroundLight200,
              borderRadius: BorderRadius.circular(
                context.radius.soft,
              ),
            ),
            title: Text(
              title,
              style: context.textStyle.bodyMediumRegular,
            ),
            subtitle: Text(
              '$date - $size',
              style: context.textStyle.buttonTabBar.copyWith(
                color: context.color.textLight600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
