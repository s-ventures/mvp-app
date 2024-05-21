import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

mixin ShowToastMixin {
  void showSuccessToast(
    BuildContext context, {
    required String message,
    String? title,
    VoidCallback? action,
  }) {
    CustomToast.show(
      context,
      title: title,
      action: action,
      content: message,
      type: ToastType.success,
    );
  }

  void showToastFailure(
    BuildContext context, {
    required String message,
    String? title,
    VoidCallback? action,
  }) {
    CustomToast.show(
      context,
      title: title,
      action: action,
      content: message,
      type: ToastType.error,
    );
  }
}
