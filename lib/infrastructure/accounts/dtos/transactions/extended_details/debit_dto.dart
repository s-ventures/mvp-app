import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/extended_details/extended_details_dto.dart';

part 'debit_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class DebitDto extends ExtendedDetailsDto {
  DebitDto({
    required this.debitId,
  });

  factory DebitDto.fromJson(Map<String, dynamic> json) =>
      _$DebitDtoFromJson(json);

  final String debitId;

  @override
  Map<String, dynamic> toJson() => _$DebitDtoToJson(this);
}
