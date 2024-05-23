import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_order_status_type.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/pagination_filter.dart';

part 'periodic_orders_filter.freezed.dart';

@freezed
class PeriodicOrdersFilter with _$PeriodicOrdersFilter implements PaginationFilter {
  @Implements<PaginationFilter>()
  const factory PeriodicOrdersFilter({
    UniqueId? id,
    List<int>? accountIds,
    String? beneficiaryAccount,
    String? beneficiaryName,
    String? beneficiaryAddress,
    String? beneficiaryCountryCode2char,
    double? amountFrom,
    double? amountTo,
    String? currencyCode,
    DateTime? startDateFrom,
    DateTime? startDateTo,
    DateTime? endDateFrom,
    DateTime? endDateTo,
    PeriodicOrderFrecuencyType? frecuency,
    PeriodicOrderStatusType? status,
  }) = _PeriodicOrdersFilter;
}
