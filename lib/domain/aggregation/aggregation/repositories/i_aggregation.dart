import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/aggregation/aggregation/failures/register_credentials_failure.dart';

abstract class IAggregation {
  Future<Option<String>> get aggregationServiceUrl;
  Future<Either<RegisterCredentialsFailure, bool>> registerCredentials(
    String credentialsId,
  );
}
