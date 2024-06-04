import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/serial_number_type.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'serial_number.freezed.dart';

@freezed
class SerialNumber with _$SerialNumber {
  const factory SerialNumber({
    required UniqueId serialNumberId,
    required UniqueId erpContractId,
    required SerialNumberType type,
    required String alias,
    required String description,
    required int numberLast,
    required String format,
    required UniqueId templateId,
  }) = _SerialNumber;
}
