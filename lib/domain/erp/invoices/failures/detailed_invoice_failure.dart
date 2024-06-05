import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_invoice_failure.freezed.dart';

@freezed
class DetailedInvoiceFailure with _$DetailedInvoiceFailure {
  const factory DetailedInvoiceFailure.unexpected() = _Unexpected;
}
