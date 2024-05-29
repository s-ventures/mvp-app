import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_item.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_unit_of_measure_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_vat_dto.dart';

part 'expenses_item_dto.freezed.dart';
part 'expenses_item_dto.g.dart';

@freezed
class ExpensesItemDto with _$ExpensesItemDto {
  const factory ExpensesItemDto({
    required int relativeOrder,
    required String itemCode,
    required String description,
    required int quantity,
    required ExpensesUnitOfMeasureDto unitOfMeasure,
    required double price,
    required double discount,
    required VatDto vat,
    required int vatAmount,
    required int expenseItemsId,
    required int expenseId,
  }) = _ExpensesItemDto;

  factory ExpensesItemDto.fromJson(Map<String, dynamic> json) => _$ExpensesItemDtoFromJson(json);
}

extension ExpensesItemDtoX on ExpensesItemDto {
  ExpensesItem toDomain() {
    return ExpensesItem(
      relativeOrder: relativeOrder,
      itemCode: itemCode,
      description: description,
      quantity: quantity,
      unitOfMeasure: unitOfMeasure.toDomain(),
      price: price,
      discount: discount,
      vat: vat.toDomain(),
      vatAmount: vatAmount,
      expenseItemsId: UniqueId.fromUniqueString(expenseItemsId.toString()),
      expenseId: UniqueId.fromUniqueString(expenseId.toString()),
    );
  }
}
