import 'package:fpdart/fpdart.dart';

abstract class IBankingAggregation {
  Future<Option<String>> get aggregationServiceUrl;
}
