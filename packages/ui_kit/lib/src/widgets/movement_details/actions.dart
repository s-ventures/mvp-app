import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class MovementDetailsActions extends StatelessWidget {
  const MovementDetailsActions({
    required this.onUploadFilesPressed,
    required this.onCreateExpensePressed,
    super.key,
  });

  final VoidCallback onUploadFilesPressed;
  final VoidCallback onCreateExpensePressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.loc.commonAttachments,
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        GestureDetector(
          onTap: onUploadFilesPressed,
          child: Text(
            context.loc.commonAddFile,
            style: context.textStyle.bodyMediumSemiBold.copyWith(
              color: context.color.statusInfo,
            ),
          ),
        ),
      ],
    );
  }
}
