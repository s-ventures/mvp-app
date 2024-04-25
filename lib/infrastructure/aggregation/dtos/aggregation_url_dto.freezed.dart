// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aggregation_url_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AggregationUrlDto _$AggregationUrlDtoFromJson(Map<String, dynamic> json) {
  return _AggregationUrlDto.fromJson(json);
}

/// @nodoc
mixin _$AggregationUrlDto {
  String get fullLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AggregationUrlDtoCopyWith<AggregationUrlDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AggregationUrlDtoCopyWith<$Res> {
  factory $AggregationUrlDtoCopyWith(
          AggregationUrlDto value, $Res Function(AggregationUrlDto) then) =
      _$AggregationUrlDtoCopyWithImpl<$Res, AggregationUrlDto>;
  @useResult
  $Res call({String fullLink});
}

/// @nodoc
class _$AggregationUrlDtoCopyWithImpl<$Res, $Val extends AggregationUrlDto>
    implements $AggregationUrlDtoCopyWith<$Res> {
  _$AggregationUrlDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$AggregationUrlDtoImplCopyWith<$Res>
    implements $AggregationUrlDtoCopyWith<$Res> {
  factory _$$AggregationUrlDtoImplCopyWith(_$AggregationUrlDtoImpl value,
          $Res Function(_$AggregationUrlDtoImpl) then) =
      __$$AggregationUrlDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullLink});
}

/// @nodoc
class __$$AggregationUrlDtoImplCopyWithImpl<$Res>
    extends _$AggregationUrlDtoCopyWithImpl<$Res, _$AggregationUrlDtoImpl>
    implements _$$AggregationUrlDtoImplCopyWith<$Res> {
  __$$AggregationUrlDtoImplCopyWithImpl(_$AggregationUrlDtoImpl _value,
      $Res Function(_$AggregationUrlDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullLink = null,
  }) {
    return _then(_$AggregationUrlDtoImpl(
      fullLink: null == fullLink
          ? _value.fullLink
          : fullLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AggregationUrlDtoImpl implements _AggregationUrlDto {
  const _$AggregationUrlDtoImpl({required this.fullLink});

  factory _$AggregationUrlDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AggregationUrlDtoImplFromJson(json);

  @override
  final String fullLink;

  @override
  String toString() {
    return 'AggregationUrlDto(fullLink: $fullLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AggregationUrlDtoImpl &&
            (identical(other.fullLink, fullLink) ||
                other.fullLink == fullLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AggregationUrlDtoImplCopyWith<_$AggregationUrlDtoImpl> get copyWith =>
      __$$AggregationUrlDtoImplCopyWithImpl<_$AggregationUrlDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AggregationUrlDtoImplToJson(
      this,
    );
  }
}

abstract class _AggregationUrlDto implements AggregationUrlDto {
  const factory _AggregationUrlDto({required final String fullLink}) =
      _$AggregationUrlDtoImpl;

  factory _AggregationUrlDto.fromJson(Map<String, dynamic> json) =
      _$AggregationUrlDtoImpl.fromJson;

  @override
  String get fullLink;
  @override
  @JsonKey(ignore: true)
  _$$AggregationUrlDtoImplCopyWith<_$AggregationUrlDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
