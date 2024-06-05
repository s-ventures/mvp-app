import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_item.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/unit_of_measure_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/vat_dto.dart';

part 'expense_item_dto.freezed.dart';
part 'expense_item_dto.g.dart';

@freezed
class ExpenseItemDto with _$ExpenseItemDto {
  const factory ExpenseItemDto({
    required int relativeOrder,
    required String itemCode,
    required String description,
    required int quantity,
    required UnitOfMeasureDto unitOfMeasure,
    required double price,
    required double discount,
    required double vatAmount,
    required int expenseItemsId,
    required int expenseId,
    required VatDto vat,
  }) = _ExpenseItemDto;

  factory ExpenseItemDto.fromJson(Map<String, dynamic> json) => _$ExpenseItemDtoFromJson(json);
}

extension ExpenseItemDtoX on ExpenseItemDto {
  ExpenseItem toDomain() {
    return ExpenseItem(
      relativeOrder: relativeOrder,
      itemCode: itemCode,
      description: description,
      quantity: quantity,
      unitOfMeasure: unitOfMeasure.toDomain(),
      price: price,
      discount: discount,
      vatAmount: vatAmount,
      expenseItemsId: UniqueId.fromUniqueString(expenseItemsId.toString()),
      expenseId: UniqueId.fromUniqueString(expenseId.toString()),
      vat: vat.toDomain(),
    );
  }
}
