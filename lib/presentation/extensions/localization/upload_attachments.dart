import 'package:manifiesto_mvp_app/core/extensions/double_extension.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';

extension UploadAttachmentX on UploadFileFailure {
  String localize() => map(
        uploadFailed: (_) => 'Ocurrió un error en la súbida',
        fileExceedsMaxSize: (e) => 'Archivo superó el tamaño máximo (${e.maxSize.toPrecision(2)} Mb)',
        unexpected: (_) => 'Algó salió mal, prueba de nuevo',
      );
}
