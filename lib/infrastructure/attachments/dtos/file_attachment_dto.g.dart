// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_attachment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileAttachmentDtoImpl _$$FileAttachmentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FileAttachmentDtoImpl(
      fileId: json['fileId'] as int,
      fileName: json['fileName'] as String,
      fileLength: json['fileLength'] as int,
      createDate: const DateConverter().fromJson(json['createDate'] as String),
    );

Map<String, dynamic> _$$FileAttachmentDtoImplToJson(
        _$FileAttachmentDtoImpl instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'fileName': instance.fileName,
      'fileLength': instance.fileLength,
      'createDate': const DateConverter().toJson(instance.createDate),
    };
