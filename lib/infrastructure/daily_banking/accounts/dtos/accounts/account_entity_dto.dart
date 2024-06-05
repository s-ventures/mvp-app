import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/account_entity.dart';

part 'account_entity_dto.freezed.dart';
part 'account_entity_dto.g.dart';

@freezed
class AccountEntityDto with _$AccountEntityDto {
  const factory AccountEntityDto({
    required String entity,
    required String icon,
  }) = _AccountEntityDto;

  factory AccountEntityDto.fromJson(Map<String, dynamic> json) => _$AccountEntityDtoFromJson(json);
}

extension AccountEntityDtoX on AccountEntityDto {
  AccountEntity toDomain() => AccountEntity(
        name: entity,
        icon: icon,
      );
}
