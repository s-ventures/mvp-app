import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_contract_failure.freezed.dart';

@freezed
class CustomerContractFailure with _$CustomerContractFailure {
  const factory CustomerContractFailure.unexpected() = _Unexpected;
}
