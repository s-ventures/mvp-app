import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_type.dart';

part 'expenses_serial_number.freezed.dart';

@freezed
class ExpensesSerialNumber with _$ExpensesSerialNumber {
  const factory ExpensesSerialNumber({
    required UniqueId serialNumberId,
    required UniqueId erpContractId,
    required ExpensesType type,
    required String alias,
    required String description,
    required int numberLast,
    required String format,
    required UniqueId templateId,
  }) = _ExpensesSerialNumber;
}
