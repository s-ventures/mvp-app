import 'package:flutter/material.dart';
import 'package:ui_kit/src/extension/theme_extension.dart';
import 'package:ui_kit/src/theme/constants.dart';

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
    this.action,
    this.title,
    super.key,
  });

  final String? title;
  final String content;
  final VoidCallback? action;
  final ToastType type;

  static Future<void> show(
    BuildContext context, {
    required String content,
    required ToastType type,
    String? title,
    VoidCallback? action,
  }) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: CustomToast(
          title: title,
          content: content,
          type: type,
          action: action,
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
        // ignore: avoid_redundant_argument_values
        duration: kSnackBarDisplayDuration,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO(jesus): Implementar custom toast design
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: context.color.surfaceTint,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Text(
        content,
        style: context.textStyle.bodyMedium?.copyWith(
          color: context.color.onSurface,
        ),
      ),
    );
  }
}
