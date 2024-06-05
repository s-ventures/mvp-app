// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movement_attachment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovementAttachmentDtoImpl _$$MovementAttachmentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MovementAttachmentDtoImpl(
      movementAttachmentId: json['movementAttachmentId'] as int,
      movementId: json['movementId'] as int,
      fileId: json['fileId'] as int,
    );

Map<String, dynamic> _$$MovementAttachmentDtoImplToJson(
        _$MovementAttachmentDtoImpl instance) =>
    <String, dynamic>{
      'movementAttachmentId': instance.movementAttachmentId,
      'movementId': instance.movementId,
      'fileId': instance.fileId,
    };
