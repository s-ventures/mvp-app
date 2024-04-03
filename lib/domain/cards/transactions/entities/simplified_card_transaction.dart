import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'simplified_card_transaction.freezed.dart';

@freezed
class SimplifiedCardTransaction with _$SimplifiedCardTransaction {
  const factory SimplifiedCardTransaction({
    required UniqueId id,
    required String concept,
    required DateTime date,
    required double amount,
  }) = _SimplifiedCardTransaction;
}
