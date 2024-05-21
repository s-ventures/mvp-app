import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_contract.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';

part 'card_contract_dto.freezed.dart';
part 'card_contract_dto.g.dart';

@freezed
abstract class CardContractDto with _$CardContractDto {
  const factory CardContractDto({
    required int cardContractId,
    required int accountId,
    @DateConverter() required DateTime createDate,
    @DateConverter() required DateTime? endDate,
    required String currencyCode,
  }) = _CardContractDto;

  factory CardContractDto.fromJson(Map<String, dynamic> json) => _$CardContractDtoFromJson(json);
}

extension CardContractDtoX on CardContractDto {
  CardContract toDomain() {
    return CardContract(
      id: UniqueId.fromUniqueString(cardContractId.toString()),
      accountId: UniqueId.fromUniqueString(accountId.toString()),
      createDate: createDate,
      endDate: endDate,
    );
  }
}
