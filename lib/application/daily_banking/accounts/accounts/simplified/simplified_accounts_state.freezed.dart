// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_accounts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedAccountsState {
  AsyncValue<List<SimplifiedAccount>> get accounts => throw _privateConstructorUsedError;
  int get selectedAccountIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedAccountsStateCopyWith<SimplifiedAccountsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedAccountsStateCopyWith<$Res> {
  factory $SimplifiedAccountsStateCopyWith(
          SimplifiedAccountsState value, $Res Function(SimplifiedAccountsState) then) =
      _$SimplifiedAccountsStateCopyWithImpl<$Res, SimplifiedAccountsState>;
  @useResult
  $Res call({AsyncValue<List<SimplifiedAccount>> accounts, int selectedAccountIndex});
}

/// @nodoc
class _$SimplifiedAccountsStateCopyWithImpl<$Res, $Val extends SimplifiedAccountsState>
    implements $SimplifiedAccountsStateCopyWith<$Res> {
  _$SimplifiedAccountsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selectedAccountIndex = null,
  }) {
    return _then(_value.copyWith(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedAccount>>,
      selectedAccountIndex: null == selectedAccountIndex
          ? _value.selectedAccountIndex
          : selectedAccountIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedAccountsStateImplCopyWith<$Res>
    implements $SimplifiedAccountsStateCopyWith<$Res> {
  factory _$$SimplifiedAccountsStateImplCopyWith(
          _$SimplifiedAccountsStateImpl value, $Res Function(_$SimplifiedAccountsStateImpl) then) =
      __$$SimplifiedAccountsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<SimplifiedAccount>> accounts, int selectedAccountIndex});
}

/// @nodoc
class __$$SimplifiedAccountsStateImplCopyWithImpl<$Res>
    extends _$SimplifiedAccountsStateCopyWithImpl<$Res, _$SimplifiedAccountsStateImpl>
    implements _$$SimplifiedAccountsStateImplCopyWith<$Res> {
  __$$SimplifiedAccountsStateImplCopyWithImpl(
      _$SimplifiedAccountsStateImpl _value, $Res Function(_$SimplifiedAccountsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selectedAccountIndex = null,
  }) {
    return _then(_$SimplifiedAccountsStateImpl(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedAccount>>,
      selectedAccountIndex: null == selectedAccountIndex
          ? _value.selectedAccountIndex
          : selectedAccountIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SimplifiedAccountsStateImpl implements _SimplifiedAccountsState {
  const _$SimplifiedAccountsStateImpl(
      {this.accounts = const AsyncLoading<List<SimplifiedAccount>>(),
      this.selectedAccountIndex = 0});

  @override
  @JsonKey()
  final AsyncValue<List<SimplifiedAccount>> accounts;
  @override
  @JsonKey()
  final int selectedAccountIndex;

  @override
  String toString() {
    return 'SimplifiedAccountsState(accounts: $accounts, selectedAccountIndex: $selectedAccountIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedAccountsStateImpl &&
            (identical(other.accounts, accounts) || other.accounts == accounts) &&
            (identical(other.selectedAccountIndex, selectedAccountIndex) ||
                other.selectedAccountIndex == selectedAccountIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accounts, selectedAccountIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedAccountsStateImplCopyWith<_$SimplifiedAccountsStateImpl> get copyWith =>
      __$$SimplifiedAccountsStateImplCopyWithImpl<_$SimplifiedAccountsStateImpl>(this, _$identity);
}

abstract class _SimplifiedAccountsState implements SimplifiedAccountsState {
  const factory _SimplifiedAccountsState(
      {final AsyncValue<List<SimplifiedAccount>> accounts,
      final int selectedAccountIndex}) = _$SimplifiedAccountsStateImpl;

  @override
  AsyncValue<List<SimplifiedAccount>> get accounts;
  @override
  int get selectedAccountIndex;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedAccountsStateImplCopyWith<_$SimplifiedAccountsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
