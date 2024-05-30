import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'detailed_invoice_items_vat.freezed.dart';

@freezed
class DetailedInvoiceItemVat with _$DetailedInvoiceItemVat {
  const factory DetailedInvoiceItemVat({
    required UniqueId vatId,
    required int percentage,
    required String description,
    required DateTime initialDate,
    required DateTime endDate,
  }) = _DetailedInvoiceItemVat;
}
