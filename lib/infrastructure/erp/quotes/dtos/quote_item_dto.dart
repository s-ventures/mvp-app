import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quote_item.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/unit_of_measure_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/vat_dto.dart';

part 'quote_item_dto.freezed.dart';
part 'quote_item_dto.g.dart';

@freezed
class QuoteItemDto with _$QuoteItemDto {
  const factory QuoteItemDto({
    required int relativeOrder,
    required String itemCode,
    required String description,
    required int quantity,
    required UnitOfMeasureDto unitOfMeasure,
    required double price,
    required double discount,
    required VatDto vat,
    required int quotationItemId,
    required int quotationId,
  }) = _QuoteItemDto;

  factory QuoteItemDto.fromJson(Map<String, dynamic> json) => _$QuoteItemDtoFromJson(json);
}

extension QuoteItemDtoX on QuoteItemDto {
  QuoteItem toDomain() {
    return QuoteItem(
      relativeOrder: relativeOrder,
      itemCode: itemCode,
      description: description,
      quantity: quantity,
      unitOfMeasure: unitOfMeasure.toDomain(),
      price: price,
      discount: discount,
      vat: vat.toDomain(),
      quotationItemId: UniqueId.fromUniqueString(quotationItemId.toString()),
      quotationId: UniqueId.fromUniqueString(quotationId.toString()),
    );
  }
}
