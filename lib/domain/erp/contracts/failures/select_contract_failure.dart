import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_contract_failure.freezed.dart';

@freezed
class SelectContractFailure with _$SelectContractFailure {
  const factory SelectContractFailure.unexpected() = _Unexpected;
}
