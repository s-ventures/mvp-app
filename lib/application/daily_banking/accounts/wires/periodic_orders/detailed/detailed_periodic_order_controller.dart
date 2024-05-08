import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/periodic_orders/detailed/detailed_periodic_order_state.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/repositories/periodic_orders_repository.dart';

final detailedPeriodicOrderControllerProvider = StateNotifierProvider
    .autoDispose<DetailedPeriodicOrderController, DetailedPeriodicOrderState>(
  (ref) => DetailedPeriodicOrderController(
    ref.watch(periodicOrdersRepositoryProvider),
  ),
);

class DetailedPeriodicOrderController
    extends StateNotifier<DetailedPeriodicOrderState> {
  DetailedPeriodicOrderController(this._repository)
      : super(const DetailedPeriodicOrderState());

  final PeriodicOrdersRepository _repository;

  Future<void> init({required int periodicOrderId}) async {
    try {
      final periodicOrderOrFailure = await _repository.getDetailedPeriodicOrder(
        periodicOrderId: periodicOrderId,
      );

      setStateSafe(
        () => periodicOrderOrFailure.fold(
          (l) =>
              state.copyWith(periodicOrder: AsyncError(l, StackTrace.current)),
          (r) => state.copyWith(periodicOrder: AsyncData(r)),
        ),
      );
    } catch (e) {
      state = state.copyWith(periodicOrder: AsyncError(e, StackTrace.current));
    }
  }
}
