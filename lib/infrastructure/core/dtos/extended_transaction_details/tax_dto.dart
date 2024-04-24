import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_transaction_details/extended_details_dto.dart';

part 'tax_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class TaxDto extends ExtendedDetailsDto {
  TaxDto({
    required this.taxId,
  });

  factory TaxDto.fromJson(Map<String, dynamic> json) => _$TaxDtoFromJson(json);

  final String taxId;

  @override
  Map<String, dynamic> toJson() => _$TaxDtoToJson(this);
}
