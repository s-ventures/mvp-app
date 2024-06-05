import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_failure.freezed.dart';

@freezed
class InvoiceFailure with _$InvoiceFailure {
  const factory InvoiceFailure.unexpected() = _Unexpected;
}
