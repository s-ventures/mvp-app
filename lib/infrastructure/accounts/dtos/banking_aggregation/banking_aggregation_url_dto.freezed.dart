// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banking_aggregation_url_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankingAggregationUrlDto _$BankingAggregationUrlDtoFromJson(
    Map<String, dynamic> json) {
  return _BankingAggregationUrlDto.fromJson(json);
}

/// @nodoc
mixin _$BankingAggregationUrlDto {
  String get fullLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankingAggregationUrlDtoCopyWith<BankingAggregationUrlDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankingAggregationUrlDtoCopyWith<$Res> {
  factory $BankingAggregationUrlDtoCopyWith(BankingAggregationUrlDto value,
          $Res Function(BankingAggregationUrlDto) then) =
      _$BankingAggregationUrlDtoCopyWithImpl<$Res, BankingAggregationUrlDto>;
  @useResult
  $Res call({String fullLink});
}

/// @nodoc
class _$BankingAggregationUrlDtoCopyWithImpl<$Res,
        $Val extends BankingAggregationUrlDto>
    implements $BankingAggregationUrlDtoCopyWith<$Res> {
  _$BankingAggregationUrlDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullLink = null,
  }) {
    return _then(_value.copyWith(
      fullLink: null == fullLink
          ? _value.fullLink
          : fullLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankingAggregationUrlDtoImplCopyWith<$Res>
    implements $BankingAggregationUrlDtoCopyWith<$Res> {
  factory _$$BankingAggregationUrlDtoImplCopyWith(
          _$BankingAggregationUrlDtoImpl value,
          $Res Function(_$BankingAggregationUrlDtoImpl) then) =
      __$$BankingAggregationUrlDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullLink});
}

/// @nodoc
class __$$BankingAggregationUrlDtoImplCopyWithImpl<$Res>
    extends _$BankingAggregationUrlDtoCopyWithImpl<$Res,
        _$BankingAggregationUrlDtoImpl>
    implements _$$BankingAggregationUrlDtoImplCopyWith<$Res> {
  __$$BankingAggregationUrlDtoImplCopyWithImpl(
      _$BankingAggregationUrlDtoImpl _value,
      $Res Function(_$BankingAggregationUrlDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullLink = null,
  }) {
    return _then(_$BankingAggregationUrlDtoImpl(
      fullLink: null == fullLink
          ? _value.fullLink
          : fullLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankingAggregationUrlDtoImpl implements _BankingAggregationUrlDto {
  const _$BankingAggregationUrlDtoImpl({required this.fullLink});

  factory _$BankingAggregationUrlDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankingAggregationUrlDtoImplFromJson(json);

  @override
  final String fullLink;

  @override
  String toString() {
    return 'BankingAggregationUrlDto(fullLink: $fullLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankingAggregationUrlDtoImpl &&
            (identical(other.fullLink, fullLink) ||
                other.fullLink == fullLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankingAggregationUrlDtoImplCopyWith<_$BankingAggregationUrlDtoImpl>
      get copyWith => __$$BankingAggregationUrlDtoImplCopyWithImpl<
          _$BankingAggregationUrlDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankingAggregationUrlDtoImplToJson(
      this,
    );
  }
}

abstract class _BankingAggregationUrlDto implements BankingAggregationUrlDto {
  const factory _BankingAggregationUrlDto({required final String fullLink}) =
      _$BankingAggregationUrlDtoImpl;

  factory _BankingAggregationUrlDto.fromJson(Map<String, dynamic> json) =
      _$BankingAggregationUrlDtoImpl.fromJson;

  @override
  String get fullLink;
  @override
  @JsonKey(ignore: true)
  _$$BankingAggregationUrlDtoImplCopyWith<_$BankingAggregationUrlDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
