import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ui_kit/src/widgets/button/custom_text_button.dart';
import 'package:ui_kit/ui_kit.dart';

class MovementDetailsUploadAttachments extends StatelessWidget {
  const MovementDetailsUploadAttachments({
    required this.onFileSelected,
    super.key,
  });

  final void Function(File file) onFileSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Adjuntos',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s3,
        CustomTextButton(
          text: 'Añadir archivo',
          onTap: () {
            UploadAttachmentsBottomSheet.show(
              context: context,
              onFileSelected: onFileSelected,
            );
          },
        ),
      ],
    );
  }
}
