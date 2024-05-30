import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum ToastType {
  error,
  info,
  success,
  warning,
}

extension ToastTypeColorX on ToastType {
  Color backgroundColor(BuildContext context) {
    switch (this) {
      case ToastType.error:
        return context.color.toastErrorBackground;
      case ToastType.info:
        return context.color.toastInfoBackground;
      case ToastType.success:
        return context.color.toastSuccessBackground;
      case ToastType.warning:
        return context.color.toastWarningBackground;
    }
  }

  Color borderColor(BuildContext context) {
    switch (this) {
      case ToastType.error:
        return context.color.statusError;
      case ToastType.info:
        return context.color.statusInfo;
      case ToastType.success:
        return context.color.statusSuccess;
      case ToastType.warning:
        return context.color.statusWarning;
    }
  }

  Color foregroundColor(BuildContext context) {
    switch (this) {
      case ToastType.error:
        return context.color.statusError;
      case ToastType.info:
        return context.color.statusInfo;
      case ToastType.success:
        return context.color.statusSuccess;
      case ToastType.warning:
        return context.color.statusWarning;
    }
  }

  IconSvg icon(BuildContext context) {
    switch (this) {
      case ToastType.error:
        return IconSvg(
          IconAssets.xMark,
          color: context.color.statusError,
        );
      case ToastType.info:
        return IconSvg(
          IconAssets.info,
          color: context.color.statusInfo,
        );
      case ToastType.success:
        return IconSvg(
          IconAssets.check,
          color: context.color.statusSuccess,
        );
      case ToastType.warning:
        return IconSvg(
          IconAssets.warning,
          color: context.color.statusWarning,
        );
    }
  }

  Color iconColor(BuildContext context) {
    switch (this) {
      case ToastType.error:
        return context.color.statusError;
      case ToastType.info:
        return context.color.statusInfo;
      case ToastType.success:
        return context.color.statusSuccess;
      case ToastType.warning:
        return context.color.statusWarning;
    }
  }
}
