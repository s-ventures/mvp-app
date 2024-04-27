// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_attachment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionAttachmentDtoImpl _$$TransactionAttachmentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionAttachmentDtoImpl(
      transactionAttachmentId: json['transactionAttachmentId'] as int,
      movementId: json['movementId'] as int,
      fileId: json['fileId'] as int,
    );

Map<String, dynamic> _$$TransactionAttachmentDtoImplToJson(
        _$TransactionAttachmentDtoImpl instance) =>
    <String, dynamic>{
      'transactionAttachmentId': instance.transactionAttachmentId,
      'movementId': instance.movementId,
      'fileId': instance.fileId,
    };
