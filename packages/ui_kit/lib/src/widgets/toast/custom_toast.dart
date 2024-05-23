import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum ToastType {
  error,
  warning,
  info,
  success,
}

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
        color: type == ToastType.error
            ? const Color(0xFFFAEAEA)
            : type == ToastType.warning
                ? const Color(0xFFFAF8EA)
                : type == ToastType.info
                    ? const Color(0xFFEAF6FA)
                    : type == ToastType.success
                        ? const Color(0xFFECFAEA)
                        : const Color(0xFFF4F4FC),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        border: Border(
          left: BorderSide(
            color: type == ToastType.error
                ? context.color.statusError
                : type == ToastType.warning
                    ? context.color.statusWarning
                    : type == ToastType.info
                        ? context.color.statusInfo
                        : type == ToastType.success
                            ? context.color.statusSuccess
                            : context.color.neutralLight100,
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
                            color: type == ToastType.error
                                ? context.color.statusError
                                : type == ToastType.warning
                                    ? context.color.statusWarning
                                    : type == ToastType.info
                                        ? context.color.statusInfo
                                        : type == ToastType.success
                                            ? context.color.statusSuccess
                                            : context.color.textLight900,
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
                            color: type == ToastType.error
                                ? context.color.statusError
                                : type == ToastType.warning
                                    ? context.color.statusWarning
                                    : type == ToastType.info
                                        ? context.color.statusInfo
                                        : type == ToastType.success
                                            ? context.color.statusSuccess
                                            : context.color.textLight900,
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
                    color: type == ToastType.error
                        ? context.color.statusError
                        : type == ToastType.warning
                            ? context.color.statusWarning
                            : type == ToastType.info
                                ? context.color.statusInfo
                                : type == ToastType.success
                                    ? context.color.statusSuccess
                                    : context.color.textLight900,
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
                        color: type == ToastType.error
                            ? context.color.statusError
                            : type == ToastType.warning
                                ? context.color.statusWarning
                                : type == ToastType.info
                                    ? context.color.statusInfo
                                    : type == ToastType.success
                                        ? context.color.statusSuccess
                                        : context.color.textLight900,
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
                color: type == ToastType.error
                    ? context.color.statusError
                    : type == ToastType.warning
                        ? context.color.statusWarning
                        : type == ToastType.info
                            ? context.color.statusInfo
                            : type == ToastType.success
                                ? context.color.statusSuccess
                                : context.color.textLight900,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
