// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claims_filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClaimsFilterDto _$ClaimsFilterDtoFromJson(Map<String, dynamic> json) =>
    ClaimsFilterDto(
      claimId: json['claimId'] as int?,
      insuranceId: (json['insuranceId'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      year: json['year'] as int?,
      dossier: json['dossier'] as String?,
      createDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['createDateFrom'], const DateConverter().fromJson),
      createDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['createDateTo'], const DateConverter().fromJson),
      status: $enumDecodeNullable(_$ClaimStatusTypeDtoEnumMap, json['status']),
      riskType: json['riskType'] as String?,
      reason: json['reason'] as String?,
      riskLocation: json['riskLocation'] as String?,
      processStartDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['processStartDateFrom'], const DateConverter().fromJson),
      processStartDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['processStartDateTo'], const DateConverter().fromJson),
      processEndDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['processEndDateFrom'], const DateConverter().fromJson),
      processEndDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['processEndDateTo'], const DateConverter().fromJson),
      agentName: json['agentName'] as String?,
      agentEmail: json['agentEmail'] as String?,
      agentTelephone: json['agentTelephone'] as String?,
      pageNumber: json['pageNumber'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 10,
    );

Map<String, dynamic> _$ClaimsFilterDtoToJson(ClaimsFilterDto instance) {
  final val = <String, dynamic>{
    'pageSize': instance.pageSize,
    'pageNumber': instance.pageNumber,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('claimId', instance.claimId);
  writeNotNull('insuranceId', instance.insuranceId);
  writeNotNull('year', instance.year);
  writeNotNull('dossier', instance.dossier);
  writeNotNull(
      'createDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.createDateFrom, const DateConverter().toJson));
  writeNotNull(
      'createDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.createDateTo, const DateConverter().toJson));
  writeNotNull('status', _$ClaimStatusTypeDtoEnumMap[instance.status]);
  writeNotNull('riskType', instance.riskType);
  writeNotNull('reason', instance.reason);
  writeNotNull('riskLocation', instance.riskLocation);
  writeNotNull(
      'processStartDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.processStartDateFrom, const DateConverter().toJson));
  writeNotNull(
      'processStartDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.processStartDateTo, const DateConverter().toJson));
  writeNotNull(
      'processEndDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.processEndDateFrom, const DateConverter().toJson));
  writeNotNull(
      'processEndDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.processEndDateTo, const DateConverter().toJson));
  writeNotNull('agentName', instance.agentName);
  writeNotNull('agentEmail', instance.agentEmail);
  writeNotNull('agentTelephone', instance.agentTelephone);
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$ClaimStatusTypeDtoEnumMap = {
  ClaimStatusTypeDto.open: 'OPEN',
  ClaimStatusTypeDto.in_progress: 'IN_PROGRESS',
  ClaimStatusTypeDto.close: 'CLOSE',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
