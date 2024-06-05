import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_item.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/unit_of_measure_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/vat_dto.dart';

part 'invoice_item_dto.freezed.dart';
part 'invoice_item_dto.g.dart';

@freezed
class InvoiceItemDto with _$InvoiceItemDto {
  const factory InvoiceItemDto({
    required int relativeOrder,
    required String itemCode,
    required String description,
    required int quantity,
    required UnitOfMeasureDto unitOfMeasure,
    required double price,
    required double discount,
    required VatDto vat,
    required int invoiceItemId,
    required int invoiceId,
  }) = _InvoiceItemDto;

  factory InvoiceItemDto.fromJson(Map<String, dynamic> json) => _$InvoiceItemDtoFromJson(json);
}

extension InvoiceItemDtoX on InvoiceItemDto {
  InvoiceItem toDomain() {
    return InvoiceItem(
      relativeOrder: relativeOrder,
      itemCode: itemCode,
      description: description,
      quantity: quantity,
      unitOfMeasure: unitOfMeasure.toDomain(),
      price: price,
      discount: discount,
      vat: vat.toDomain(),
      invoiceItemId: UniqueId.fromUniqueString(invoiceItemId.toString()),
      invoiceId: UniqueId.fromUniqueString(invoiceId.toString()),
    );
  }
}
