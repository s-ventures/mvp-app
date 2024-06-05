import 'package:freezed_annotation/freezed_annotation.dart';

part 'quotation_failure.freezed.dart';

@freezed
class QuotationFailure with _$QuotationFailure {
  const factory QuotationFailure.unexpected() = _Unexpected;
}
