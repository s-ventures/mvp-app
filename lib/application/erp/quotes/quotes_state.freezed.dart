// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuotesState {
  AsyncValue<List<Quotation>> get quotes => throw _privateConstructorUsedError;
  AsyncValue<List<Quotation>> get pendingQuotes =>
      throw _privateConstructorUsedError; // TODO(georgeta): Cambiar fechas a dueDate cuando Bfmf las añada
  DateTime? get createdDateFrom => throw _privateConstructorUsedError;
  DateTime? get createdDateTo => throw _privateConstructorUsedError;
  double? get totalAmountFrom => throw _privateConstructorUsedError;
  double? get totalAmountTo => throw _privateConstructorUsedError;
  QuotationStatus? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuotesStateCopyWith<QuotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotesStateCopyWith<$Res> {
  factory $QuotesStateCopyWith(
          QuotesState value, $Res Function(QuotesState) then) =
      _$QuotesStateCopyWithImpl<$Res, QuotesState>;
  @useResult
  $Res call(
      {AsyncValue<List<Quotation>> quotes,
      AsyncValue<List<Quotation>> pendingQuotes,
      DateTime? createdDateFrom,
      DateTime? createdDateTo,
      double? totalAmountFrom,
      double? totalAmountTo,
      QuotationStatus? status});
}

/// @nodoc
class _$QuotesStateCopyWithImpl<$Res, $Val extends QuotesState>
    implements $QuotesStateCopyWith<$Res> {
  _$QuotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotes = null,
    Object? pendingQuotes = null,
    Object? createdDateFrom = freezed,
    Object? createdDateTo = freezed,
    Object? totalAmountFrom = freezed,
    Object? totalAmountTo = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      quotes: null == quotes
          ? _value.quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Quotation>>,
      pendingQuotes: null == pendingQuotes
          ? _value.pendingQuotes
          : pendingQuotes // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Quotation>>,
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
              as QuotationStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuotesStateImplCopyWith<$Res>
    implements $QuotesStateCopyWith<$Res> {
  factory _$$QuotesStateImplCopyWith(
          _$QuotesStateImpl value, $Res Function(_$QuotesStateImpl) then) =
      __$$QuotesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<Quotation>> quotes,
      AsyncValue<List<Quotation>> pendingQuotes,
      DateTime? createdDateFrom,
      DateTime? createdDateTo,
      double? totalAmountFrom,
      double? totalAmountTo,
      QuotationStatus? status});
}

/// @nodoc
class __$$QuotesStateImplCopyWithImpl<$Res>
    extends _$QuotesStateCopyWithImpl<$Res, _$QuotesStateImpl>
    implements _$$QuotesStateImplCopyWith<$Res> {
  __$$QuotesStateImplCopyWithImpl(
      _$QuotesStateImpl _value, $Res Function(_$QuotesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotes = null,
    Object? pendingQuotes = null,
    Object? createdDateFrom = freezed,
    Object? createdDateTo = freezed,
    Object? totalAmountFrom = freezed,
    Object? totalAmountTo = freezed,
    Object? status = freezed,
  }) {
    return _then(_$QuotesStateImpl(
      quotes: null == quotes
          ? _value.quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Quotation>>,
      pendingQuotes: null == pendingQuotes
          ? _value.pendingQuotes
          : pendingQuotes // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Quotation>>,
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
              as QuotationStatus?,
    ));
  }
}

/// @nodoc

class _$QuotesStateImpl implements _QuotesState {
  const _$QuotesStateImpl(
      {this.quotes = const AsyncLoading<List<Quotation>>(),
      this.pendingQuotes = const AsyncLoading<List<Quotation>>(),
      this.createdDateFrom,
      this.createdDateTo,
      this.totalAmountFrom,
      this.totalAmountTo,
      this.status});

  @override
  @JsonKey()
  final AsyncValue<List<Quotation>> quotes;
  @override
  @JsonKey()
  final AsyncValue<List<Quotation>> pendingQuotes;
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
  final QuotationStatus? status;

  @override
  String toString() {
    return 'QuotesState(quotes: $quotes, pendingQuotes: $pendingQuotes, createdDateFrom: $createdDateFrom, createdDateTo: $createdDateTo, totalAmountFrom: $totalAmountFrom, totalAmountTo: $totalAmountTo, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotesStateImpl &&
            (identical(other.quotes, quotes) || other.quotes == quotes) &&
            (identical(other.pendingQuotes, pendingQuotes) ||
                other.pendingQuotes == pendingQuotes) &&
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
  int get hashCode => Object.hash(runtimeType, quotes, pendingQuotes,
      createdDateFrom, createdDateTo, totalAmountFrom, totalAmountTo, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotesStateImplCopyWith<_$QuotesStateImpl> get copyWith =>
      __$$QuotesStateImplCopyWithImpl<_$QuotesStateImpl>(this, _$identity);
}

abstract class _QuotesState implements QuotesState {
  const factory _QuotesState(
      {final AsyncValue<List<Quotation>> quotes,
      final AsyncValue<List<Quotation>> pendingQuotes,
      final DateTime? createdDateFrom,
      final DateTime? createdDateTo,
      final double? totalAmountFrom,
      final double? totalAmountTo,
      final QuotationStatus? status}) = _$QuotesStateImpl;

  @override
  AsyncValue<List<Quotation>> get quotes;
  @override
  AsyncValue<List<Quotation>> get pendingQuotes;
  @override // TODO(georgeta): Cambiar fechas a dueDate cuando Bfmf las añada
  DateTime? get createdDateFrom;
  @override
  DateTime? get createdDateTo;
  @override
  double? get totalAmountFrom;
  @override
  double? get totalAmountTo;
  @override
  QuotationStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$QuotesStateImplCopyWith<_$QuotesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
