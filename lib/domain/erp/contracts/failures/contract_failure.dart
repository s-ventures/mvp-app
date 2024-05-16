import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_failure.freezed.dart';

@freezed
class ContractFailure with _$ContractFailure {
  const factory ContractFailure.unexpected() = _Unexpected;
}
