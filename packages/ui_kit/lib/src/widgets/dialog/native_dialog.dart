import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/src/theme/app_spacing.dart';
import 'package:ui_kit/src/widgets/dialog/adaptative_dialog_action.dart';

class NativeDialog extends StatelessWidget {
  const NativeDialog({
    required this.title,
    required this.content,
    super.key,
    this.exception,
    this.actions,
  });
  final String title;
  final Widget content;
  final List<AdaptativeDialogAction>? actions;
  final Object? exception;

  static Future<T?> show<T>(
    BuildContext context, {
    required String title,
    required Widget content,
    Object? exception,
    List<AdaptativeDialogAction>? actions,
  }) =>
      showDialog<T>(
        context: context,
        builder: (context) => NativeDialog(
          title: title,
          content: content,
        ),
      );

  @override
  Widget build(BuildContext context) {
    final widget = Material(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: AppSpacing.s5),
          content,
          if (exception != null && kDebugMode) ...[
            const SizedBox(height: AppSpacing.s5),
            ExpansionTile(
              title: const Text('Error details'),
              children: [
                Text(
                  exception.toString(),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSpacing.s5),
              ],
            ),
          ],
        ],
      ),
    );

    return Platform.isIOS
        ? CupertinoAlertDialog(
            title: Text(title, textAlign: TextAlign.center),
            content: widget,
            actions: actions ??
                [
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    onPressed: () => context.pop(),
                    child: const Text('Cerrar'),
                  ),
                ],
          )
        : AlertDialog(
            title: Center(child: Text(title, textAlign: TextAlign.center)),
            backgroundColor: Theme.of(context).colorScheme.surface,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSpacing.s6)),
            contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.s6),
            actionsPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.s6, vertical: AppSpacing.s5),
            actionsAlignment:
                actions != null && actions!.length >= 2 ? MainAxisAlignment.spaceAround : MainAxisAlignment.end,
            actionsOverflowAlignment: OverflowBarAlignment.center,
            actionsOverflowButtonSpacing: AppSpacing.s3,
            actionsOverflowDirection: VerticalDirection.up,
            content: widget,
            actions: actions ??
                [
                  AdaptativeDialogAction(
                    isPrimary: true,
                    onPressed: () async => context.pop(),
                    text: 'Cerrar',
                  ),
                ],
          );
  }
}
