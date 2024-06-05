// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_transactions_filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardTransactionsFilterDto _$CardTransactionsFilterDtoFromJson(
        Map<String, dynamic> json) =>
    CardTransactionsFilterDto(
      cardContractId: (json['cardContractId'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      cardId: (json['cardId'] as List<dynamic>).map((e) => e as int).toList(),
      amountFrom: (json['amountFrom'] as num?)?.toDouble(),
      amountTo: (json['amountTo'] as num?)?.toDouble(),
      postingDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['postingDateFrom'], const DateConverter().fromJson),
      postingDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['postingDateTo'], const DateConverter().fromJson),
      concept: json['concept'] as String?,
      pageSize: json['pageSize'] as int,
      pageNumber: json['pageNumber'] as int,
    );

Map<String, dynamic> _$CardTransactionsFilterDtoToJson(
    CardTransactionsFilterDto instance) {
  final val = <String, dynamic>{
    'pageSize': instance.pageSize,
    'pageNumber': instance.pageNumber,
    'cardContractId': instance.cardContractId,
    'cardId': instance.cardId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'postingDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.postingDateFrom, const DateConverter().toJson));
  writeNotNull(
      'postingDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.postingDateTo, const DateConverter().toJson));
  writeNotNull('amountFrom', instance.amountFrom);
  writeNotNull('amountTo', instance.amountTo);
  writeNotNull('concept', instance.concept);
  return val;
}

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
