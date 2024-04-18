import 'package:freezed_annotation/freezed_annotation.dart';

part 'banking_aggregation_url_dto.freezed.dart';
part 'banking_aggregation_url_dto.g.dart';

@freezed
class BankingAggregationUrlDto with _$BankingAggregationUrlDto {
  const factory BankingAggregationUrlDto({
    required String fullLink,
  }) = _BankingAggregationUrlDto;

  factory BankingAggregationUrlDto.fromJson(Map<String, dynamic> json) =>
      _$BankingAggregationUrlDtoFromJson(json);
}
