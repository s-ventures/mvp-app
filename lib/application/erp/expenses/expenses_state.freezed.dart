// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpensesState {
  AsyncValue<List<Expense>> get expenses => throw _privateConstructorUsedError;
  AsyncValue<List<Expense>> get pendingExpenses =>
      throw _privateConstructorUsedError; // TODO(georgeta): Cambiar fechas a dueDate cuando Bfmf las añada
  DateTime? get createdDateFrom => throw _privateConstructorUsedError;
  DateTime? get createdDateTo => throw _privateConstructorUsedError;
  double? get totalAmountFrom => throw _privateConstructorUsedError;
  double? get totalAmountTo => throw _privateConstructorUsedError;
  ExpenseStatus? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpensesStateCopyWith<ExpensesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesStateCopyWith<$Res> {
  factory $ExpensesStateCopyWith(
          ExpensesState value, $Res Function(ExpensesState) then) =
      _$ExpensesStateCopyWithImpl<$Res, ExpensesState>;
  @useResult
  $Res call(
      {AsyncValue<List<Expense>> expenses,
      AsyncValue<List<Expense>> pendingExpenses,
      DateTime? createdDateFrom,
      DateTime? createdDateTo,
      double? totalAmountFrom,
      double? totalAmountTo,
      ExpenseStatus? status});
}

/// @nodoc
class _$ExpensesStateCopyWithImpl<$Res, $Val extends ExpensesState>
    implements $ExpensesStateCopyWith<$Res> {
  _$ExpensesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
    Object? pendingExpenses = null,
    Object? createdDateFrom = freezed,
    Object? createdDateTo = freezed,
    Object? totalAmountFrom = freezed,
    Object? totalAmountTo = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Expense>>,
      pendingExpenses: null == pendingExpenses
          ? _value.pendingExpenses
          : pendingExpenses // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Expense>>,
      createdDateFrom: freezed == createdDateFrom
          ? _value.createdDateFrom
          : createdDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDateTo: freezed == createdDateTo
          ? _value.createdDateTo
          : createdDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmountFrom: freezed == totalAmountFrom
          ? _value.totalAmountFrom
          : totalAmountFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountTo: freezed == totalAmountTo
          ? _value.totalAmountTo
          : totalAmountTo // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpensesStateImplCopyWith<$Res>
    implements $ExpensesStateCopyWith<$Res> {
  factory _$$ExpensesStateImplCopyWith(
          _$ExpensesStateImpl value, $Res Function(_$ExpensesStateImpl) then) =
      __$$ExpensesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<Expense>> expenses,
      AsyncValue<List<Expense>> pendingExpenses,
      DateTime? createdDateFrom,
      DateTime? createdDateTo,
      double? totalAmountFrom,
      double? totalAmountTo,
      ExpenseStatus? status});
}

/// @nodoc
class __$$ExpensesStateImplCopyWithImpl<$Res>
    extends _$ExpensesStateCopyWithImpl<$Res, _$ExpensesStateImpl>
    implements _$$ExpensesStateImplCopyWith<$Res> {
  __$$ExpensesStateImplCopyWithImpl(
      _$ExpensesStateImpl _value, $Res Function(_$ExpensesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
    Object? pendingExpenses = null,
    Object? createdDateFrom = freezed,
    Object? createdDateTo = freezed,
    Object? totalAmountFrom = freezed,
    Object? totalAmountTo = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ExpensesStateImpl(
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Expense>>,
      pendingExpenses: null == pendingExpenses
          ? _value.pendingExpenses
          : pendingExpenses // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Expense>>,
      createdDateFrom: freezed == createdDateFrom
          ? _value.createdDateFrom
          : createdDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDateTo: freezed == createdDateTo
          ? _value.createdDateTo
          : createdDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmountFrom: freezed == totalAmountFrom
          ? _value.totalAmountFrom
          : totalAmountFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountTo: freezed == totalAmountTo
          ? _value.totalAmountTo
          : totalAmountTo // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatus?,
    ));
  }
}

/// @nodoc

class _$ExpensesStateImpl implements _ExpensesState {
  const _$ExpensesStateImpl(
      {this.expenses = const AsyncLoading<List<Expense>>(),
      this.pendingExpenses = const AsyncLoading<List<Expense>>(),
      this.createdDateFrom,
      this.createdDateTo,
      this.totalAmountFrom,
      this.totalAmountTo,
      this.status});

  @override
  @JsonKey()
  final AsyncValue<List<Expense>> expenses;
  @override
  @JsonKey()
  final AsyncValue<List<Expense>> pendingExpenses;
// TODO(georgeta): Cambiar fechas a dueDate cuando Bfmf las añada
  @override
  final DateTime? createdDateFrom;
  @override
  final DateTime? createdDateTo;
  @override
  final double? totalAmountFrom;
  @override
  final double? totalAmountTo;
  @override
  final ExpenseStatus? status;

  @override
  String toString() {
    return 'ExpensesState(expenses: $expenses, pendingExpenses: $pendingExpenses, createdDateFrom: $createdDateFrom, createdDateTo: $createdDateTo, totalAmountFrom: $totalAmountFrom, totalAmountTo: $totalAmountTo, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpensesStateImpl &&
            (identical(other.expenses, expenses) ||
                other.expenses == expenses) &&
            (identical(other.pendingExpenses, pendingExpenses) ||
                other.pendingExpenses == pendingExpenses) &&
            (identical(other.createdDateFrom, createdDateFrom) ||
                other.createdDateFrom == createdDateFrom) &&
            (identical(other.createdDateTo, createdDateTo) ||
                other.createdDateTo == createdDateTo) &&
            (identical(other.totalAmountFrom, totalAmountFrom) ||
                other.totalAmountFrom == totalAmountFrom) &&
            (identical(other.totalAmountTo, totalAmountTo) ||
                other.totalAmountTo == totalAmountTo) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expenses, pendingExpenses,
      createdDateFrom, createdDateTo, totalAmountFrom, totalAmountTo, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpensesStateImplCopyWith<_$ExpensesStateImpl> get copyWith =>
      __$$ExpensesStateImplCopyWithImpl<_$ExpensesStateImpl>(this, _$identity);
}

abstract class _ExpensesState implements ExpensesState {
  const factory _ExpensesState(
      {final AsyncValue<List<Expense>> expenses,
      final AsyncValue<List<Expense>> pendingExpenses,
      final DateTime? createdDateFrom,
      final DateTime? createdDateTo,
      final double? totalAmountFrom,
      final double? totalAmountTo,
      final ExpenseStatus? status}) = _$ExpensesStateImpl;

  @override
  AsyncValue<List<Expense>> get expenses;
  @override
  AsyncValue<List<Expense>> get pendingExpenses;
  @override // TODO(georgeta): Cambiar fechas a dueDate cuando Bfmf las añada
  DateTime? get createdDateFrom;
  @override
  DateTime? get createdDateTo;
  @override
  double? get totalAmountFrom;
  @override
  double? get totalAmountTo;
  @override
  ExpenseStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$ExpensesStateImplCopyWith<_$ExpensesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
