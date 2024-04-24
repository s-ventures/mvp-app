import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_transaction_details/extended_details_dto.dart';

part 'transfer_out_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class TransferOutDto extends ExtendedDetailsDto {
  TransferOutDto({
    required this.senderReference,
  });

  factory TransferOutDto.fromJson(Map<String, dynamic> json) =>
      _$TransferOutDtoFromJson(json);

  final String senderReference;

  @override
  Map<String, dynamic> toJson() => _$TransferOutDtoToJson(this);
}
