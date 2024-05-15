// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_attachment_upload_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileAttachmentUploadRequestDto _$FileAttachmentUploadRequestDtoFromJson(
        Map<String, dynamic> json) =>
    FileAttachmentUploadRequestDto(
      fileName: json['fileName'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$FileAttachmentUploadRequestDtoToJson(
        FileAttachmentUploadRequestDto instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'content': instance.content,
    };
