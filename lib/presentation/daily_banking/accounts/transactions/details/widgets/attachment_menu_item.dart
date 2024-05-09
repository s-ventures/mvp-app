import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manifiesto_mvp_app/core/extensions/double_extension.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:ui_kit/ui_kit.dart';

class AttachmentMenuItem extends StatelessWidget {
  const AttachmentMenuItem({
    required this.attachment,
    super.key,
  });

  final FileAttachment attachment;

  @override
  Widget build(BuildContext context) {
    String? fileName;
    DateTime? date;
    double? sizeMb;
    Color? textColor;

    attachment.map(
      initial: (attachment) {},
      loading: (attachment) {},
      attached: (attachment) {
        fileName = attachment.fileName;
      },
      error: (attachment) {
        fileName = attachment.fileName;
      },
      deleting: (attachment) {},
      uploading: (attachment) {
        fileName = attachment.fileName;
      },
      uploaded: (attachment) {
        fileName = attachment.fileName;
      },
    );

    return OutlinedList(
      children: [
        Splash(
          borderRadius: BorderRadius.circular(context.radius.soft),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.s4,
              vertical: AppSpacing.s2,
            ),
            leading: IconWithContainer(
              icon: IconAssets.file,
              size: IconWithContainerSize.medium,
              backgroundColor: context.color.neutralLight100,
            ),
            title: Text(
              // TODO: REVIEW NULL CASE
              fileName ?? 'No name',
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.textLight900,
              ),
            ),
            subtitle: Text(
              '${date.formatToDayMonthYear()} - ${sizeMb?.toPrecision(2)} Mb',
              style: context.textStyle.buttonTabBar.copyWith(
                color: context.color.textLight600,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                // TODO: IMPLEMENT REMOVE
              },
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
