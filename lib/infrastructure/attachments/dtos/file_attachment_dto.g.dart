// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_attachment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileAttachmentDtoImpl _$$FileAttachmentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FileAttachmentDtoImpl(
      documentId: json['documentId'] as int,
      fileName: json['fileName'] as String,
      fileLength: json['fileLength'] as int,
      createDate: const DateConverter().fromJson(json['createDate'] as String),
      customerId: json['customerId'] as int,
      deleteDate: _$JsonConverterFromJson<String, DateTime>(
          json['deleteDate'], const DateConverter().fromJson),
      content:
          (json['content'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$FileAttachmentDtoImplToJson(
        _$FileAttachmentDtoImpl instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'fileName': instance.fileName,
      'fileLength': instance.fileLength,
      'createDate': const DateConverter().toJson(instance.createDate),
      'customerId': instance.customerId,
      'deleteDate': _$JsonConverterToJson<String, DateTime>(
          instance.deleteDate, const DateConverter().toJson),
      'content': instance.content,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
