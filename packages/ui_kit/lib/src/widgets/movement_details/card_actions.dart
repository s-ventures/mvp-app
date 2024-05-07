import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_kit/ui_kit.dart';

class CardMovementDetailsActions extends StatelessWidget {
  const CardMovementDetailsActions({
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
          'Recibo',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        GestureDetector(
          onTap: onUploadFilesPressed,
          child: Text(
            'Subir archivo',
            style: context.textStyle.bodyMediumSemiBold.copyWith(
              color: context.color.statusInfo,
            ),
          ),
        ),
        AppSpacing.vertical.s5,
        Text(
          'Gasto',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        GestureDetector(
          onTap: onCreateExpensePressed,
          child: Text(
            'Crear gasto',
            style: context.textStyle.bodyMediumSemiBold.copyWith(
              color: context.color.statusInfo,
            ),
          ),
        ),
      ],
    );
  }
}
