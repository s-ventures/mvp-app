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
  String get search => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  double? get amountFrom => throw _privateConstructorUsedError;
  double? get amountTo => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  TransactionOperationType get operationType =>
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
      {AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>> transactions,
      String search,
      DateTime? startDate,
      DateTime? endDate,
      double? amountFrom,
      double? amountTo,
      String category,
      TransactionOperationType operationType});
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
    Object? search = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? amountFrom = freezed,
    Object? amountTo = freezed,
    Object? category = null,
    Object? operationType = null,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>>,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amountFrom: freezed == amountFrom
          ? _value.amountFrom
          : amountFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTo: freezed == amountTo
          ? _value.amountTo
          : amountTo // ignore: cast_nullable_to_non_nullable
              as double?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      operationType: null == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as TransactionOperationType,
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
      {AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>> transactions,
      String search,
      DateTime? startDate,
      DateTime? endDate,
      double? amountFrom,
      double? amountTo,
      String category,
      TransactionOperationType operationType});
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
    Object? search = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? amountFrom = freezed,
    Object? amountTo = freezed,
    Object? category = null,
    Object? operationType = null,
  }) {
    return _then(_$SimplifiedCardTransactionsStateImpl(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>>,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amountFrom: freezed == amountFrom
          ? _value.amountFrom
          : amountFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTo: freezed == amountTo
          ? _value.amountTo
          : amountTo // ignore: cast_nullable_to_non_nullable
              as double?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      operationType: null == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as TransactionOperationType,
    ));
  }
}

/// @nodoc

class _$SimplifiedCardTransactionsStateImpl
    implements _SimplifiedCardTransactionsState {
  const _$SimplifiedCardTransactionsStateImpl(
      {this.transactions =
          const AsyncLoading<Map<DateTime, List<SimplifiedCardTransaction>>>(),
      this.search = '',
      this.startDate,
      this.endDate,
      this.amountFrom,
      this.amountTo,
      this.category = 'Entretenimiento',
      this.operationType = TransactionOperationType.all});

  @override
  @JsonKey()
  final AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>> transactions;
  @override
  @JsonKey()
  final String search;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final double? amountFrom;
  @override
  final double? amountTo;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final TransactionOperationType operationType;

  @override
  String toString() {
    return 'SimplifiedCardTransactionsState(transactions: $transactions, search: $search, startDate: $startDate, endDate: $endDate, amountFrom: $amountFrom, amountTo: $amountTo, category: $category, operationType: $operationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedCardTransactionsStateImpl &&
            (identical(other.transactions, transactions) ||
                other.transactions == transactions) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.amountFrom, amountFrom) ||
                other.amountFrom == amountFrom) &&
            (identical(other.amountTo, amountTo) ||
                other.amountTo == amountTo) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.operationType, operationType) ||
                other.operationType == operationType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactions, search, startDate,
      endDate, amountFrom, amountTo, category, operationType);

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
              transactions,
          final String search,
          final DateTime? startDate,
          final DateTime? endDate,
          final double? amountFrom,
          final double? amountTo,
          final String category,
          final TransactionOperationType operationType}) =
      _$SimplifiedCardTransactionsStateImpl;

  @override
  AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>> get transactions;
  @override
  String get search;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  double? get amountFrom;
  @override
  double? get amountTo;
  @override
  String get category;
  @override
  TransactionOperationType get operationType;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedCardTransactionsStateImplCopyWith<
          _$SimplifiedCardTransactionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
