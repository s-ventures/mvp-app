// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailedAccountState {
  AsyncValue<DetailedAccount> get account => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedAccountStateCopyWith<DetailedAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedAccountStateCopyWith<$Res> {
  factory $DetailedAccountStateCopyWith(DetailedAccountState value,
          $Res Function(DetailedAccountState) then) =
      _$DetailedAccountStateCopyWithImpl<$Res, DetailedAccountState>;
  @useResult
  $Res call({AsyncValue<DetailedAccount> account});
}

/// @nodoc
class _$DetailedAccountStateCopyWithImpl<$Res,
        $Val extends DetailedAccountState>
    implements $DetailedAccountStateCopyWith<$Res> {
  _$DetailedAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedAccount>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedAccountStateImplCopyWith<$Res>
    implements $DetailedAccountStateCopyWith<$Res> {
  factory _$$DetailedAccountStateImplCopyWith(_$DetailedAccountStateImpl value,
          $Res Function(_$DetailedAccountStateImpl) then) =
      __$$DetailedAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<DetailedAccount> account});
}

/// @nodoc
class __$$DetailedAccountStateImplCopyWithImpl<$Res>
    extends _$DetailedAccountStateCopyWithImpl<$Res, _$DetailedAccountStateImpl>
    implements _$$DetailedAccountStateImplCopyWith<$Res> {
  __$$DetailedAccountStateImplCopyWithImpl(_$DetailedAccountStateImpl _value,
      $Res Function(_$DetailedAccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$DetailedAccountStateImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedAccount>,
    ));
  }
}

/// @nodoc

class _$DetailedAccountStateImpl implements _DetailedAccountState {
  const _$DetailedAccountStateImpl(
      {this.account = const AsyncLoading<DetailedAccount>()});

  @override
  @JsonKey()
  final AsyncValue<DetailedAccount> account;

  @override
  String toString() {
    return 'DetailedAccountState(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedAccountStateImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedAccountStateImplCopyWith<_$DetailedAccountStateImpl>
      get copyWith =>
          __$$DetailedAccountStateImplCopyWithImpl<_$DetailedAccountStateImpl>(
              this, _$identity);
}

abstract class _DetailedAccountState implements DetailedAccountState {
  const factory _DetailedAccountState(
      {final AsyncValue<DetailedAccount> account}) = _$DetailedAccountStateImpl;

  @override
  AsyncValue<DetailedAccount> get account;
  @override
  @JsonKey(ignore: true)
  _$$DetailedAccountStateImplCopyWith<_$DetailedAccountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
