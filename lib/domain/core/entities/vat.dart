import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'vat.freezed.dart';

@freezed
class Vat with _$Vat {
  const factory Vat({
    required UniqueId vatId,
    required int percentage,
    required String description,
    required DateTime initialDate,
    required DateTime endDate,
  }) = _Vat;
}
