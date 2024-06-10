import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/aggregation/aggregation_state.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/aggregation/aggregation/repositories/i_aggregation.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/aggregation/repositories/aggregation_facade.dart';

final aggregationControllerProvider =
    StateNotifierProvider<AggregationController, AggregationState>(
  (ref) => AggregationController(ref.watch(aggregationFacadeProvider)),
);

class AggregationController extends StateNotifier<AggregationState> {
  AggregationController(this._facade) : super(const AggregationState());

  final IAggregation _facade;

  Future<void> getAggregationServiceUrl() async {
    final urlOption = await _facade.aggregationServiceUrl;
    state = state.copyWith(
      aggregationServiceUrl: urlOption.fold(
        () => const AsyncLoading<String>(),
        AsyncData.new,
      ),
    );
  }

  bool tryParseCredentialsId(String url) {
    final uri = Uri.parse(url);
    final credentialsId = uri.queryParameters['credentialsId'] ?? '';
    if (credentialsId.isNotEmpty) {
      _facade.registerCredentials(credentialsId);
      return true;
    } else {
      return false;
    }
  }
}
