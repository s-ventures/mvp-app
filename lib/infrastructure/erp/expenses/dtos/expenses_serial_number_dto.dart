import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_serial_number.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_type_dto.dart';

part 'expenses_serial_number_dto.freezed.dart';
part 'expenses_serial_number_dto.g.dart';

@freezed
class ExpenseSerialNumberDto with _$ExpenseSerialNumberDto {
  const factory ExpenseSerialNumberDto({
    required int serialNumberId,
    required int erpContractId,
    required ExpensesTypeDto type,
    required String alias,
    required String description,
    required int numberLast,
    required String format,
    required int templateId,
  }) = _ExpenseSerialNumberDto;

  factory ExpenseSerialNumberDto.fromJson(Map<String, dynamic> json) =>
      _$ExpenseSerialNumberDtoFromJson(json);
}

extension ExpenseSerialNumberDtoX on ExpenseSerialNumberDto {
  ExpensesSerialNumber toDomain() {
    return ExpensesSerialNumber(
      serialNumberId: UniqueId.fromUniqueString(serialNumberId.toString()),
      erpContractId: UniqueId.fromUniqueString(erpContractId.toString()),
      type: type.toDomain(),
      alias: alias,
      description: description,
      numberLast: numberLast,
      format: format,
      templateId: UniqueId.fromUniqueString(templateId.toString()),
    );
  }
}
