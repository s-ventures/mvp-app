// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_attachment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpensesAttachmentDtoImpl _$$ExpensesAttachmentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ExpensesAttachmentDtoImpl(
      expenseAttachmentId: json['expenseAttachmentId'] as int,
      expenseId: json['expenseId'] as int,
      fileId: json['fileId'] as int,
    );

Map<String, dynamic> _$$ExpensesAttachmentDtoImplToJson(
        _$ExpensesAttachmentDtoImpl instance) =>
    <String, dynamic>{
      'expenseAttachmentId': instance.expenseAttachmentId,
      'expenseId': instance.expenseId,
      'fileId': instance.fileId,
    };
