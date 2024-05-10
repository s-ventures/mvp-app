import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/policies/dtos/policy_payment_periodicity_dto.dart';

enum PolicyPaymentPeriodicity {
  monthly('Mensual'),
  quarterly('Trimestral'),
  annual('Anual');

  const PolicyPaymentPeriodicity(this.name);

  final String name;
}

extension PolicyPaymentPeriodicityX on PolicyPaymentPeriodicity {
  PolicyPaymentPeriodicityDto toDto() => switch (this) {
        PolicyPaymentPeriodicity.monthly => PolicyPaymentPeriodicityDto.monthly,
        PolicyPaymentPeriodicity.quarterly =>
          PolicyPaymentPeriodicityDto.quarterly,
        PolicyPaymentPeriodicity.annual => PolicyPaymentPeriodicityDto.annual,
      };
}
