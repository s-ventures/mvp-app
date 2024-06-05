// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_expense_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedExpenseState {
  AsyncValue<DetailedExpense> get expense => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedExpenseStateCopyWith<DetailedExpenseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedExpenseStateCopyWith<$Res> {
  factory $DetailedExpenseStateCopyWith(DetailedExpenseState value,
          $Res Function(DetailedExpenseState) then) =
      _$DetailedExpenseStateCopyWithImpl<$Res, DetailedExpenseState>;
  @useResult
  $Res call({AsyncValue<DetailedExpense> expense});
}

/// @nodoc
class _$DetailedExpenseStateCopyWithImpl<$Res,
        $Val extends DetailedExpenseState>
    implements $DetailedExpenseStateCopyWith<$Res> {
  _$DetailedExpenseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
  }) {
    return _then(_value.copyWith(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedExpense>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedExpenseStateImplCopyWith<$Res>
    implements $DetailedExpenseStateCopyWith<$Res> {
  factory _$$DetailedExpenseStateImplCopyWith(_$DetailedExpenseStateImpl value,
          $Res Function(_$DetailedExpenseStateImpl) then) =
      __$$DetailedExpenseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<DetailedExpense> expense});
}

/// @nodoc
class __$$DetailedExpenseStateImplCopyWithImpl<$Res>
    extends _$DetailedExpenseStateCopyWithImpl<$Res, _$DetailedExpenseStateImpl>
    implements _$$DetailedExpenseStateImplCopyWith<$Res> {
  __$$DetailedExpenseStateImplCopyWithImpl(_$DetailedExpenseStateImpl _value,
      $Res Function(_$DetailedExpenseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
  }) {
    return _then(_$DetailedExpenseStateImpl(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedExpense>,
    ));
  }
}

/// @nodoc

class _$DetailedExpenseStateImpl implements _DetailedExpenseState {
  const _$DetailedExpenseStateImpl(
      {this.expense = const AsyncLoading<DetailedExpense>()});

  @override
  @JsonKey()
  final AsyncValue<DetailedExpense> expense;

  @override
  String toString() {
    return 'DetailedExpenseState(expense: $expense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedExpenseStateImpl &&
            (identical(other.expense, expense) || other.expense == expense));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expense);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedExpenseStateImplCopyWith<_$DetailedExpenseStateImpl>
      get copyWith =>
          __$$DetailedExpenseStateImplCopyWithImpl<_$DetailedExpenseStateImpl>(
              this, _$identity);
}

abstract class _DetailedExpenseState implements DetailedExpenseState {
  const factory _DetailedExpenseState(
      {final AsyncValue<DetailedExpense> expense}) = _$DetailedExpenseStateImpl;

  @override
  AsyncValue<DetailedExpense> get expense;
  @override
  @JsonKey(ignore: true)
  _$$DetailedExpenseStateImplCopyWith<_$DetailedExpenseStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
