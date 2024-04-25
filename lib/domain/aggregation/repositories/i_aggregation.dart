import 'package:fpdart/fpdart.dart';

abstract class IAggregation {
  Future<Option<String>> get aggregationServiceUrl;
}
