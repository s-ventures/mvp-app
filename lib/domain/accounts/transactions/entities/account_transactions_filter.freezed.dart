// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_transactions_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountTransactionsFilter {
  List<UniqueId> get accountIds => throw _privateConstructorUsedError;
  OperationType get operationType => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get dateFrom => throw _privateConstructorUsedError;
  DateTime? get dateTo => throw _privateConstructorUsedError;
  double? get amountFrom => throw _privateConstructorUsedError;
  double? get amountTo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountTransactionsFilterCopyWith<AccountTransactionsFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountTransactionsFilterCopyWith<$Res> {
  factory $AccountTransactionsFilterCopyWith(AccountTransactionsFilter value,
          $Res Function(AccountTransactionsFilter) then) =
      _$AccountTransactionsFilterCopyWithImpl<$Res, AccountTransactionsFilter>;
  @useResult
  $Res call(
      {List<UniqueId> accountIds,
      OperationType operationType,
      String? description,
      DateTime? dateFrom,
      DateTime? dateTo,
      double? amountFrom,
      double? amountTo});
}

/// @nodoc
class _$AccountTransactionsFilterCopyWithImpl<$Res,
        $Val extends AccountTransactionsFilter>
    implements $AccountTransactionsFilterCopyWith<$Res> {
  _$AccountTransactionsFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountIds = null,
    Object? operationType = null,
    Object? description = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? amountFrom = freezed,
    Object? amountTo = freezed,
  }) {
    return _then(_value.copyWith(
      accountIds: null == accountIds
          ? _value.accountIds
          : accountIds // ignore: cast_nullable_to_non_nullable
              as List<UniqueId>,
      operationType: null == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as OperationType,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dateFrom: freezed == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTo: freezed == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amountFrom: freezed == amountFrom
          ? _value.amountFrom
          : amountFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTo: freezed == amountTo
          ? _value.amountTo
          : amountTo // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountTransactionsFilterImplCopyWith<$Res>
    implements $AccountTransactionsFilterCopyWith<$Res> {
  factory _$$AccountTransactionsFilterImplCopyWith(
          _$AccountTransactionsFilterImpl value,
          $Res Function(_$AccountTransactionsFilterImpl) then) =
      __$$AccountTransactionsFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UniqueId> accountIds,
      OperationType operationType,
      String? description,
      DateTime? dateFrom,
      DateTime? dateTo,
      double? amountFrom,
      double? amountTo});
}

/// @nodoc
class __$$AccountTransactionsFilterImplCopyWithImpl<$Res>
    extends _$AccountTransactionsFilterCopyWithImpl<$Res,
        _$AccountTransactionsFilterImpl>
    implements _$$AccountTransactionsFilterImplCopyWith<$Res> {
  __$$AccountTransactionsFilterImplCopyWithImpl(
      _$AccountTransactionsFilterImpl _value,
      $Res Function(_$AccountTransactionsFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountIds = null,
    Object? operationType = null,
    Object? description = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? amountFrom = freezed,
    Object? amountTo = freezed,
  }) {
    return _then(_$AccountTransactionsFilterImpl(
      accountIds: null == accountIds
          ? _value._accountIds
          : accountIds // ignore: cast_nullable_to_non_nullable
              as List<UniqueId>,
      operationType: null == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as OperationType,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dateFrom: freezed == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTo: freezed == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amountFrom: freezed == amountFrom
          ? _value.amountFrom
          : amountFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTo: freezed == amountTo
          ? _value.amountTo
          : amountTo // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$AccountTransactionsFilterImpl implements _AccountTransactionsFilter {
  const _$AccountTransactionsFilterImpl(
      {required final List<UniqueId> accountIds,
      required this.operationType,
      this.description,
      this.dateFrom,
      this.dateTo,
      this.amountFrom,
      this.amountTo})
      : _accountIds = accountIds;

  final List<UniqueId> _accountIds;
  @override
  List<UniqueId> get accountIds {
    if (_accountIds is EqualUnmodifiableListView) return _accountIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountIds);
  }

  @override
  final OperationType operationType;
  @override
  final String? description;
  @override
  final DateTime? dateFrom;
  @override
  final DateTime? dateTo;
  @override
  final double? amountFrom;
  @override
  final double? amountTo;

  @override
  String toString() {
    return 'AccountTransactionsFilter(accountIds: $accountIds, operationType: $operationType, description: $description, dateFrom: $dateFrom, dateTo: $dateTo, amountFrom: $amountFrom, amountTo: $amountTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountTransactionsFilterImpl &&
            const DeepCollectionEquality()
                .equals(other._accountIds, _accountIds) &&
            (identical(other.operationType, operationType) ||
                other.operationType == operationType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.amountFrom, amountFrom) ||
                other.amountFrom == amountFrom) &&
            (identical(other.amountTo, amountTo) ||
                other.amountTo == amountTo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accountIds),
      operationType,
      description,
      dateFrom,
      dateTo,
      amountFrom,
      amountTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountTransactionsFilterImplCopyWith<_$AccountTransactionsFilterImpl>
      get copyWith => __$$AccountTransactionsFilterImplCopyWithImpl<
          _$AccountTransactionsFilterImpl>(this, _$identity);
}

abstract class _AccountTransactionsFilter implements AccountTransactionsFilter {
  const factory _AccountTransactionsFilter(
      {required final List<UniqueId> accountIds,
      required final OperationType operationType,
      final String? description,
      final DateTime? dateFrom,
      final DateTime? dateTo,
      final double? amountFrom,
      final double? amountTo}) = _$AccountTransactionsFilterImpl;

  @override
  List<UniqueId> get accountIds;
  @override
  OperationType get operationType;
  @override
  String? get description;
  @override
  DateTime? get dateFrom;
  @override
  DateTime? get dateTo;
  @override
  double? get amountFrom;
  @override
  double? get amountTo;
  @override
  @JsonKey(ignore: true)
  _$$AccountTransactionsFilterImplCopyWith<_$AccountTransactionsFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
