// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxDto _$TaxDtoFromJson(Map<String, dynamic> json) => TaxDto(
      taxId: json['taxId'] as int,
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String,
      issuer: json['issuer'] as String,
      taxFormCode: json['taxFormCode'] as String,
      reference: json['reference'] as String,
      identificationNumber: json['identificationNumber'] as String,
      accrualDate: const DateConverter().fromJson(json['accrualDate'] as String),
      documentReference: json['documentReference'] as String,
      specificData: json['specificData'] as String,
      issuerName: json['issuerName'] as String,
      taxFormDescription: json['taxFormDescription'] as String,
      bankReference: json['bankReference'] as String,
      nrc: json['nrc'] as String,
      paymentDate: const DateConverter().fromJson(json['paymentDate'] as String),
      movementNumber: json['movementNumber'] as String,
      movementId: json['movementId'] as int,
      accountId: json['accountId'] as int,
    );

Map<String, dynamic> _$TaxDtoToJson(TaxDto instance) => <String, dynamic>{
      'taxId': instance.taxId,
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
      'issuer': instance.issuer,
      'taxFormCode': instance.taxFormCode,
      'reference': instance.reference,
      'identificationNumber': instance.identificationNumber,
      'accrualDate': const DateConverter().toJson(instance.accrualDate),
      'documentReference': instance.documentReference,
      'specificData': instance.specificData,
      'issuerName': instance.issuerName,
      'taxFormDescription': instance.taxFormDescription,
      'bankReference': instance.bankReference,
      'nrc': instance.nrc,
      'paymentDate': const DateConverter().toJson(instance.paymentDate),
      'movementNumber': instance.movementNumber,
      'movementId': instance.movementId,
      'accountId': instance.accountId,
    };
