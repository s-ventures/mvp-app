import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_status.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_pagination_filter.dart';

part 'invoice_filter.freezed.dart';

@freezed
class InvoiceFilter with _$InvoiceFilter implements IPaginationFilter {
  @Implements<IPaginationFilter>()
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
    InvoiceStatus? status,
  }) = _InvoiceFilter;
}
