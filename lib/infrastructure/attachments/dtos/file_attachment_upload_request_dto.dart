import 'package:json_annotation/json_annotation.dart';

part 'file_attachment_upload_request_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class FileAttachmentUploadRequestDto {
  const FileAttachmentUploadRequestDto({
    required this.fileName,
    required this.content,
  });

  factory FileAttachmentUploadRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FileAttachmentUploadRequestDtoFromJson(json);

  final String fileName;
  final String content;

  Map<String, dynamic> toJson() => _$FileAttachmentUploadRequestDtoToJson(this);
}
