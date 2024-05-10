// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_process_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationProcessStatusDto _$RegistrationProcessStatusDtoFromJson(
    Map<String, dynamic> json) {
  return _RegistrationProcessStatusDto.fromJson(json);
}

/// @nodoc
mixin _$RegistrationProcessStatusDto {
  StatusDto get status => throw _privateConstructorUsedError;
  AggregatedProductDto get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationProcessStatusDtoCopyWith<RegistrationProcessStatusDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationProcessStatusDtoCopyWith<$Res> {
  factory $RegistrationProcessStatusDtoCopyWith(
          RegistrationProcessStatusDto value,
          $Res Function(RegistrationProcessStatusDto) then) =
      _$RegistrationProcessStatusDtoCopyWithImpl<$Res,
          RegistrationProcessStatusDto>;
  @useResult
  $Res call({StatusDto status, AggregatedProductDto product});

  $AggregatedProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class _$RegistrationProcessStatusDtoCopyWithImpl<$Res,
        $Val extends RegistrationProcessStatusDto>
    implements $RegistrationProcessStatusDtoCopyWith<$Res> {
  _$RegistrationProcessStatusDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusDto,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AggregatedProductDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AggregatedProductDtoCopyWith<$Res> get product {
    return $AggregatedProductDtoCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationProcessStatusDtoImplCopyWith<$Res>
    implements $RegistrationProcessStatusDtoCopyWith<$Res> {
  factory _$$RegistrationProcessStatusDtoImplCopyWith(
          _$RegistrationProcessStatusDtoImpl value,
          $Res Function(_$RegistrationProcessStatusDtoImpl) then) =
      __$$RegistrationProcessStatusDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusDto status, AggregatedProductDto product});

  @override
  $AggregatedProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class __$$RegistrationProcessStatusDtoImplCopyWithImpl<$Res>
    extends _$RegistrationProcessStatusDtoCopyWithImpl<$Res,
        _$RegistrationProcessStatusDtoImpl>
    implements _$$RegistrationProcessStatusDtoImplCopyWith<$Res> {
  __$$RegistrationProcessStatusDtoImplCopyWithImpl(
      _$RegistrationProcessStatusDtoImpl _value,
      $Res Function(_$RegistrationProcessStatusDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? product = null,
  }) {
    return _then(_$RegistrationProcessStatusDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusDto,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AggregatedProductDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationProcessStatusDtoImpl
    implements _RegistrationProcessStatusDto {
  const _$RegistrationProcessStatusDtoImpl(
      {required this.status, required this.product});

  factory _$RegistrationProcessStatusDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegistrationProcessStatusDtoImplFromJson(json);

  @override
  final StatusDto status;
  @override
  final AggregatedProductDto product;

  @override
  String toString() {
    return 'RegistrationProcessStatusDto(status: $status, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationProcessStatusDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationProcessStatusDtoImplCopyWith<
          _$RegistrationProcessStatusDtoImpl>
      get copyWith => __$$RegistrationProcessStatusDtoImplCopyWithImpl<
          _$RegistrationProcessStatusDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationProcessStatusDtoImplToJson(
      this,
    );
  }
}

abstract class _RegistrationProcessStatusDto
    implements RegistrationProcessStatusDto {
  const factory _RegistrationProcessStatusDto(
          {required final StatusDto status,
          required final AggregatedProductDto product}) =
      _$RegistrationProcessStatusDtoImpl;

  factory _RegistrationProcessStatusDto.fromJson(Map<String, dynamic> json) =
      _$RegistrationProcessStatusDtoImpl.fromJson;

  @override
  StatusDto get status;
  @override
  AggregatedProductDto get product;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationProcessStatusDtoImplCopyWith<
          _$RegistrationProcessStatusDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
