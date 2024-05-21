import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:localizations/localizations.dart';
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
          context.loc.dailyBankingCardMovementDetailsReceipt,
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        GestureDetector(
          onTap: onUploadFilesPressed,
          child: Text(
            context.loc.dailyBankingCardMovementDetailsUploadFile,
            style: context.textStyle.bodyMediumSemiBold.copyWith(
              color: context.color.statusInfo,
            ),
          ),
        ),
        AppSpacing.vertical.s5,
        Text(
          context.loc.dailyBankingCardMovementDetailsExpense,
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        GestureDetector(
          onTap: onCreateExpensePressed,
          child: Text(
            context.loc.dailyBankingCardMovementDetailsCreateExpense,
            style: context.textStyle.bodyMediumSemiBold.copyWith(
              color: context.color.statusInfo,
            ),
          ),
        ),
      ],
    );
  }
}
