import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/core/extensions/double_extension.dart';
import 'package:manifiesto_mvp_app/core/extensions/int_extension.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/presentation/extensions/localization/upload_attachments.dart';
import 'package:ui_kit/ui_kit.dart';

class AttachmentListTile extends StatelessWidget {
  const AttachmentListTile({
    required this.attachment,
    required this.onRemove,
    super.key,
  });

  final FileAttachment attachment;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    String? fileName;
    double? sizeMb;
    final date = attachment.asUploaded()?.timeStamp;
    var isLoading = false;
    var hasError = false;

    attachment.map(
      initial: (attachment) {},
      attached: (attachment) {
        fileName = attachment.fileName;
        sizeMb = attachment.size.bytesToMegaBytes();
      },
      error: (attachment) {
        fileName = attachment.fileName;
        sizeMb = attachment.size.bytesToMegaBytes();
        hasError = true;
      },
      uploading: (attachment) {
        fileName = attachment.fileName;
        sizeMb = attachment.size.bytesToMegaBytes();
        isLoading = true;
      },
      uploaded: (attachment) {
        fileName = attachment.fileName;
        sizeMb = attachment.size.bytesToMegaBytes();
      },
    );

    var subtitle = '${date != null ? '${date.formatToDayMonthYear()} - ' : ''}${sizeMb?.toPrecision(2)} Mb';

    final error = attachment.asError()?.error;
    if (error != null) {
      subtitle = error.localize();
    }

    return OutlinedList(
      children: [
        Splash(
          borderRadius: BorderRadius.circular(context.radius.soft),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.s4,
            ),
            leading: IconWithContainer(
              isLoading: isLoading,
              icon: hasError ? IconAssets.warning : IconAssets.file,
              size: IconWithContainerSize.medium,
              backgroundColor: context.color.neutralLight100,
              foreground: hasError ? context.color.error : Colors.black,
            ),
            title: Text(
              fileName ?? 'Archivo sin nombre',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textStyle.bodySmallSemiBold.copyWith(
                color: hasError ? context.color.error : context.color.textLight900,
              ),
            ),
            subtitle: Text(
              subtitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textStyle.buttonTabBar.copyWith(
                color: hasError ? context.color.error : context.color.textLight600,
              ),
            ),
            trailing: IconButton(
              onPressed: onRemove,
              icon: Icon(
                Icons.close,
                color: context.color.iconLight900,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
