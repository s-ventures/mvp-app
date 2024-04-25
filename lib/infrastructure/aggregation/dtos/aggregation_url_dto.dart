import 'package:freezed_annotation/freezed_annotation.dart';

part 'aggregation_url_dto.freezed.dart';
part 'aggregation_url_dto.g.dart';

@freezed
class AggregationUrlDto with _$AggregationUrlDto {
  const factory AggregationUrlDto({
    required String fullLink,
  }) = _AggregationUrlDto;

  factory AggregationUrlDto.fromJson(Map<String, dynamic> json) =>
      _$AggregationUrlDtoFromJson(json);
}
