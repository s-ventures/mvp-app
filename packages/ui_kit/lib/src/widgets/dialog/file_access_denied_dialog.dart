import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/src/widgets/dialog/adaptative_dialog_action.dart';
import 'package:ui_kit/src/widgets/dialog/native_dialog.dart';
import 'package:ui_kit/ui_kit.dart';

class FileAccessDeniedDialog extends StatelessWidget {
  const FileAccessDeniedDialog({super.key});

  static void show(BuildContext context) => showDialog<void>(
        context: context,
        builder: (context) => const FileAccessDeniedDialog(),
      );

  @override
  Widget build(BuildContext context) {
    return NativeDialog(
      title: 'Permisos de documentos',
      content: Text(
        'Parece que SoOn no tiene permisos para acceder a los documentos de tu dispositivo.\nPermite el acceso desde los ajustes de la aplicación',
        style: context.textStyle.bodyMedium?.copyWith(
          color: context.color.onBackground,
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        AdaptativeDialogAction(
          onPressed: () async => context.pop(),
          text: 'Cerrar',
        ),
        AdaptativeDialogAction(
          isPrimary: true,
          onPressed: () async {
            await AppSettings.openAppSettings();
            if (context.mounted) {
              context.pop();
            }
          },
          text: 'Abrir ajustes',
        ),
      ],
    );
  }
}
