import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/extended_details/extended_details_dto.dart';

part 'direct_debit_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class DirectDebitDto extends ExtendedDetailsDto {
  DirectDebitDto({
    required this.debitId,
  });

  factory DirectDebitDto.fromJson(Map<String, dynamic> json) =>
      _$DirectDebitDtoFromJson(json);

  final String debitId;

  @override
  Map<String, dynamic> toJson() => _$DirectDebitDtoToJson(this);
}
