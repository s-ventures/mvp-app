// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_balance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountBalanceState {
  AsyncValue<AccountBalance> get balance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountBalanceStateCopyWith<AccountBalanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBalanceStateCopyWith<$Res> {
  factory $AccountBalanceStateCopyWith(
          AccountBalanceState value, $Res Function(AccountBalanceState) then) =
      _$AccountBalanceStateCopyWithImpl<$Res, AccountBalanceState>;
  @useResult
  $Res call({AsyncValue<AccountBalance> balance});
}

/// @nodoc
class _$AccountBalanceStateCopyWithImpl<$Res, $Val extends AccountBalanceState>
    implements $AccountBalanceStateCopyWith<$Res> {
  _$AccountBalanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AsyncValue<AccountBalance>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountBalanceStateImplCopyWith<$Res>
    implements $AccountBalanceStateCopyWith<$Res> {
  factory _$$AccountBalanceStateImplCopyWith(_$AccountBalanceStateImpl value,
          $Res Function(_$AccountBalanceStateImpl) then) =
      __$$AccountBalanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<AccountBalance> balance});
}

/// @nodoc
class __$$AccountBalanceStateImplCopyWithImpl<$Res>
    extends _$AccountBalanceStateCopyWithImpl<$Res, _$AccountBalanceStateImpl>
    implements _$$AccountBalanceStateImplCopyWith<$Res> {
  __$$AccountBalanceStateImplCopyWithImpl(_$AccountBalanceStateImpl _value,
      $Res Function(_$AccountBalanceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_$AccountBalanceStateImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as AsyncValue<AccountBalance>,
    ));
  }
}

/// @nodoc

class _$AccountBalanceStateImpl implements _AccountBalanceState {
  const _$AccountBalanceStateImpl(
      {this.balance = const AsyncLoading<AccountBalance>()});

  @override
  @JsonKey()
  final AsyncValue<AccountBalance> balance;

  @override
  String toString() {
    return 'AccountBalanceState(balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountBalanceStateImpl &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountBalanceStateImplCopyWith<_$AccountBalanceStateImpl> get copyWith =>
      __$$AccountBalanceStateImplCopyWithImpl<_$AccountBalanceStateImpl>(
          this, _$identity);
}

abstract class _AccountBalanceState implements AccountBalanceState {
  const factory _AccountBalanceState(
      {final AsyncValue<AccountBalance> balance}) = _$AccountBalanceStateImpl;

  @override
  AsyncValue<AccountBalance> get balance;
  @override
  @JsonKey(ignore: true)
  _$$AccountBalanceStateImplCopyWith<_$AccountBalanceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
