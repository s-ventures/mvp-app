// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tink_flow_link_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TinkFlowLinkDtoImpl _$$TinkFlowLinkDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TinkFlowLinkDtoImpl(
      connectionType: json['connectionType'] as String,
      redirectUri: json['redirectUri'] as String,
      clientId: json['clientId'] as String,
      market: json['market'] as String,
      locale: json['locale'] as String,
      authorizationCode: json['authorizationCode'] as String,
      fullLink: json['fullLink'] as String,
    );

Map<String, dynamic> _$$TinkFlowLinkDtoImplToJson(
        _$TinkFlowLinkDtoImpl instance) =>
    <String, dynamic>{
      'connectionType': instance.connectionType,
      'redirectUri': instance.redirectUri,
      'clientId': instance.clientId,
      'market': instance.market,
      'locale': instance.locale,
      'authorizationCode': instance.authorizationCode,
      'fullLink': instance.fullLink,
    };
