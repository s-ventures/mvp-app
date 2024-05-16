import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/contracts/entities/contract.dart';

part 'customer_contract.freezed.dart';

@freezed
class CustomerContract with _$CustomerContract {
  const factory CustomerContract({
    required String alias,
    required Contract contract,
  }) = _CustomerContract;
}
