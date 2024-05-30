// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'serial_number_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SerialNumberDto _$SerialNumberDtoFromJson(Map<String, dynamic> json) {
  return _SerialNumberDto.fromJson(json);
}

/// @nodoc
mixin _$SerialNumberDto {
  int get serialNumberId => throw _privateConstructorUsedError;
  int get erpContractId => throw _privateConstructorUsedError;
  SerialNumberType get type => throw _privateConstructorUsedError;
  String get alias => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get numberLast => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  int get templateId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SerialNumberDtoCopyWith<SerialNumberDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SerialNumberDtoCopyWith<$Res> {
  factory $SerialNumberDtoCopyWith(
          SerialNumberDto value, $Res Function(SerialNumberDto) then) =
      _$SerialNumberDtoCopyWithImpl<$Res, SerialNumberDto>;
  @useResult
  $Res call(
      {int serialNumberId,
      int erpContractId,
      SerialNumberType type,
      String alias,
      String description,
      int numberLast,
      String format,
      int templateId});
}

/// @nodoc
class _$SerialNumberDtoCopyWithImpl<$Res, $Val extends SerialNumberDto>
    implements $SerialNumberDtoCopyWith<$Res> {
  _$SerialNumberDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serialNumberId = null,
    Object? erpContractId = null,
    Object? type = null,
    Object? alias = null,
    Object? description = null,
    Object? numberLast = null,
    Object? format = null,
    Object? templateId = null,
  }) {
    return _then(_value.copyWith(
      serialNumberId: null == serialNumberId
          ? _value.serialNumberId
          : serialNumberId // ignore: cast_nullable_to_non_nullable
              as int,
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SerialNumberType,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      numberLast: null == numberLast
          ? _value.numberLast
          : numberLast // ignore: cast_nullable_to_non_nullable
              as int,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SerialNumberDtoImplCopyWith<$Res>
    implements $SerialNumberDtoCopyWith<$Res> {
  factory _$$SerialNumberDtoImplCopyWith(_$SerialNumberDtoImpl value,
          $Res Function(_$SerialNumberDtoImpl) then) =
      __$$SerialNumberDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int serialNumberId,
      int erpContractId,
      SerialNumberType type,
      String alias,
      String description,
      int numberLast,
      String format,
      int templateId});
}

/// @nodoc
class __$$SerialNumberDtoImplCopyWithImpl<$Res>
    extends _$SerialNumberDtoCopyWithImpl<$Res, _$SerialNumberDtoImpl>
    implements _$$SerialNumberDtoImplCopyWith<$Res> {
  __$$SerialNumberDtoImplCopyWithImpl(
      _$SerialNumberDtoImpl _value, $Res Function(_$SerialNumberDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serialNumberId = null,
    Object? erpContractId = null,
    Object? type = null,
    Object? alias = null,
    Object? description = null,
    Object? numberLast = null,
    Object? format = null,
    Object? templateId = null,
  }) {
    return _then(_$SerialNumberDtoImpl(
      serialNumberId: null == serialNumberId
          ? _value.serialNumberId
          : serialNumberId // ignore: cast_nullable_to_non_nullable
              as int,
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SerialNumberType,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      numberLast: null == numberLast
          ? _value.numberLast
          : numberLast // ignore: cast_nullable_to_non_nullable
              as int,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SerialNumberDtoImpl implements _SerialNumberDto {
  const _$SerialNumberDtoImpl(
      {required this.serialNumberId,
      required this.erpContractId,
      required this.type,
      required this.alias,
      required this.description,
      required this.numberLast,
      required this.format,
      required this.templateId});

  factory _$SerialNumberDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SerialNumberDtoImplFromJson(json);

  @override
  final int serialNumberId;
  @override
  final int erpContractId;
  @override
  final SerialNumberType type;
  @override
  final String alias;
  @override
  final String description;
  @override
  final int numberLast;
  @override
  final String format;
  @override
  final int templateId;

  @override
  String toString() {
    return 'SerialNumberDto(serialNumberId: $serialNumberId, erpContractId: $erpContractId, type: $type, alias: $alias, description: $description, numberLast: $numberLast, format: $format, templateId: $templateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SerialNumberDtoImpl &&
            (identical(other.serialNumberId, serialNumberId) ||
                other.serialNumberId == serialNumberId) &&
            (identical(other.erpContractId, erpContractId) ||
                other.erpContractId == erpContractId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.numberLast, numberLast) ||
                other.numberLast == numberLast) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, serialNumberId, erpContractId,
      type, alias, description, numberLast, format, templateId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SerialNumberDtoImplCopyWith<_$SerialNumberDtoImpl> get copyWith =>
      __$$SerialNumberDtoImplCopyWithImpl<_$SerialNumberDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SerialNumberDtoImplToJson(
      this,
    );
  }
}

abstract class _SerialNumberDto implements SerialNumberDto {
  const factory _SerialNumberDto(
      {required final int serialNumberId,
      required final int erpContractId,
      required final SerialNumberType type,
      required final String alias,
      required final String description,
      required final int numberLast,
      required final String format,
      required final int templateId}) = _$SerialNumberDtoImpl;

  factory _SerialNumberDto.fromJson(Map<String, dynamic> json) =
      _$SerialNumberDtoImpl.fromJson;

  @override
  int get serialNumberId;
  @override
  int get erpContractId;
  @override
  SerialNumberType get type;
  @override
  String get alias;
  @override
  String get description;
  @override
  int get numberLast;
  @override
  String get format;
  @override
  int get templateId;
  @override
  @JsonKey(ignore: true)
  _$$SerialNumberDtoImplCopyWith<_$SerialNumberDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
