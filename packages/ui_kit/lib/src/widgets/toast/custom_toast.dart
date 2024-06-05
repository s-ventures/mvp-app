import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomToast extends StatelessWidget {
  const CustomToast({
    required this.content,
    required this.type,
    this.title,
    this.action,
    this.actionLabel,
    this.isDismissible = false,
    super.key,
  });

  final String? title;
  final String content;
  final VoidCallback? action;
  final String? actionLabel;
  final ToastType type;
  final bool isDismissible;

  static Future<void> show(
    BuildContext context, {
    required String content,
    required ToastType type,
    String? title,
    VoidCallback? action,
    String? actionLabel,
    bool? isDismissible,
  }) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: CustomToast(
          title: title,
          content: content,
          type: type,
          action: action,
          actionLabel: actionLabel,
          isDismissible: isDismissible ?? false,
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
        padding: const EdgeInsets.all(
          AppSpacing.s1,
        ),
        // ignore: avoid_redundant_argument_values
        duration: kSnackBarDisplayDuration,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s5),
      decoration: BoxDecoration(
        color: type.backgroundColor(context),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        border: Border(
          left: BorderSide(
            color: type.borderColor(context),
            width: 4,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != null && title!.isNotEmpty) ...[
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title!,
                          style: context.textStyle.bodyMediumSemiBold.copyWith(
                            color: type.foregroundColor(context),
                          ),
                        ),
                      ),
                      if (isDismissible) ...[
                        GestureDetector(
                          onTap: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          },
                          child: IconSvg.small(
                            IconAssets.xMark,
                            color: type.iconColor(context),
                          ),
                        ),
                      ],
                    ],
                  ),
                  AppSpacing.vertical.s3,
                ],
                Text(
                  content,
                  maxLines: (title != null && title!.isNotEmpty) ||
                          (action != null && actionLabel != null)
                      ? 2
                      : 3,
                  overflow: TextOverflow.ellipsis,
                  style: context.textStyle.bodyMediumRegular.copyWith(
                    color: type.foregroundColor(context),
                  ),
                ),
                if (action != null) ...[
                  AppSpacing.vertical.s3,
                  GestureDetector(
                    onTap: () {
                      action!();
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    },
                    child: Text(
                      actionLabel!,
                      style: context.textStyle.bodyMediumSemiBold.copyWith(
                        decoration: TextDecoration.underline,
                        color: type.foregroundColor(context),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          if (isDismissible && (title == null || title!.isEmpty) && action == null) ...[
            AppSpacing.horizontal.s5,
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
              child: IconSvg.small(
                IconAssets.xMark,
                color: type.iconColor(context),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
