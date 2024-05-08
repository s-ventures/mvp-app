import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_details_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';

part 'debit_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class DebitDto extends ExtendedDetailsDto {
  DebitDto({
    required this.debitId,
    required this.accountId,
    required this.amount,
    required this.currencyCode,
    required this.issuer,
    required this.identification,
    required this.dueDate,
    required this.suffix,
    required this.sort,
    required this.issuerName,
    required this.nrc,
    required this.bankReference,
    required this.paymentDate,
    required this.movementNumber,
    required this.fileId,
  });

  factory DebitDto.fromJson(Map<String, dynamic> json) =>
      _$DebitDtoFromJson(json);

  final int debitId;
  final int accountId;
  final double amount;
  final String? currencyCode;
  final String? issuer;
  final String? identification;
  @DateConverter()
  final DateTime? dueDate;
  final String? suffix;
  final String? sort;
  final String issuerName;
  final String? nrc;
  final String? bankReference;
  @DateConverter()
  final DateTime? paymentDate;
  final String movementNumber;
  final String? fileId;

  @override
  Map<String, dynamic> toJson() => _$DebitDtoToJson(this);
}
