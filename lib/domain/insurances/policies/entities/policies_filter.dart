import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/entities/policy_payment_periodicity.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/entities/policy_status_type.dart';

part 'policies_filter.freezed.dart';

@freezed
class PoliciesFilter with _$PoliciesFilter {
  const factory PoliciesFilter({
    List<int>? insuranceIds,
    String? policy,
    PolicyStatusType? status,
    String? certificateNumber,
    DateTime? createDateFrom,
    DateTime? createDateTo,
    String? description,
    double? amountFrom,
    double? amountTo,
    double? lastInvoiceAmountFrom,
    double? lastInvoiceAmountTo,
    PolicyPaymentPeriodicity? paymentPeriodicity,
    String? iaasBranch,
  }) = _PoliciesFilter;
}
