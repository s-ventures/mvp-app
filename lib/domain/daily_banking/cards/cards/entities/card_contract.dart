import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'card_contract.freezed.dart';

@freezed
class CardContract with _$CardContract {
  const factory CardContract({
    required UniqueId id,
    required UniqueId accountId,
    required DateTime createDate,
    required DateTime? endDate,
  }) = _CardContract;
}
