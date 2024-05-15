// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_card_transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedCardTransactionState {
  AsyncValue<DetailedCardTransaction> get transaction =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedCardTransactionStateCopyWith<DetailedCardTransactionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedCardTransactionStateCopyWith<$Res> {
  factory $DetailedCardTransactionStateCopyWith(
          DetailedCardTransactionState value,
          $Res Function(DetailedCardTransactionState) then) =
      _$DetailedCardTransactionStateCopyWithImpl<$Res,
          DetailedCardTransactionState>;
  @useResult
  $Res call({AsyncValue<DetailedCardTransaction> transaction});
}

/// @nodoc
class _$DetailedCardTransactionStateCopyWithImpl<$Res,
        $Val extends DetailedCardTransactionState>
    implements $DetailedCardTransactionStateCopyWith<$Res> {
  _$DetailedCardTransactionStateCopyWithImpl(this._value, this._then);

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
              as AsyncValue<DetailedCardTransaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedCardTransactionStateImplCopyWith<$Res>
    implements $DetailedCardTransactionStateCopyWith<$Res> {
  factory _$$DetailedCardTransactionStateImplCopyWith(
          _$DetailedCardTransactionStateImpl value,
          $Res Function(_$DetailedCardTransactionStateImpl) then) =
      __$$DetailedCardTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<DetailedCardTransaction> transaction});
}

/// @nodoc
class __$$DetailedCardTransactionStateImplCopyWithImpl<$Res>
    extends _$DetailedCardTransactionStateCopyWithImpl<$Res,
        _$DetailedCardTransactionStateImpl>
    implements _$$DetailedCardTransactionStateImplCopyWith<$Res> {
  __$$DetailedCardTransactionStateImplCopyWithImpl(
      _$DetailedCardTransactionStateImpl _value,
      $Res Function(_$DetailedCardTransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$DetailedCardTransactionStateImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedCardTransaction>,
    ));
  }
}

/// @nodoc

class _$DetailedCardTransactionStateImpl
    implements _DetailedCardTransactionState {
  const _$DetailedCardTransactionStateImpl(
      {this.transaction = const AsyncLoading<DetailedCardTransaction>()});

  @override
  @JsonKey()
  final AsyncValue<DetailedCardTransaction> transaction;

  @override
  String toString() {
    return 'DetailedCardTransactionState(transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedCardTransactionStateImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedCardTransactionStateImplCopyWith<
          _$DetailedCardTransactionStateImpl>
      get copyWith => __$$DetailedCardTransactionStateImplCopyWithImpl<
          _$DetailedCardTransactionStateImpl>(this, _$identity);
}

abstract class _DetailedCardTransactionState
    implements DetailedCardTransactionState {
  const factory _DetailedCardTransactionState(
          {final AsyncValue<DetailedCardTransaction> transaction}) =
      _$DetailedCardTransactionStateImpl;

  @override
  AsyncValue<DetailedCardTransaction> get transaction;
  @override
  @JsonKey(ignore: true)
  _$$DetailedCardTransactionStateImplCopyWith<
          _$DetailedCardTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
