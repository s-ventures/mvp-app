import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';

part 'file_attachment_info_dto.freezed.dart';
part 'file_attachment_info_dto.g.dart';

@freezed
class FileAttachmentInfoDto with _$FileAttachmentInfoDto {
  const factory FileAttachmentInfoDto({
    required int fileId,
    required String fileName,
    required int fileLength,
    @DateConverter() required DateTime createDate,
  }) = _FileAttachmentInfoDto;

  factory FileAttachmentInfoDto.fromJson(Map<String, dynamic> json) => _$FileAttachmentInfoDtoFromJson(json);
}

extension FileAttachmentInfoDtoX on FileAttachmentInfoDto {
  FileAttachmentUploaded toDomain() {
    return FileAttachmentUploaded(
      id: fileId.toString(),
      fileName: fileName,
      size: fileLength,
      timeStamp: createDate,
    );
  }
}
