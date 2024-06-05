import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

enum AlertButtonsOrientation {
  horizontal,
  vertical,
}

class AlertBottomSheet {
  static void show({
    required BuildContext context,
    required String icon,
    required String title,
    required String buttonOkText,
    String? message,
    String? buttonOkIcon,
    ButtonType buttonOkType = ButtonType.filled,
    Color? buttonOkBackground,
    Color? buttonOkForeground,
    void Function()? onOkPressed,
    String? buttonCancelText,
    String? buttonCancelIcon,
    ButtonType? buttonCancelType,
    Color? buttonCancelBackground,
    Color? buttonCancelForeground,
    void Function()? onCancelPressed,
    AlertButtonsOrientation buttonsOrientation =
        AlertButtonsOrientation.horizontal,
  }) {
    showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.only(
            top: AppSpacing.s5,
            left: AppSpacing.s5,
            right: AppSpacing.s5,
          ),
          decoration: ShapeDecoration(
            color: context.color.backgroundLight200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(context.radius.hard),
                topRight: Radius.circular(context.radius.hard),
              ),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Container(
                  height: 5,
                  width: 80,
                  margin: const EdgeInsets.only(bottom: AppSpacing.s5),
                  decoration: ShapeDecoration(
                    color: context.color.neutralLight900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              AppSpacing.vertical.s5,
              Center(
                child: IconWithContainer(
                  backgroundColor: context.color.backgroundLight0,
                  icon: icon,
                  size: IconWithContainerSize.large,
                  height: 56,
                  width: 56,
                  borderRadius: BorderRadius.circular(context.radius.hard),
                ),
              ),
              AppSpacing.vertical.s5,
              Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: context.textStyle.h5.copyWith(
                    color: context.color.textLight900,
                  ),
                ),
              ),
              AppSpacing.vertical.s5,
              if (message != null)
                Container(
                  padding: const EdgeInsets.all(
                    AppSpacing.s3,
                  ),
                  decoration: ShapeDecoration(
                    color: context.color.neutralLight100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(context.radius.soft),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                  ),
                ),
              AppSpacing.vertical.s6,
              if (buttonsOrientation == AlertButtonsOrientation.horizontal)
                Row(
                  children: [
                    if (buttonCancelText != null)
                      Expanded(
                        child: Button(
                          title: buttonCancelText,
                          icon: buttonCancelIcon,
                          type: buttonCancelType ?? ButtonType.outlined,
                          size: ButtonSize.small,
                          background: buttonCancelBackground,
                          foreground: buttonCancelForeground,
                          onPressed: () async {
                            context.pop();
                            if (onCancelPressed != null) {
                              onCancelPressed();
                            }
                          },
                        ),
                      ),
                    if (buttonCancelText != null) AppSpacing.horizontal.s3,
                    Expanded(
                      child: Button(
                        title: buttonOkText,
                        icon: buttonOkIcon,
                        type: buttonOkType,
                        size: ButtonSize.small,
                        background: buttonOkBackground,
                        foreground: buttonOkForeground,
                        onPressed: () async {
                          context.pop();
                          if (onOkPressed != null) {
                            onOkPressed();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              if (buttonsOrientation == AlertButtonsOrientation.vertical)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Button(
                      title: buttonOkText,
                      icon: buttonOkIcon,
                      type: buttonOkType,
                      size: ButtonSize.small,
                      background: buttonOkBackground,
                      foreground: buttonOkForeground,
                      onPressed: () async {
                        context.pop();
                        if (onOkPressed != null) {
                          onOkPressed();
                        }
                      },
                    ),
                    if (buttonCancelText != null) AppSpacing.vertical.s3,
                    if (buttonCancelText != null)
                      Button(
                        title: buttonCancelText,
                        icon: buttonCancelIcon,
                        type: buttonCancelType ?? ButtonType.outlined,
                        size: ButtonSize.small,
                        background: buttonCancelBackground,
                        foreground: buttonCancelForeground,
                        onPressed: () async {
                          context.pop();
                          if (onCancelPressed != null) {
                            onCancelPressed();
                          }
                        },
                      ),
                  ],
                ),
              AppSpacing.vertical.s8,
            ],
          ),
        );
      },
    );
  }
}
