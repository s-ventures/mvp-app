// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_contract_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerContractDto {
  String get alias => throw _privateConstructorUsedError;
  ContractDto get contract => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerContractDtoCopyWith<CustomerContractDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerContractDtoCopyWith<$Res> {
  factory $CustomerContractDtoCopyWith(
          CustomerContractDto value, $Res Function(CustomerContractDto) then) =
      _$CustomerContractDtoCopyWithImpl<$Res, CustomerContractDto>;
  @useResult
  $Res call({String alias, ContractDto contract});

  $ContractDtoCopyWith<$Res> get contract;
}

/// @nodoc
class _$CustomerContractDtoCopyWithImpl<$Res, $Val extends CustomerContractDto>
    implements $CustomerContractDtoCopyWith<$Res> {
  _$CustomerContractDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alias = null,
    Object? contract = null,
  }) {
    return _then(_value.copyWith(
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as ContractDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractDtoCopyWith<$Res> get contract {
    return $ContractDtoCopyWith<$Res>(_value.contract, (value) {
      return _then(_value.copyWith(contract: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerContractDtoImplCopyWith<$Res>
    implements $CustomerContractDtoCopyWith<$Res> {
  factory _$$CustomerContractDtoImplCopyWith(_$CustomerContractDtoImpl value,
          $Res Function(_$CustomerContractDtoImpl) then) =
      __$$CustomerContractDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String alias, ContractDto contract});

  @override
  $ContractDtoCopyWith<$Res> get contract;
}

/// @nodoc
class __$$CustomerContractDtoImplCopyWithImpl<$Res>
    extends _$CustomerContractDtoCopyWithImpl<$Res, _$CustomerContractDtoImpl>
    implements _$$CustomerContractDtoImplCopyWith<$Res> {
  __$$CustomerContractDtoImplCopyWithImpl(_$CustomerContractDtoImpl _value,
      $Res Function(_$CustomerContractDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alias = null,
    Object? contract = null,
  }) {
    return _then(_$CustomerContractDtoImpl(
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as ContractDto,
    ));
  }
}

/// @nodoc

class _$CustomerContractDtoImpl implements _CustomerContractDto {
  const _$CustomerContractDtoImpl(
      {required this.alias, required this.contract});

  @override
  final String alias;
  @override
  final ContractDto contract;

  @override
  String toString() {
    return 'CustomerContractDto(alias: $alias, contract: $contract)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerContractDtoImpl &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alias, contract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerContractDtoImplCopyWith<_$CustomerContractDtoImpl> get copyWith =>
      __$$CustomerContractDtoImplCopyWithImpl<_$CustomerContractDtoImpl>(
          this, _$identity);
}

abstract class _CustomerContractDto implements CustomerContractDto {
  const factory _CustomerContractDto(
      {required final String alias,
      required final ContractDto contract}) = _$CustomerContractDtoImpl;

  @override
  String get alias;
  @override
  ContractDto get contract;
  @override
  @JsonKey(ignore: true)
  _$$CustomerContractDtoImplCopyWith<_$CustomerContractDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
