import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/unit_of_measure.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/vat.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'invoice_item.freezed.dart';

@freezed
class InvoiceItem with _$InvoiceItem {
  const factory InvoiceItem({
    required int relativeOrder,
    required String itemCode,
    required String description,
    required int quantity,
    required UnitOfMeasure unitOfMeasure,
    required double price,
    required double discount,
    required Vat vat,
    required UniqueId invoiceItemId,
    required UniqueId invoiceId,
  }) = _InvoiceItem;
}
