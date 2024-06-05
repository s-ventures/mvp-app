import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_quote_failure.freezed.dart';

@freezed
class DetailedQuoteFailure with _$DetailedQuoteFailure {
  const factory DetailedQuoteFailure.unexpected() = _Unexpected;
}
