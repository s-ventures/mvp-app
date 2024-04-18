import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/banking_aggregation/banking_aggregation_state.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/repositories/banking_aggregation_facade.dart';

final bankingAggregationControllerProvider = StateNotifierProvider<
    BankingAggregationController, BankingAggregationState>(
  (ref) =>
      BankingAggregationController(ref.watch(bankingAggregationFacadeProvider)),
);

class BankingAggregationController
    extends StateNotifier<BankingAggregationState> {
  BankingAggregationController(this._facade)
      : super(const BankingAggregationState());

  final BankingAggregationFacade _facade;

  Future<void> getAggregationServiceUrl() async {
    final urlOption = await _facade.aggregationServiceUrl;
    state = state.copyWith(
      aggregationServiceUrl: urlOption.fold(
        () => const AsyncLoading<String>(),
        AsyncData.new,
      ),
    );
  }
}
