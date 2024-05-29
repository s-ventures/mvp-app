// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_serial_number_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpenseSerialNumberDto _$ExpenseSerialNumberDtoFromJson(
    Map<String, dynamic> json) {
  return _ExpenseSerialNumberDto.fromJson(json);
}

/// @nodoc
mixin _$ExpenseSerialNumberDto {
  int get serialNumberId => throw _privateConstructorUsedError;
  int get erpContractId => throw _privateConstructorUsedError;
  ExpensesTypeDto get type => throw _privateConstructorUsedError;
  String get alias => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get numberLast => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  int get templateId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseSerialNumberDtoCopyWith<ExpenseSerialNumberDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseSerialNumberDtoCopyWith<$Res> {
  factory $ExpenseSerialNumberDtoCopyWith(ExpenseSerialNumberDto value,
          $Res Function(ExpenseSerialNumberDto) then) =
      _$ExpenseSerialNumberDtoCopyWithImpl<$Res, ExpenseSerialNumberDto>;
  @useResult
  $Res call(
      {int serialNumberId,
      int erpContractId,
      ExpensesTypeDto type,
      String alias,
      String description,
      int numberLast,
      String format,
      int templateId});
}

/// @nodoc
class _$ExpenseSerialNumberDtoCopyWithImpl<$Res,
        $Val extends ExpenseSerialNumberDto>
    implements $ExpenseSerialNumberDtoCopyWith<$Res> {
  _$ExpenseSerialNumberDtoCopyWithImpl(this._value, this._then);

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
              as ExpensesTypeDto,
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
abstract class _$$ExpenseSerialNumberDtoImplCopyWith<$Res>
    implements $ExpenseSerialNumberDtoCopyWith<$Res> {
  factory _$$ExpenseSerialNumberDtoImplCopyWith(
          _$ExpenseSerialNumberDtoImpl value,
          $Res Function(_$ExpenseSerialNumberDtoImpl) then) =
      __$$ExpenseSerialNumberDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int serialNumberId,
      int erpContractId,
      ExpensesTypeDto type,
      String alias,
      String description,
      int numberLast,
      String format,
      int templateId});
}

/// @nodoc
class __$$ExpenseSerialNumberDtoImplCopyWithImpl<$Res>
    extends _$ExpenseSerialNumberDtoCopyWithImpl<$Res,
        _$ExpenseSerialNumberDtoImpl>
    implements _$$ExpenseSerialNumberDtoImplCopyWith<$Res> {
  __$$ExpenseSerialNumberDtoImplCopyWithImpl(
      _$ExpenseSerialNumberDtoImpl _value,
      $Res Function(_$ExpenseSerialNumberDtoImpl) _then)
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
    return _then(_$ExpenseSerialNumberDtoImpl(
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
              as ExpensesTypeDto,
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
class _$ExpenseSerialNumberDtoImpl implements _ExpenseSerialNumberDto {
  const _$ExpenseSerialNumberDtoImpl(
      {required this.serialNumberId,
      required this.erpContractId,
      required this.type,
      required this.alias,
      required this.description,
      required this.numberLast,
      required this.format,
      required this.templateId});

  factory _$ExpenseSerialNumberDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseSerialNumberDtoImplFromJson(json);

  @override
  final int serialNumberId;
  @override
  final int erpContractId;
  @override
  final ExpensesTypeDto type;
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
    return 'ExpenseSerialNumberDto(serialNumberId: $serialNumberId, erpContractId: $erpContractId, type: $type, alias: $alias, description: $description, numberLast: $numberLast, format: $format, templateId: $templateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseSerialNumberDtoImpl &&
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
  _$$ExpenseSerialNumberDtoImplCopyWith<_$ExpenseSerialNumberDtoImpl>
      get copyWith => __$$ExpenseSerialNumberDtoImplCopyWithImpl<
          _$ExpenseSerialNumberDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseSerialNumberDtoImplToJson(
      this,
    );
  }
}

abstract class _ExpenseSerialNumberDto implements ExpenseSerialNumberDto {
  const factory _ExpenseSerialNumberDto(
      {required final int serialNumberId,
      required final int erpContractId,
      required final ExpensesTypeDto type,
      required final String alias,
      required final String description,
      required final int numberLast,
      required final String format,
      required final int templateId}) = _$ExpenseSerialNumberDtoImpl;

  factory _ExpenseSerialNumberDto.fromJson(Map<String, dynamic> json) =
      _$ExpenseSerialNumberDtoImpl.fromJson;

  @override
  int get serialNumberId;
  @override
  int get erpContractId;
  @override
  ExpensesTypeDto get type;
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
  _$$ExpenseSerialNumberDtoImplCopyWith<_$ExpenseSerialNumberDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
