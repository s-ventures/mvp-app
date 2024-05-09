// ignore_for_file: one_member_abstracts

import 'dart:io';

import 'package:async/async.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';

abstract class UploadFileRepository {
  /// Initiates an operation to upload a file.
  ///
  /// The [file] parameter represents the file to be uploaded.
  /// The returned value is a [CancelableOperation] that will resolve to an [Either] type.
  /// If the operation is successful, it returns a [File] representing the uploaded attachment.
  /// If an error occurs during the operation, it returns an [UploadFileFailure].
  CancelableOperation<Either<UploadFileFailure, FileAttachmentUploaded>> uploadFile(File file);
}
