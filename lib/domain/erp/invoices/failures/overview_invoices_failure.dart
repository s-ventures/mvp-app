import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_invoices_failure.freezed.dart';

@freezed
class OverviewInvoicesFailure with _$OverviewInvoicesFailure {
  const factory OverviewInvoicesFailure.unexpected() = _Unexpected;
}
