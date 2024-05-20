import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_details_dto.dart';

part 'direct_debit_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class DirectDebitDto extends ExtendedDetailsDto {
  DirectDebitDto({
    required this.directDebitId,
    required this.returned,
    required this.debitKey,
    required this.issuer,
    required this.debitReference,
    required this.returnDate,
    required this.movementNumber,
    required this.movementId,
    required this.fileId,
    required this.accountId,
  });

  factory DirectDebitDto.fromJson(Map<String, dynamic> json) => _$DirectDebitDtoFromJson(json);

  final int directDebitId;
  final bool? returned;
  final String debitKey;
  final String? issuer;
  final String? debitReference;
  final DateTime? returnDate;
  final String? movementNumber;
  final int movementId;
  final int? fileId;
  final int accountId;

  @override
  Map<String, dynamic> toJson() => _$DirectDebitDtoToJson(this);
}
