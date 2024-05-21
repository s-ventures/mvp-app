import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ErpDetailsAttachments extends StatelessWidget {
  const ErpDetailsAttachments({
    super.key,
  });

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
        ListTile(
          dense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s4,
          ),
          tileColor: context.color.backgroundLight0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              context.radius.soft,
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
            'Archivo1.pdf',
            style: context.textStyle.bodyMediumRegular,
          ),
          subtitle: Text(
            '28/11/23 - 100 KB',
            style: context.textStyle.buttonTabBar.copyWith(
              color: context.color.textLight600,
            ),
          ),
        ),
      ],
    );
  }
}
