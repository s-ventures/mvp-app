// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_vat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VatDto _$VatDtoFromJson(Map<String, dynamic> json) {
  return _VatDto.fromJson(json);
}

/// @nodoc
mixin _$VatDto {
  int get vatId => throw _privateConstructorUsedError;
  int get percentage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get initialDate => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VatDtoCopyWith<VatDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VatDtoCopyWith<$Res> {
  factory $VatDtoCopyWith(VatDto value, $Res Function(VatDto) then) =
      _$VatDtoCopyWithImpl<$Res, VatDto>;
  @useResult
  $Res call(
      {int vatId,
      int percentage,
      String description,
      @DateConverter() DateTime initialDate,
      @DateConverter() DateTime endDate});
}

/// @nodoc
class _$VatDtoCopyWithImpl<$Res, $Val extends VatDto>
    implements $VatDtoCopyWith<$Res> {
  _$VatDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vatId = null,
    Object? percentage = null,
    Object? description = null,
    Object? initialDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      vatId: null == vatId
          ? _value.vatId
          : vatId // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      initialDate: null == initialDate
          ? _value.initialDate
          : initialDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VatDtoImplCopyWith<$Res> implements $VatDtoCopyWith<$Res> {
  factory _$$VatDtoImplCopyWith(
          _$VatDtoImpl value, $Res Function(_$VatDtoImpl) then) =
      __$$VatDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int vatId,
      int percentage,
      String description,
      @DateConverter() DateTime initialDate,
      @DateConverter() DateTime endDate});
}

/// @nodoc
class __$$VatDtoImplCopyWithImpl<$Res>
    extends _$VatDtoCopyWithImpl<$Res, _$VatDtoImpl>
    implements _$$VatDtoImplCopyWith<$Res> {
  __$$VatDtoImplCopyWithImpl(
      _$VatDtoImpl _value, $Res Function(_$VatDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vatId = null,
    Object? percentage = null,
    Object? description = null,
    Object? initialDate = null,
    Object? endDate = null,
  }) {
    return _then(_$VatDtoImpl(
      vatId: null == vatId
          ? _value.vatId
          : vatId // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      initialDate: null == initialDate
          ? _value.initialDate
          : initialDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VatDtoImpl implements _VatDto {
  const _$VatDtoImpl(
      {required this.vatId,
      required this.percentage,
      required this.description,
      @DateConverter() required this.initialDate,
      @DateConverter() required this.endDate});

  factory _$VatDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VatDtoImplFromJson(json);

  @override
  final int vatId;
  @override
  final int percentage;
  @override
  final String description;
  @override
  @DateConverter()
  final DateTime initialDate;
  @override
  @DateConverter()
  final DateTime endDate;

  @override
  String toString() {
    return 'VatDto(vatId: $vatId, percentage: $percentage, description: $description, initialDate: $initialDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VatDtoImpl &&
            (identical(other.vatId, vatId) || other.vatId == vatId) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.initialDate, initialDate) ||
                other.initialDate == initialDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, vatId, percentage, description, initialDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VatDtoImplCopyWith<_$VatDtoImpl> get copyWith =>
      __$$VatDtoImplCopyWithImpl<_$VatDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VatDtoImplToJson(
      this,
    );
  }
}

abstract class _VatDto implements VatDto {
  const factory _VatDto(
      {required final int vatId,
      required final int percentage,
      required final String description,
      @DateConverter() required final DateTime initialDate,
      @DateConverter() required final DateTime endDate}) = _$VatDtoImpl;

  factory _VatDto.fromJson(Map<String, dynamic> json) = _$VatDtoImpl.fromJson;

  @override
  int get vatId;
  @override
  int get percentage;
  @override
  String get description;
  @override
  @DateConverter()
  DateTime get initialDate;
  @override
  @DateConverter()
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$VatDtoImplCopyWith<_$VatDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
