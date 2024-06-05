// [ DAILY, WEEKLY, MONTHLY ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/policy_payment_periodicity.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum PolicyPaymentPeriodicityDto {
  monthly,
  quarterly,
  annual,
}

extension PolicyPaymentPeriodicityDtoX on PolicyPaymentPeriodicityDto {
  PolicyPaymentPeriodicity toDomain() => switch (this) {
        PolicyPaymentPeriodicityDto.monthly => PolicyPaymentPeriodicity.monthly,
        PolicyPaymentPeriodicityDto.quarterly => PolicyPaymentPeriodicity.quarterly,
        PolicyPaymentPeriodicityDto.annual => PolicyPaymentPeriodicity.annual,
      };
}
