import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/aggregation/dtos/aggregated_product_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/aggregation/dtos/status_dto.dart';

part 'registration_process_status_dto.freezed.dart';
part 'registration_process_status_dto.g.dart';

@freezed
class RegistrationProcessStatusDto with _$RegistrationProcessStatusDto {
  const factory RegistrationProcessStatusDto({
    required StatusDto status,
    required AggregatedProductDto product,
  }) = _RegistrationProcessStatusDto;

  factory RegistrationProcessStatusDto.fromJson(Map<String, dynamic> json) =>
      _$RegistrationProcessStatusDtoFromJson(json);
}
