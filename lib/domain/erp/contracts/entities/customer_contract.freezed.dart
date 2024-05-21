// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerContract {
  String get alias => throw _privateConstructorUsedError;
  Contract get contract => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerContractCopyWith<CustomerContract> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerContractCopyWith<$Res> {
  factory $CustomerContractCopyWith(CustomerContract value, $Res Function(CustomerContract) then) =
      _$CustomerContractCopyWithImpl<$Res, CustomerContract>;
  @useResult
  $Res call({String alias, Contract contract});

  $ContractCopyWith<$Res> get contract;
}

/// @nodoc
class _$CustomerContractCopyWithImpl<$Res, $Val extends CustomerContract>
    implements $CustomerContractCopyWith<$Res> {
  _$CustomerContractCopyWithImpl(this._value, this._then);

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
              as Contract,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractCopyWith<$Res> get contract {
    return $ContractCopyWith<$Res>(_value.contract, (value) {
      return _then(_value.copyWith(contract: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerContractImplCopyWith<$Res> implements $CustomerContractCopyWith<$Res> {
  factory _$$CustomerContractImplCopyWith(
          _$CustomerContractImpl value, $Res Function(_$CustomerContractImpl) then) =
      __$$CustomerContractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String alias, Contract contract});

  @override
  $ContractCopyWith<$Res> get contract;
}

/// @nodoc
class __$$CustomerContractImplCopyWithImpl<$Res>
    extends _$CustomerContractCopyWithImpl<$Res, _$CustomerContractImpl>
    implements _$$CustomerContractImplCopyWith<$Res> {
  __$$CustomerContractImplCopyWithImpl(
      _$CustomerContractImpl _value, $Res Function(_$CustomerContractImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alias = null,
    Object? contract = null,
  }) {
    return _then(_$CustomerContractImpl(
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract,
    ));
  }
}

/// @nodoc

class _$CustomerContractImpl implements _CustomerContract {
  const _$CustomerContractImpl({required this.alias, required this.contract});

  @override
  final String alias;
  @override
  final Contract contract;

  @override
  String toString() {
    return 'CustomerContract(alias: $alias, contract: $contract)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerContractImpl &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.contract, contract) || other.contract == contract));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alias, contract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerContractImplCopyWith<_$CustomerContractImpl> get copyWith =>
      __$$CustomerContractImplCopyWithImpl<_$CustomerContractImpl>(this, _$identity);
}

abstract class _CustomerContract implements CustomerContract {
  const factory _CustomerContract({required final String alias, required final Contract contract}) =
      _$CustomerContractImpl;

  @override
  String get alias;
  @override
  Contract get contract;
  @override
  @JsonKey(ignore: true)
  _$$CustomerContractImplCopyWith<_$CustomerContractImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
