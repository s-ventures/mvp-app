import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';

part 'file_attachment_dto.freezed.dart';
part 'file_attachment_dto.g.dart';

@freezed
class FileAttachmentDto with _$FileAttachmentDto {
  const factory FileAttachmentDto({
    required int documentId,
    required String fileName,
    required int fileLength,
    @DateConverter() required DateTime createDate,
    required int customerId,
    @DateConverter() DateTime? deleteDate,
    List<String>? content,
  }) = _FileAttachmentDto;

  factory FileAttachmentDto.fromJson(Map<String, dynamic> json) => _$FileAttachmentDtoFromJson(json);
}

extension FileAttachmentDtoX on FileAttachmentDto {
  FileAttachmentUploaded toDomain() {
    return FileAttachmentUploaded(
      id: documentId.toString(),
      fileName: fileName,
      size: fileLength,
      timeStamp: createDate,
    );
  }
}
