// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailedAccount {
  UniqueId get id => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  AccountBalance get balance => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  String get entity => throw _privateConstructorUsedError;
  String get accountHolder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedAccountCopyWith<DetailedAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedAccountCopyWith<$Res> {
  factory $DetailedAccountCopyWith(
          DetailedAccount value, $Res Function(DetailedAccount) then) =
      _$DetailedAccountCopyWithImpl<$Res, DetailedAccount>;
  @useResult
  $Res call(
      {UniqueId id,
      String number,
      AccountBalance balance,
      String currencyCode,
      String entity,
      String accountHolder});

  $AccountBalanceCopyWith<$Res> get balance;
}

/// @nodoc
class _$DetailedAccountCopyWithImpl<$Res, $Val extends DetailedAccount>
    implements $DetailedAccountCopyWith<$Res> {
  _$DetailedAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? balance = null,
    Object? currencyCode = null,
    Object? entity = null,
    Object? accountHolder = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AccountBalance,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
      accountHolder: null == accountHolder
          ? _value.accountHolder
          : accountHolder // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountBalanceCopyWith<$Res> get balance {
    return $AccountBalanceCopyWith<$Res>(_value.balance, (value) {
      return _then(_value.copyWith(balance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailedAccountImplCopyWith<$Res>
    implements $DetailedAccountCopyWith<$Res> {
  factory _$$DetailedAccountImplCopyWith(_$DetailedAccountImpl value,
          $Res Function(_$DetailedAccountImpl) then) =
      __$$DetailedAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      String number,
      AccountBalance balance,
      String currencyCode,
      String entity,
      String accountHolder});

  @override
  $AccountBalanceCopyWith<$Res> get balance;
}

/// @nodoc
class __$$DetailedAccountImplCopyWithImpl<$Res>
    extends _$DetailedAccountCopyWithImpl<$Res, _$DetailedAccountImpl>
    implements _$$DetailedAccountImplCopyWith<$Res> {
  __$$DetailedAccountImplCopyWithImpl(
      _$DetailedAccountImpl _value, $Res Function(_$DetailedAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? balance = null,
    Object? currencyCode = null,
    Object? entity = null,
    Object? accountHolder = null,
  }) {
    return _then(_$DetailedAccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AccountBalance,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
      accountHolder: null == accountHolder
          ? _value.accountHolder
          : accountHolder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailedAccountImpl implements _DetailedAccount {
  const _$DetailedAccountImpl(
      {required this.id,
      required this.number,
      required this.balance,
      required this.currencyCode,
      required this.entity,
      required this.accountHolder});

  @override
  final UniqueId id;
  @override
  final String number;
  @override
  final AccountBalance balance;
  @override
  final String currencyCode;
  @override
  final String entity;
  @override
  final String accountHolder;

  @override
  String toString() {
    return 'DetailedAccount(id: $id, number: $number, balance: $balance, currencyCode: $currencyCode, entity: $entity, accountHolder: $accountHolder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.accountHolder, accountHolder) ||
                other.accountHolder == accountHolder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, number, balance, currencyCode, entity, accountHolder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedAccountImplCopyWith<_$DetailedAccountImpl> get copyWith =>
      __$$DetailedAccountImplCopyWithImpl<_$DetailedAccountImpl>(
          this, _$identity);
}

abstract class _DetailedAccount implements DetailedAccount {
  const factory _DetailedAccount(
      {required final UniqueId id,
      required final String number,
      required final AccountBalance balance,
      required final String currencyCode,
      required final String entity,
      required final String accountHolder}) = _$DetailedAccountImpl;

  @override
  UniqueId get id;
  @override
  String get number;
  @override
  AccountBalance get balance;
  @override
  String get currencyCode;
  @override
  String get entity;
  @override
  String get accountHolder;
  @override
  @JsonKey(ignore: true)
  _$$DetailedAccountImplCopyWith<_$DetailedAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
