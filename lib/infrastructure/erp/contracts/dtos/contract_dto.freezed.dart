// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContractDto _$ContractDtoFromJson(Map<String, dynamic> json) {
  return _ContractDto.fromJson(json);
}

/// @nodoc
mixin _$ContractDto {
  int get contractId => throw _privateConstructorUsedError;
  String get productCode => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get startDate => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractDtoCopyWith<ContractDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractDtoCopyWith<$Res> {
  factory $ContractDtoCopyWith(
          ContractDto value, $Res Function(ContractDto) then) =
      _$ContractDtoCopyWithImpl<$Res, ContractDto>;
  @useResult
  $Res call(
      {int contractId,
      String productCode,
      @DateConverter() DateTime startDate,
      @DateConverter() DateTime endDate});
}

/// @nodoc
class _$ContractDtoCopyWithImpl<$Res, $Val extends ContractDto>
    implements $ContractDtoCopyWith<$Res> {
  _$ContractDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractId = null,
    Object? productCode = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      contractId: null == contractId
          ? _value.contractId
          : contractId // ignore: cast_nullable_to_non_nullable
              as int,
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractDtoImplCopyWith<$Res>
    implements $ContractDtoCopyWith<$Res> {
  factory _$$ContractDtoImplCopyWith(
          _$ContractDtoImpl value, $Res Function(_$ContractDtoImpl) then) =
      __$$ContractDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int contractId,
      String productCode,
      @DateConverter() DateTime startDate,
      @DateConverter() DateTime endDate});
}

/// @nodoc
class __$$ContractDtoImplCopyWithImpl<$Res>
    extends _$ContractDtoCopyWithImpl<$Res, _$ContractDtoImpl>
    implements _$$ContractDtoImplCopyWith<$Res> {
  __$$ContractDtoImplCopyWithImpl(
      _$ContractDtoImpl _value, $Res Function(_$ContractDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractId = null,
    Object? productCode = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$ContractDtoImpl(
      contractId: null == contractId
          ? _value.contractId
          : contractId // ignore: cast_nullable_to_non_nullable
              as int,
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
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
class _$ContractDtoImpl implements _ContractDto {
  const _$ContractDtoImpl(
      {required this.contractId,
      required this.productCode,
      @DateConverter() required this.startDate,
      @DateConverter() required this.endDate});

  factory _$ContractDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractDtoImplFromJson(json);

  @override
  final int contractId;
  @override
  final String productCode;
  @override
  @DateConverter()
  final DateTime startDate;
  @override
  @DateConverter()
  final DateTime endDate;

  @override
  String toString() {
    return 'ContractDto(contractId: $contractId, productCode: $productCode, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractDtoImpl &&
            (identical(other.contractId, contractId) ||
                other.contractId == contractId) &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contractId, productCode, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractDtoImplCopyWith<_$ContractDtoImpl> get copyWith =>
      __$$ContractDtoImplCopyWithImpl<_$ContractDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractDtoImplToJson(
      this,
    );
  }
}

abstract class _ContractDto implements ContractDto {
  const factory _ContractDto(
      {required final int contractId,
      required final String productCode,
      @DateConverter() required final DateTime startDate,
      @DateConverter() required final DateTime endDate}) = _$ContractDtoImpl;

  factory _ContractDto.fromJson(Map<String, dynamic> json) =
      _$ContractDtoImpl.fromJson;

  @override
  int get contractId;
  @override
  String get productCode;
  @override
  @DateConverter()
  DateTime get startDate;
  @override
  @DateConverter()
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$ContractDtoImplCopyWith<_$ContractDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
