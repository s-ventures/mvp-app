// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_attachment_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileAttachmentInfoDtoImpl _$$FileAttachmentInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FileAttachmentInfoDtoImpl(
      fileId: json['fileId'] as int,
      fileName: json['fileName'] as String,
      fileLength: json['fileLength'] as int,
      createDate: const DateConverter().fromJson(json['createDate'] as String),
    );

Map<String, dynamic> _$$FileAttachmentInfoDtoImplToJson(
        _$FileAttachmentInfoDtoImpl instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'fileName': instance.fileName,
      'fileLength': instance.fileLength,
      'createDate': const DateConverter().toJson(instance.createDate),
    };
