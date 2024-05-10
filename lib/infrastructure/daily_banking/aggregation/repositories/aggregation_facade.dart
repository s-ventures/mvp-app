import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/aggregation/aggregation/failures/register_credentials_failure.dart';
import 'package:manifiesto_mvp_app/domain/aggregation/aggregation/repositories/i_aggregation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/aggregation/aggregation_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/aggregation/data_sources/remote/aggregation_remote_data_source.dart';

final aggregationFacadeProvider = Provider<AggregationFacade>(
  (ref) => AggregationFacade(
    remoteDataSource: AggregationRemoteDataSource(
      ref.watch(aggregationRestClientProvider),
    ),
  ),
);

class AggregationFacade implements IAggregation {
  AggregationFacade({
    required AggregationRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final AggregationRemoteDataSource _remoteDataSource;

  @override
  Future<Option<String>> get aggregationServiceUrl async {
    try {
      final response = await _remoteDataSource.getAggregationServiceUrl();
      return some(response);
    } catch (_) {
      return none();
    }
  }

  @override
  Future<Either<RegisterCredentialsFailure, bool>> registerCredentials(
    String credentialsId,
  ) async {
    try {
      final response =
          await _remoteDataSource.registerCredentials(credentialsId);
      return right(response);
    } catch (_) {
      return left(const RegisterCredentialsFailure.unexpected());
    }
  }
}