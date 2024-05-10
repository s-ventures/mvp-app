import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'contract.freezed.dart';

@freezed
class Contract with _$Contract {
  const factory Contract({
    required UniqueId id,
    required DateTime startDate,
    required DateTime endDate,
  }) = _Contract;
}
