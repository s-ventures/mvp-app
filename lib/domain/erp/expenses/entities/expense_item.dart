import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/unit_of_measure.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/vat.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'expense_item.freezed.dart';

@freezed
class ExpenseItem with _$ExpenseItem {
  const factory ExpenseItem({
    required int relativeOrder,
    required String itemCode,
    required String description,
    required int quantity,
    required UnitOfMeasure unitOfMeasure,
    required double price,
    required double discount,
    required double vatAmount,
    required UniqueId expenseItemsId,
    required UniqueId expenseId,
    required Vat vat,
  }) = _ExpenseItem;
}
