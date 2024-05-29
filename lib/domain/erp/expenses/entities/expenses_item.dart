import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_unit_of_measure.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_vat.dart';

part 'expenses_item.freezed.dart';

@freezed
class ExpensesItem with _$ExpensesItem {
  const factory ExpensesItem({
    required int relativeOrder,
    required String itemCode,
    required String description,
    required int quantity,
    required ExpensesUnitOfMeasure unitOfMeasure,
    required double price,
    required double discount,
    // required Vat vat,
    required ExpensesVat vat,
    required int vatAmount,
    required UniqueId expenseItemsId,
    required UniqueId expenseId,
  }) = _ExpensesItem;
}
