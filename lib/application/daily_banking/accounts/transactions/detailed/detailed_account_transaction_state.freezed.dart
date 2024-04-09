// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_account_transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedAccountTransactionState {
  AsyncValue<DetailedAccountTransaction> get transaction =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedAccountTransactionStateCopyWith<DetailedAccountTransactionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedAccountTransactionStateCopyWith<$Res> {
  factory $DetailedAccountTransactionStateCopyWith(
          DetailedAccountTransactionState value,
          $Res Function(DetailedAccountTransactionState) then) =
      _$DetailedAccountTransactionStateCopyWithImpl<$Res,
          DetailedAccountTransactionState>;
  @useResult
  $Res call({AsyncValue<DetailedAccountTransaction> transaction});
}

/// @nodoc
class _$DetailedAccountTransactionStateCopyWithImpl<$Res,
        $Val extends DetailedAccountTransactionState>
    implements $DetailedAccountTransactionStateCopyWith<$Res> {
  _$DetailedAccountTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedAccountTransaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedAccountTransactionStateImplCopyWith<$Res>
    implements $DetailedAccountTransactionStateCopyWith<$Res> {
  factory _$$DetailedAccountTransactionStateImplCopyWith(
          _$DetailedAccountTransactionStateImpl value,
          $Res Function(_$DetailedAccountTransactionStateImpl) then) =
      __$$DetailedAccountTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<DetailedAccountTransaction> transaction});
}

/// @nodoc
class __$$DetailedAccountTransactionStateImplCopyWithImpl<$Res>
    extends _$DetailedAccountTransactionStateCopyWithImpl<$Res,
        _$DetailedAccountTransactionStateImpl>
    implements _$$DetailedAccountTransactionStateImplCopyWith<$Res> {
  __$$DetailedAccountTransactionStateImplCopyWithImpl(
      _$DetailedAccountTransactionStateImpl _value,
      $Res Function(_$DetailedAccountTransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$DetailedAccountTransactionStateImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedAccountTransaction>,
    ));
  }
}

/// @nodoc

class _$DetailedAccountTransactionStateImpl
    implements _DetailedAccountTransactionState {
  const _$DetailedAccountTransactionStateImpl(
      {this.transaction = const AsyncLoading<DetailedAccountTransaction>()});

  @override
  @JsonKey()
  final AsyncValue<DetailedAccountTransaction> transaction;

  @override
  String toString() {
    return 'DetailedAccountTransactionState(transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedAccountTransactionStateImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedAccountTransactionStateImplCopyWith<
          _$DetailedAccountTransactionStateImpl>
      get copyWith => __$$DetailedAccountTransactionStateImplCopyWithImpl<
          _$DetailedAccountTransactionStateImpl>(this, _$identity);
}

abstract class _DetailedAccountTransactionState
    implements DetailedAccountTransactionState {
  const factory _DetailedAccountTransactionState(
          {final AsyncValue<DetailedAccountTransaction> transaction}) =
      _$DetailedAccountTransactionStateImpl;

  @override
  AsyncValue<DetailedAccountTransaction> get transaction;
  @override
  @JsonKey(ignore: true)
  _$$DetailedAccountTransactionStateImplCopyWith<
          _$DetailedAccountTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
