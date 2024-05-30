import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_status.dart';

part 'invoice_filter.freezed.dart';

@freezed
class InvoiceFilter with _$InvoiceFilter {
  const factory InvoiceFilter({
    UniqueId? id,
    UniqueId? stakeholderId,
    DateTime? createdDateFrom,
    DateTime? createdDateTo,
    DateTime? issueDateFrom,
    DateTime? issueDateTo,
    double? totalAmountFrom,
    double? totalAmountTo,
    String? query,
    QuotationStatus? status,
  }) = _InvoiceFilter;
}
