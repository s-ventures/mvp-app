// {
//   "connectionType": "string",
//   "redirectUri": "string",
//   "clientId": "string",
//   "market": "string",
//   "locale": "string",
//   "authorizationCode": "string",
//   "fullLink": "string"
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tink_flow_link_dto.freezed.dart';
part 'tink_flow_link_dto.g.dart';

@freezed
class TinkFlowLinkDto with _$TinkFlowLinkDto {
  const factory TinkFlowLinkDto({
    required String connectionType,
    required String redirectUri,
    required String clientId,
    required String market,
    required String locale,
    required String authorizationCode,
    required String fullLink,
  }) = _TinkFlowLinkDto;

  factory TinkFlowLinkDto.fromJson(Map<String, dynamic> json) => _$TinkFlowLinkDtoFromJson(json);
}
