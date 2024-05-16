import 'dart:io';

import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/transactions/details/widgets/attachment_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/extensions/gutter_extension.dart';
import 'package:ui_kit/ui_kit.dart';

class TransactionAttachmentsSection extends StatelessWidget {
  const TransactionAttachmentsSection({
    required this.title,
    required this.onFileSelected,
    required this.attachments,
    required this.onRemove,
    super.key,
  });

  final String title;
  final List<FileAttachment> attachments;
  final void Function(File file)? onFileSelected;
  final void Function(FileAttachment attachment) onRemove;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s3,
        if (attachments.isNotEmpty)
          ...attachments
              .map(
                (attachment) => AttachmentListTile(
                  attachment: attachment,
                  onRemove: () => onRemove(attachment),
                ),
              )
              .toList()
              .separateVertical(AppSpacing.s3),
        if (onFileSelected != null)
          CustomTextButton(
            text: 'Añadir archivo',
            onTap: () {
              UploadAttachmentsBottomSheet.show(
                context: context,
                onFileSelected: onFileSelected!,
              );
            },
          ),
      ],
    );
  }
}
