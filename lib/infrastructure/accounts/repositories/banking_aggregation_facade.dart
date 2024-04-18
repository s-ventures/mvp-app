import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/accounts/banking_aggregation/repositories/i_banking_aggregation.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/data_sources/remote/banking_aggregation_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/accounts/banking_aggregation_rest_client.dart';

final bankingAggregationFacadeProvider = Provider<BankingAggregationFacade>(
  (ref) => BankingAggregationFacade(
    remoteDataSource: BankingAggregationRemoteDataSource(
      ref.watch(bankingAggregationRestClientProvider),
    ),
  ),
);

class BankingAggregationFacade implements IBankingAggregation {
  BankingAggregationFacade({
    required BankingAggregationRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final BankingAggregationRemoteDataSource _remoteDataSource;

  @override
  Future<Option<String>> get aggregationServiceUrl async {
    try {
      final response = await _remoteDataSource.getAggregationServiceUrl();
      return some(response);
    } catch (_) {
      return none();
    }
  }
}
