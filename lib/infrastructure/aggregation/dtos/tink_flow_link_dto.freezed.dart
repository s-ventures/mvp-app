// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tink_flow_link_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TinkFlowLinkDto _$TinkFlowLinkDtoFromJson(Map<String, dynamic> json) {
  return _TinkFlowLinkDto.fromJson(json);
}

/// @nodoc
mixin _$TinkFlowLinkDto {
  String get connectionType => throw _privateConstructorUsedError;
  String get redirectUri => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get market => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  String get authorizationCode => throw _privateConstructorUsedError;
  String get fullLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TinkFlowLinkDtoCopyWith<TinkFlowLinkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TinkFlowLinkDtoCopyWith<$Res> {
  factory $TinkFlowLinkDtoCopyWith(
          TinkFlowLinkDto value, $Res Function(TinkFlowLinkDto) then) =
      _$TinkFlowLinkDtoCopyWithImpl<$Res, TinkFlowLinkDto>;
  @useResult
  $Res call(
      {String connectionType,
      String redirectUri,
      String clientId,
      String market,
      String locale,
      String authorizationCode,
      String fullLink});
}

/// @nodoc
class _$TinkFlowLinkDtoCopyWithImpl<$Res, $Val extends TinkFlowLinkDto>
    implements $TinkFlowLinkDtoCopyWith<$Res> {
  _$TinkFlowLinkDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionType = null,
    Object? redirectUri = null,
    Object? clientId = null,
    Object? market = null,
    Object? locale = null,
    Object? authorizationCode = null,
    Object? fullLink = null,
  }) {
    return _then(_value.copyWith(
      connectionType: null == connectionType
          ? _value.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      market: null == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationCode: null == authorizationCode
          ? _value.authorizationCode
          : authorizationCode // ignore: cast_nullable_to_non_nullable
              as String,
      fullLink: null == fullLink
          ? _value.fullLink
          : fullLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TinkFlowLinkDtoImplCopyWith<$Res>
    implements $TinkFlowLinkDtoCopyWith<$Res> {
  factory _$$TinkFlowLinkDtoImplCopyWith(_$TinkFlowLinkDtoImpl value,
          $Res Function(_$TinkFlowLinkDtoImpl) then) =
      __$$TinkFlowLinkDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String connectionType,
      String redirectUri,
      String clientId,
      String market,
      String locale,
      String authorizationCode,
      String fullLink});
}

/// @nodoc
class __$$TinkFlowLinkDtoImplCopyWithImpl<$Res>
    extends _$TinkFlowLinkDtoCopyWithImpl<$Res, _$TinkFlowLinkDtoImpl>
    implements _$$TinkFlowLinkDtoImplCopyWith<$Res> {
  __$$TinkFlowLinkDtoImplCopyWithImpl(
      _$TinkFlowLinkDtoImpl _value, $Res Function(_$TinkFlowLinkDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionType = null,
    Object? redirectUri = null,
    Object? clientId = null,
    Object? market = null,
    Object? locale = null,
    Object? authorizationCode = null,
    Object? fullLink = null,
  }) {
    return _then(_$TinkFlowLinkDtoImpl(
      connectionType: null == connectionType
          ? _value.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      market: null == market
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationCode: null == authorizationCode
          ? _value.authorizationCode
          : authorizationCode // ignore: cast_nullable_to_non_nullable
              as String,
      fullLink: null == fullLink
          ? _value.fullLink
          : fullLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TinkFlowLinkDtoImpl implements _TinkFlowLinkDto {
  const _$TinkFlowLinkDtoImpl(
      {required this.connectionType,
      required this.redirectUri,
      required this.clientId,
      required this.market,
      required this.locale,
      required this.authorizationCode,
      required this.fullLink});

  factory _$TinkFlowLinkDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TinkFlowLinkDtoImplFromJson(json);

  @override
  final String connectionType;
  @override
  final String redirectUri;
  @override
  final String clientId;
  @override
  final String market;
  @override
  final String locale;
  @override
  final String authorizationCode;
  @override
  final String fullLink;

  @override
  String toString() {
    return 'TinkFlowLinkDto(connectionType: $connectionType, redirectUri: $redirectUri, clientId: $clientId, market: $market, locale: $locale, authorizationCode: $authorizationCode, fullLink: $fullLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TinkFlowLinkDtoImpl &&
            (identical(other.connectionType, connectionType) ||
                other.connectionType == connectionType) &&
            (identical(other.redirectUri, redirectUri) ||
                other.redirectUri == redirectUri) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.market, market) || other.market == market) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.authorizationCode, authorizationCode) ||
                other.authorizationCode == authorizationCode) &&
            (identical(other.fullLink, fullLink) ||
                other.fullLink == fullLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, connectionType, redirectUri,
      clientId, market, locale, authorizationCode, fullLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TinkFlowLinkDtoImplCopyWith<_$TinkFlowLinkDtoImpl> get copyWith =>
      __$$TinkFlowLinkDtoImplCopyWithImpl<_$TinkFlowLinkDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TinkFlowLinkDtoImplToJson(
      this,
    );
  }
}

abstract class _TinkFlowLinkDto implements TinkFlowLinkDto {
  const factory _TinkFlowLinkDto(
      {required final String connectionType,
      required final String redirectUri,
      required final String clientId,
      required final String market,
      required final String locale,
      required final String authorizationCode,
      required final String fullLink}) = _$TinkFlowLinkDtoImpl;

  factory _TinkFlowLinkDto.fromJson(Map<String, dynamic> json) =
      _$TinkFlowLinkDtoImpl.fromJson;

  @override
  String get connectionType;
  @override
  String get redirectUri;
  @override
  String get clientId;
  @override
  String get market;
  @override
  String get locale;
  @override
  String get authorizationCode;
  @override
  String get fullLink;
  @override
  @JsonKey(ignore: true)
  _$$TinkFlowLinkDtoImplCopyWith<_$TinkFlowLinkDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
