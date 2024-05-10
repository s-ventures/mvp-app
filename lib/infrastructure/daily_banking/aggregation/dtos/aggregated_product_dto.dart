// {
//   "financialInstitutionId": "string",
//   "financialInstitutionName": "string",
//   "id": "string",
//   "name": "string",
//   "type": "UNDEFINED"
// },

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/aggregation/dtos/type_dto.dart';

part 'aggregated_product_dto.freezed.dart';
part 'aggregated_product_dto.g.dart';

@freezed
class AggregatedProductDto with _$AggregatedProductDto {
  const factory AggregatedProductDto({
    required String id,
    required String financialInstitutionId,
    required String financialInstitutionName,
    required String name,
    required TypeDto type,
  }) = _AggregatedProductDto;

  factory AggregatedProductDto.fromJson(Map<String, dynamic> json) =>
      _$AggregatedProductDtoFromJson(json);
}
