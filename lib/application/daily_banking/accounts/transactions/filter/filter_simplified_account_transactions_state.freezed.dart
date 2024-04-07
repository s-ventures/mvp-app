// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_simplified_account_transactions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterSimplifiedAccountTransactionsState {
  String get search => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  RangeValues? get amountRange => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<AccountTransactionCreditDebit> get creditDebitList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterSimplifiedAccountTransactionsStateCopyWith<
          FilterSimplifiedAccountTransactionsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterSimplifiedAccountTransactionsStateCopyWith<$Res> {
  factory $FilterSimplifiedAccountTransactionsStateCopyWith(
          FilterSimplifiedAccountTransactionsState value,
          $Res Function(FilterSimplifiedAccountTransactionsState) then) =
      _$FilterSimplifiedAccountTransactionsStateCopyWithImpl<$Res,
          FilterSimplifiedAccountTransactionsState>;
  @useResult
  $Res call(
      {String search,
      DateTime? startDate,
      DateTime? endDate,
      RangeValues? amountRange,
      String category,
      List<AccountTransactionCreditDebit> creditDebitList});
}

/// @nodoc
class _$FilterSimplifiedAccountTransactionsStateCopyWithImpl<$Res,
        $Val extends FilterSimplifiedAccountTransactionsState>
    implements $FilterSimplifiedAccountTransactionsStateCopyWith<$Res> {
  _$FilterSimplifiedAccountTransactionsStateCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? amountRange = freezed,
    Object? category = null,
    Object? creditDebitList = null,
  }) {
    return _then(_value.copyWith(
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
      amountRange: freezed == amountRange
          ? _value.amountRange
          : amountRange // ignore: cast_nullable_to_non_nullable
              as RangeValues?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      creditDebitList: null == creditDebitList
          ? _value.creditDebitList
          : creditDebitList // ignore: cast_nullable_to_non_nullable
              as List<AccountTransactionCreditDebit>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterSimplifiedAccountTransactionsStateImplCopyWith<$Res>
    implements $FilterSimplifiedAccountTransactionsStateCopyWith<$Res> {
  factory _$$FilterSimplifiedAccountTransactionsStateImplCopyWith(
          _$FilterSimplifiedAccountTransactionsStateImpl value,
          $Res Function(_$FilterSimplifiedAccountTransactionsStateImpl) then) =
      __$$FilterSimplifiedAccountTransactionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String search,
      DateTime? startDate,
      DateTime? endDate,
      RangeValues? amountRange,
      String category,
      List<AccountTransactionCreditDebit> creditDebitList});
}

/// @nodoc
class __$$FilterSimplifiedAccountTransactionsStateImplCopyWithImpl<$Res>
    extends _$FilterSimplifiedAccountTransactionsStateCopyWithImpl<$Res,
        _$FilterSimplifiedAccountTransactionsStateImpl>
    implements _$$FilterSimplifiedAccountTransactionsStateImplCopyWith<$Res> {
  __$$FilterSimplifiedAccountTransactionsStateImplCopyWithImpl(
      _$FilterSimplifiedAccountTransactionsStateImpl _value,
      $Res Function(_$FilterSimplifiedAccountTransactionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? amountRange = freezed,
    Object? category = null,
    Object? creditDebitList = null,
  }) {
    return _then(_$FilterSimplifiedAccountTransactionsStateImpl(
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
      amountRange: freezed == amountRange
          ? _value.amountRange
          : amountRange // ignore: cast_nullable_to_non_nullable
              as RangeValues?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      creditDebitList: null == creditDebitList
          ? _value._creditDebitList
          : creditDebitList // ignore: cast_nullable_to_non_nullable
              as List<AccountTransactionCreditDebit>,
    ));
  }
}

/// @nodoc

class _$FilterSimplifiedAccountTransactionsStateImpl
    implements _FilterSimplifiedAccountTransactionsState {
  const _$FilterSimplifiedAccountTransactionsStateImpl(
      {this.search = '',
      this.startDate,
      this.endDate,
      this.amountRange,
      this.category = 'Entretenimiento',
      final List<AccountTransactionCreditDebit> creditDebitList = const []})
      : _creditDebitList = creditDebitList;

  @override
  @JsonKey()
  final String search;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final RangeValues? amountRange;
  @override
  @JsonKey()
  final String category;
  final List<AccountTransactionCreditDebit> _creditDebitList;
  @override
  @JsonKey()
  List<AccountTransactionCreditDebit> get creditDebitList {
    if (_creditDebitList is EqualUnmodifiableListView) return _creditDebitList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creditDebitList);
  }

  @override
  String toString() {
    return 'FilterSimplifiedAccountTransactionsState(search: $search, startDate: $startDate, endDate: $endDate, amountRange: $amountRange, category: $category, creditDebitList: $creditDebitList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterSimplifiedAccountTransactionsStateImpl &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.amountRange, amountRange) ||
                other.amountRange == amountRange) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._creditDebitList, _creditDebitList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      search,
      startDate,
      endDate,
      amountRange,
      category,
      const DeepCollectionEquality().hash(_creditDebitList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterSimplifiedAccountTransactionsStateImplCopyWith<
          _$FilterSimplifiedAccountTransactionsStateImpl>
      get copyWith =>
          __$$FilterSimplifiedAccountTransactionsStateImplCopyWithImpl<
              _$FilterSimplifiedAccountTransactionsStateImpl>(this, _$identity);
}

abstract class _FilterSimplifiedAccountTransactionsState
    implements FilterSimplifiedAccountTransactionsState {
  const factory _FilterSimplifiedAccountTransactionsState(
          {final String search,
          final DateTime? startDate,
          final DateTime? endDate,
          final RangeValues? amountRange,
          final String category,
          final List<AccountTransactionCreditDebit> creditDebitList}) =
      _$FilterSimplifiedAccountTransactionsStateImpl;

  @override
  String get search;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  RangeValues? get amountRange;
  @override
  String get category;
  @override
  List<AccountTransactionCreditDebit> get creditDebitList;
  @override
  @JsonKey(ignore: true)
  _$$FilterSimplifiedAccountTransactionsStateImplCopyWith<
          _$FilterSimplifiedAccountTransactionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
