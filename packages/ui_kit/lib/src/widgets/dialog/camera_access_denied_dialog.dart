import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/src/widgets/dialog/adaptative_dialog_action.dart';
import 'package:ui_kit/src/widgets/dialog/native_dialog.dart';

class CameraAccessDeniedDialog extends StatelessWidget {
  const CameraAccessDeniedDialog({super.key});

  static void show(BuildContext context) => showDialog<void>(
        context: context,
        builder: (context) => const CameraAccessDeniedDialog(),
      );

  @override
  Widget build(BuildContext context) {
    return NativeDialog(
      title: 'Permisos de cámara',
      content: const Text(
        'Parece que SoOn no tiene permisos para acceder a la cámara de tu dispositivo.\nPermite el acceso desde los ajustes de la aplicación',
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
