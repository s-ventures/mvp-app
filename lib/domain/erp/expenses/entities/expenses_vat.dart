import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'expenses_vat.freezed.dart';

@freezed
class ExpensesVat with _$ExpensesVat {
  const factory ExpensesVat({
    required UniqueId vatId,
    required int percentage,
    required String description,
    required DateTime initialDate,
    required DateTime endDate,
  }) = _ExpensesVat;
}
