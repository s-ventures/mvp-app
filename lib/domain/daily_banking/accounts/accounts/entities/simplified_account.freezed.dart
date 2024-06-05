// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedAccount {
  UniqueId get id => throw _privateConstructorUsedError;
  AccountEntity get entity => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  AccountStatus get status => throw _privateConstructorUsedError;
  AccountBalance get balance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedAccountCopyWith<SimplifiedAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedAccountCopyWith<$Res> {
  factory $SimplifiedAccountCopyWith(
          SimplifiedAccount value, $Res Function(SimplifiedAccount) then) =
      _$SimplifiedAccountCopyWithImpl<$Res, SimplifiedAccount>;
  @useResult
  $Res call(
      {UniqueId id,
      AccountEntity entity,
      String currencyCode,
      AccountStatus status,
      AccountBalance balance});

  $AccountBalanceCopyWith<$Res> get balance;
}

/// @nodoc
class _$SimplifiedAccountCopyWithImpl<$Res, $Val extends SimplifiedAccount>
    implements $SimplifiedAccountCopyWith<$Res> {
  _$SimplifiedAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entity = null,
    Object? currencyCode = null,
    Object? status = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AccountBalance,
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
abstract class _$$SimplifiedAccountImplCopyWith<$Res>
    implements $SimplifiedAccountCopyWith<$Res> {
  factory _$$SimplifiedAccountImplCopyWith(_$SimplifiedAccountImpl value,
          $Res Function(_$SimplifiedAccountImpl) then) =
      __$$SimplifiedAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      AccountEntity entity,
      String currencyCode,
      AccountStatus status,
      AccountBalance balance});

  @override
  $AccountBalanceCopyWith<$Res> get balance;
}

/// @nodoc
class __$$SimplifiedAccountImplCopyWithImpl<$Res>
    extends _$SimplifiedAccountCopyWithImpl<$Res, _$SimplifiedAccountImpl>
    implements _$$SimplifiedAccountImplCopyWith<$Res> {
  __$$SimplifiedAccountImplCopyWithImpl(_$SimplifiedAccountImpl _value,
      $Res Function(_$SimplifiedAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entity = null,
    Object? currencyCode = null,
    Object? status = null,
    Object? balance = null,
  }) {
    return _then(_$SimplifiedAccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AccountBalance,
    ));
  }
}

/// @nodoc

class _$SimplifiedAccountImpl implements _SimplifiedAccount {
  const _$SimplifiedAccountImpl(
      {required this.id,
      required this.entity,
      required this.currencyCode,
      required this.status,
      required this.balance});

  @override
  final UniqueId id;
  @override
  final AccountEntity entity;
  @override
  final String currencyCode;
  @override
  final AccountStatus status;
  @override
  final AccountBalance balance;

  @override
  String toString() {
    return 'SimplifiedAccount(id: $id, entity: $entity, currencyCode: $currencyCode, status: $status, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, entity, currencyCode, status, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedAccountImplCopyWith<_$SimplifiedAccountImpl> get copyWith =>
      __$$SimplifiedAccountImplCopyWithImpl<_$SimplifiedAccountImpl>(
          this, _$identity);
}

abstract class _SimplifiedAccount implements SimplifiedAccount {
  const factory _SimplifiedAccount(
      {required final UniqueId id,
      required final AccountEntity entity,
      required final String currencyCode,
      required final AccountStatus status,
      required final AccountBalance balance}) = _$SimplifiedAccountImpl;

  @override
  UniqueId get id;
  @override
  AccountEntity get entity;
  @override
  String get currencyCode;
  @override
  AccountStatus get status;
  @override
  AccountBalance get balance;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedAccountImplCopyWith<_$SimplifiedAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
