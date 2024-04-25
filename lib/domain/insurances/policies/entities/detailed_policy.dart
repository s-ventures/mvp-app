import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/entities/policy_payment_periodicity.dart';

part 'detailed_policy.freezed.dart';

@freezed
class DetailedPolicy with _$DetailedPolicy {
  const factory DetailedPolicy({
    required UniqueId id,
    required UniqueId insuranceId,
    required String certificateNumber,
    required DateTime createDate,
    required DateTime? endDate,
    required String
        status, //TODO: Change to enum PolicyStatusType when BE is ready
    required String description,
    required double amount,
    required double lastInvoiceAmount,
    required PolicyPaymentPeriodicity paymentPeriodicity,
  }) = _DetailedPolicy;
}
