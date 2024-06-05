import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:ui_kit/ui_kit.dart';

class AdaptativeDialogAction extends StatelessWidget {
  const AdaptativeDialogAction({
    required this.onPressed,
    required this.text,
    super.key,
    this.isPrimary = false,
  });

  final AsyncCallback onPressed;
  final String text;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoDialogAction(
        onPressed: onPressed,
        child: Text(
          text,
          style: context.textStyle.bodyMedium?.copyWith(
            color: isPrimary ? context.color.secondaryLight600 : context.color.onBackground,
            fontWeight: isPrimary ? FontWeight.bold : null,
          ),
        ),
      );
    } else {
      if (isPrimary) {
        // TODO(migalv): Revisar estilos - esperando a Iran
        return Button(
          onPressed: onPressed,
          title: text,
        );
      } else {
        return Button(
          onPressed: onPressed,
          title: text,
        );
      }
    }
  }
}
