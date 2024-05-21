import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:manifiesto_mvp_app/presentation/shared/transaction/transaction_attachments_section.dart';
import 'package:ui_kit/ui_kit.dart';

class TransactionActionsSection extends StatelessWidget {
  const TransactionActionsSection({
    required this.attachments,
    required this.onRemove,
    super.key,
    this.onFileSelected,
  });

  final List<FileAttachment> attachments;
  final void Function(File file)? onFileSelected;
  final void Function(FileAttachment attachment) onRemove;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionAttachmentsSection(
          title: 'Adjuntos',
          attachments: attachments,
          onFileSelected: onFileSelected,
          onRemove: onRemove,
        ),
        AppSpacing.vertical.s5,
        Text(
          'Gasto',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        Button(
          type: ButtonType.text,
          title: 'Crear gasto',
          onPressed: () async => context.goNamed(AppRoute.negocio.name),
        ),
      ],
    );
  }
}
