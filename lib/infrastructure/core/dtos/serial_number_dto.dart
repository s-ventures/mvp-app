import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/serial_number.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/serial_number_type.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'serial_number_dto.freezed.dart';
part 'serial_number_dto.g.dart';

@freezed
class SerialNumberDto with _$SerialNumberDto {
  const factory SerialNumberDto({
    required int serialNumberId,
    required int erpContractId,
    required SerialNumberType type,
    required String alias,
    required String description,
    required int numberLast,
    required String format,
    required int templateId,
  }) = _SerialNumberDto;

  factory SerialNumberDto.fromJson(Map<String, dynamic> json) => _$SerialNumberDtoFromJson(json);
}

extension SerialNumberDtoX on SerialNumberDto {
  SerialNumber toDomain() {
    return SerialNumber(
      serialNumberId: UniqueId.fromUniqueString(serialNumberId.toString()),
      erpContractId: UniqueId.fromUniqueString(erpContractId.toString()),
      type: type,
      alias: alias,
      description: description,
      numberLast: numberLast,
      format: format,
      templateId: UniqueId.fromUniqueString(templateId.toString()),
    );
  }
}
