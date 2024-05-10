import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/simplified_periodic_order.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/dtos/periodic_order_frecuency_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/dtos/periodic_order_status_type_dto.dart';

part 'simplified_periodic_order_dto.freezed.dart';
part 'simplified_periodic_order_dto.g.dart';

@freezed
class SimplifiedPeriodicOrderDto with _$SimplifiedPeriodicOrderDto {
  const factory SimplifiedPeriodicOrderDto({
    required int periodicTransferId,
    required int accountId,
    required int customerId,
    required String beneficiaryAccount,
    required String beneficiaryName,
    required double amount,
    required String currencyCode,
    required PeriodicOrderStatusTypeDto? status,
    required String? concept,
    required PeriodicOrderFrecuencyTypeDto? frecuency,
    required DateTime? startDate,
  }) = _SimplifiedPeriodicOrderDto;

  factory SimplifiedPeriodicOrderDto.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedPeriodicOrderDtoFromJson(json);
}

extension SimplifiedPeriodicOrderDtoX on SimplifiedPeriodicOrderDto {
  SimplifiedPeriodicOrder toDomain() {
    return SimplifiedPeriodicOrder(
      id: UniqueId.fromUniqueString(periodicTransferId.toString()),
      accountId: UniqueId.fromUniqueString(accountId.toString()),
      customerId: UniqueId.fromUniqueString(customerId.toString()),
      beneficiaryAccount: beneficiaryAccount,
      beneficiaryName: beneficiaryName,
      amount: amount,
      currencyCode: currencyCode,
      status: status?.toDomain(),
      concept: concept ?? '',
      frecuency: frecuency?.toDomain(),
      startDate: startDate,
    );
  }
}
