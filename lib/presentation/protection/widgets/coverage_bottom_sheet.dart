import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

class CoverageBottomSheet {
  static void show({
    required BuildContext context,
    required String title,
    required String message,
  }) {
    showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      builder: (BuildContext context) {
        return SafeArea(
          child: Container(
            padding: const EdgeInsets.only(
              top: AppSpacing.s5,
              left: AppSpacing.s5,
              right: AppSpacing.s5,
            ),
            decoration: ShapeDecoration(
              color: context.color.bottomSheetBackground,
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
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: context.textStyle.bodyMediumSemiBold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.close,
                        color: context.color.iconLight900,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                  ],
                ),
                AppSpacing.vertical.s5,
                Container(
                  padding: const EdgeInsets.all(AppSpacing.s5),
                  decoration: ShapeDecoration(
                    color: context.color.strokeLigth100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(context.radius.soft),
                    ),
                  ),
                  child: Text(
                    message,
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                ),
                AppSpacing.vertical.s5,
                Button(
                  onPressed: () async {
                    context.pop();
                  },
                  title: 'Entendido',
                  size: ButtonSize.small,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
