// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_debit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectDebitDto _$DirectDebitDtoFromJson(Map<String, dynamic> json) =>
    DirectDebitDto(
      directDebitId: json['directDebitId'] as int,
      returned: json['returned'] as bool?,
      debitKey: json['debitKey'] as String,
      issuer: json['issuer'] as String?,
      debitReference: json['debitReference'] as String?,
      returnDate: json['returnDate'] == null
          ? null
          : DateTime.parse(json['returnDate'] as String),
      movementNumber: json['movementNumber'] as String?,
      movementId: json['movementId'] as int,
      fileId: json['fileId'] as int?,
      accountId: json['accountId'] as int,
    );

Map<String, dynamic> _$DirectDebitDtoToJson(DirectDebitDto instance) {
  final val = <String, dynamic>{
    'directDebitId': instance.directDebitId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('returned', instance.returned);
  val['debitKey'] = instance.debitKey;
  writeNotNull('issuer', instance.issuer);
  writeNotNull('debitReference', instance.debitReference);
  writeNotNull('returnDate', instance.returnDate?.toIso8601String());
  writeNotNull('movementNumber', instance.movementNumber);
  val['movementId'] = instance.movementId;
  writeNotNull('fileId', instance.fileId);
  val['accountId'] = instance.accountId;
  return val;
}
