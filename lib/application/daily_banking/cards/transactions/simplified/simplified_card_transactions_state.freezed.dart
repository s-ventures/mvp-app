// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_card_transactions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedCardTransactionsState {
  AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>> get transactions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedCardTransactionsStateCopyWith<SimplifiedCardTransactionsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedCardTransactionsStateCopyWith<$Res> {
  factory $SimplifiedCardTransactionsStateCopyWith(
          SimplifiedCardTransactionsState value,
          $Res Function(SimplifiedCardTransactionsState) then) =
      _$SimplifiedCardTransactionsStateCopyWithImpl<$Res,
          SimplifiedCardTransactionsState>;
  @useResult
  $Res call(
      {AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>>
          transactions});
}

/// @nodoc
class _$SimplifiedCardTransactionsStateCopyWithImpl<$Res,
        $Val extends SimplifiedCardTransactionsState>
    implements $SimplifiedCardTransactionsStateCopyWith<$Res> {
  _$SimplifiedCardTransactionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedCardTransactionsStateImplCopyWith<$Res>
    implements $SimplifiedCardTransactionsStateCopyWith<$Res> {
  factory _$$SimplifiedCardTransactionsStateImplCopyWith(
          _$SimplifiedCardTransactionsStateImpl value,
          $Res Function(_$SimplifiedCardTransactionsStateImpl) then) =
      __$$SimplifiedCardTransactionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>>
          transactions});
}

/// @nodoc
class __$$SimplifiedCardTransactionsStateImplCopyWithImpl<$Res>
    extends _$SimplifiedCardTransactionsStateCopyWithImpl<$Res,
        _$SimplifiedCardTransactionsStateImpl>
    implements _$$SimplifiedCardTransactionsStateImplCopyWith<$Res> {
  __$$SimplifiedCardTransactionsStateImplCopyWithImpl(
      _$SimplifiedCardTransactionsStateImpl _value,
      $Res Function(_$SimplifiedCardTransactionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$SimplifiedCardTransactionsStateImpl(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>>,
    ));
  }
}

/// @nodoc

class _$SimplifiedCardTransactionsStateImpl
    implements _SimplifiedCardTransactionsState {
  const _$SimplifiedCardTransactionsStateImpl(
      {this.transactions = const AsyncLoading<
          Map<DateTime, List<SimplifiedCardTransaction>>>()});

  @override
  @JsonKey()
  final AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>> transactions;

  @override
  String toString() {
    return 'SimplifiedCardTransactionsState(transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedCardTransactionsStateImpl &&
            (identical(other.transactions, transactions) ||
                other.transactions == transactions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedCardTransactionsStateImplCopyWith<
          _$SimplifiedCardTransactionsStateImpl>
      get copyWith => __$$SimplifiedCardTransactionsStateImplCopyWithImpl<
          _$SimplifiedCardTransactionsStateImpl>(this, _$identity);
}

abstract class _SimplifiedCardTransactionsState
    implements SimplifiedCardTransactionsState {
  const factory _SimplifiedCardTransactionsState(
      {final AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>>
          transactions}) = _$SimplifiedCardTransactionsStateImpl;

  @override
  AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>> get transactions;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedCardTransactionsStateImplCopyWith<
          _$SimplifiedCardTransactionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
