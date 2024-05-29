import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_vat.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';

part 'expenses_vat_dto.freezed.dart';
part 'expenses_vat_dto.g.dart';

@freezed
class VatDto with _$VatDto {
  const factory VatDto({
    required int vatId,
    required int percentage,
    required String description,
    @DateConverter() required DateTime initialDate,
    @DateConverter() required DateTime endDate,
  }) = _VatDto;

  factory VatDto.fromJson(Map<String, dynamic> json) => _$VatDtoFromJson(json);
}

extension VatDtoX on VatDto {
  ExpensesVat toDomain() {
    return ExpensesVat(
      vatId: UniqueId.fromUniqueString(vatId.toString()),
      percentage: percentage,
      description: description,
      initialDate: initialDate,
      endDate: endDate,
    );
  }
}
