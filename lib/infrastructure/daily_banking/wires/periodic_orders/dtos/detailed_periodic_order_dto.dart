import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/detailed_periodic_order.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/dtos/periodic_order_frecuency_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/dtos/periodic_order_status_type_dto.dart';

part 'detailed_periodic_order_dto.freezed.dart';
part 'detailed_periodic_order_dto.g.dart';

@freezed
class DetailedPeriodicOrderDto with _$DetailedPeriodicOrderDto {
  const factory DetailedPeriodicOrderDto({
    required int periodicTransferId,
    required int accountId,
    required int customerId,
    required String beneficiaryAccount,
    required String beneficiaryName,
    required String? beneficiaryAddress,
    required String beneficiaryCountryCode2char,
    required double amount,
    required String currencyCode,
    required DateTime startDate,
    required DateTime? endDate,
    required PeriodicOrderFrecuencyTypeDto frecuency,
    required PeriodicOrderStatusTypeDto status,
    required String baasTransferId,
    required String? concept,
  }) = _DetailedPeriodicOrderDto;

  factory DetailedPeriodicOrderDto.fromJson(Map<String, dynamic> json) =>
      _$DetailedPeriodicOrderDtoFromJson(json);
}

extension DetailedPeriodicOrderDtoX on DetailedPeriodicOrderDto {
  DetailedPeriodicOrder toDomain() {
    return DetailedPeriodicOrder(
      id: UniqueId.fromUniqueString(periodicTransferId.toString()),
      accountId: UniqueId.fromUniqueString(accountId.toString()),
      customerId: UniqueId.fromUniqueString(customerId.toString()),
      beneficiaryAccount: beneficiaryAccount,
      beneficiaryName: beneficiaryName,
      beneficiaryAddress: beneficiaryAddress ?? '',
      beneficiaryCountryCode2char: beneficiaryCountryCode2char,
      amount: amount,
      currencyCode: currencyCode,
      startDate: startDate,
      endDate: endDate,
      frecuency: frecuency.toDomain(),
      status: status.toDomain(),
      baasTransferId: baasTransferId,
      concept: concept ?? '',
    );
  }
}
