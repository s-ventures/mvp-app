import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_items_unit_of_measure.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_items_vat.dart';

part 'detailed_invoice_items.freezed.dart';

@freezed
class DetailedInvoiceItem with _$DetailedInvoiceItem {
  const factory DetailedInvoiceItem({
    required int relativeOrder,
    required String itemCode,
    required String description,
    required int quantity,
    required DetailedInvoiceItemUnitOfMeasure unitOfMeasure,
    required double price,
    required double discount,
    required DetailedInvoiceItemVat vat,
    required UniqueId invoiceItemId,
    required UniqueId invoiceId,
  }) = _DetailedInvoiceItem;
}
