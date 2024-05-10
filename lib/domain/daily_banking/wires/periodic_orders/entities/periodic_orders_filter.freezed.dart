// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'periodic_orders_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PeriodicOrdersFilter {
  UniqueId? get id => throw _privateConstructorUsedError;
  List<int>? get accountIds => throw _privateConstructorUsedError;
  String? get beneficiaryAccount => throw _privateConstructorUsedError;
  String? get beneficiaryName => throw _privateConstructorUsedError;
  String? get beneficiaryAddress => throw _privateConstructorUsedError;
  String? get beneficiaryCountryCode2char => throw _privateConstructorUsedError;
  double? get amountFrom => throw _privateConstructorUsedError;
  double? get amountTo => throw _privateConstructorUsedError;
  String? get currencyCode => throw _privateConstructorUsedError;
  DateTime? get startDateFrom => throw _privateConstructorUsedError;
  DateTime? get startDateTo => throw _privateConstructorUsedError;
  DateTime? get endDateFrom => throw _privateConstructorUsedError;
  DateTime? get endDateTo => throw _privateConstructorUsedError;
  PeriodicOrderFrecuencyType? get frecuency =>
      throw _privateConstructorUsedError;
  PeriodicOrderStatusType? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PeriodicOrdersFilterCopyWith<PeriodicOrdersFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodicOrdersFilterCopyWith<$Res> {
  factory $PeriodicOrdersFilterCopyWith(PeriodicOrdersFilter value,
          $Res Function(PeriodicOrdersFilter) then) =
      _$PeriodicOrdersFilterCopyWithImpl<$Res, PeriodicOrdersFilter>;
  @useResult
  $Res call(
      {UniqueId? id,
      List<int>? accountIds,
      String? beneficiaryAccount,
      String? beneficiaryName,
      String? beneficiaryAddress,
      String? beneficiaryCountryCode2char,
      double? amountFrom,
      double? amountTo,
      String? currencyCode,
      DateTime? startDateFrom,
      DateTime? startDateTo,
      DateTime? endDateFrom,
      DateTime? endDateTo,
      PeriodicOrderFrecuencyType? frecuency,
      PeriodicOrderStatusType? status});
}

/// @nodoc
class _$PeriodicOrdersFilterCopyWithImpl<$Res,
        $Val extends PeriodicOrdersFilter>
    implements $PeriodicOrdersFilterCopyWith<$Res> {
  _$PeriodicOrdersFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accountIds = freezed,
    Object? beneficiaryAccount = freezed,
    Object? beneficiaryName = freezed,
    Object? beneficiaryAddress = freezed,
    Object? beneficiaryCountryCode2char = freezed,
    Object? amountFrom = freezed,
    Object? amountTo = freezed,
    Object? currencyCode = freezed,
    Object? startDateFrom = freezed,
    Object? startDateTo = freezed,
    Object? endDateFrom = freezed,
    Object? endDateTo = freezed,
    Object? frecuency = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      accountIds: freezed == accountIds
          ? _value.accountIds
          : accountIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      beneficiaryAccount: freezed == beneficiaryAccount
          ? _value.beneficiaryAccount
          : beneficiaryAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryName: freezed == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryAddress: freezed == beneficiaryAddress
          ? _value.beneficiaryAddress
          : beneficiaryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryCountryCode2char: freezed == beneficiaryCountryCode2char
          ? _value.beneficiaryCountryCode2char
          : beneficiaryCountryCode2char // ignore: cast_nullable_to_non_nullable
              as String?,
      amountFrom: freezed == amountFrom
          ? _value.amountFrom
          : amountFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTo: freezed == amountTo
          ? _value.amountTo
          : amountTo // ignore: cast_nullable_to_non_nullable
              as double?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      startDateFrom: freezed == startDateFrom
          ? _value.startDateFrom
          : startDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDateTo: freezed == startDateTo
          ? _value.startDateTo
          : startDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateFrom: freezed == endDateFrom
          ? _value.endDateFrom
          : endDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateTo: freezed == endDateTo
          ? _value.endDateTo
          : endDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      frecuency: freezed == frecuency
          ? _value.frecuency
          : frecuency // ignore: cast_nullable_to_non_nullable
              as PeriodicOrderFrecuencyType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PeriodicOrderStatusType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeriodicOrdersFilterImplCopyWith<$Res>
    implements $PeriodicOrdersFilterCopyWith<$Res> {
  factory _$$PeriodicOrdersFilterImplCopyWith(_$PeriodicOrdersFilterImpl value,
          $Res Function(_$PeriodicOrdersFilterImpl) then) =
      __$$PeriodicOrdersFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId? id,
      List<int>? accountIds,
      String? beneficiaryAccount,
      String? beneficiaryName,
      String? beneficiaryAddress,
      String? beneficiaryCountryCode2char,
      double? amountFrom,
      double? amountTo,
      String? currencyCode,
      DateTime? startDateFrom,
      DateTime? startDateTo,
      DateTime? endDateFrom,
      DateTime? endDateTo,
      PeriodicOrderFrecuencyType? frecuency,
      PeriodicOrderStatusType? status});
}

/// @nodoc
class __$$PeriodicOrdersFilterImplCopyWithImpl<$Res>
    extends _$PeriodicOrdersFilterCopyWithImpl<$Res, _$PeriodicOrdersFilterImpl>
    implements _$$PeriodicOrdersFilterImplCopyWith<$Res> {
  __$$PeriodicOrdersFilterImplCopyWithImpl(_$PeriodicOrdersFilterImpl _value,
      $Res Function(_$PeriodicOrdersFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accountIds = freezed,
    Object? beneficiaryAccount = freezed,
    Object? beneficiaryName = freezed,
    Object? beneficiaryAddress = freezed,
    Object? beneficiaryCountryCode2char = freezed,
    Object? amountFrom = freezed,
    Object? amountTo = freezed,
    Object? currencyCode = freezed,
    Object? startDateFrom = freezed,
    Object? startDateTo = freezed,
    Object? endDateFrom = freezed,
    Object? endDateTo = freezed,
    Object? frecuency = freezed,
    Object? status = freezed,
  }) {
    return _then(_$PeriodicOrdersFilterImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      accountIds: freezed == accountIds
          ? _value._accountIds
          : accountIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      beneficiaryAccount: freezed == beneficiaryAccount
          ? _value.beneficiaryAccount
          : beneficiaryAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryName: freezed == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryAddress: freezed == beneficiaryAddress
          ? _value.beneficiaryAddress
          : beneficiaryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryCountryCode2char: freezed == beneficiaryCountryCode2char
          ? _value.beneficiaryCountryCode2char
          : beneficiaryCountryCode2char // ignore: cast_nullable_to_non_nullable
              as String?,
      amountFrom: freezed == amountFrom
          ? _value.amountFrom
          : amountFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTo: freezed == amountTo
          ? _value.amountTo
          : amountTo // ignore: cast_nullable_to_non_nullable
              as double?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      startDateFrom: freezed == startDateFrom
          ? _value.startDateFrom
          : startDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDateTo: freezed == startDateTo
          ? _value.startDateTo
          : startDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateFrom: freezed == endDateFrom
          ? _value.endDateFrom
          : endDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateTo: freezed == endDateTo
          ? _value.endDateTo
          : endDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      frecuency: freezed == frecuency
          ? _value.frecuency
          : frecuency // ignore: cast_nullable_to_non_nullable
              as PeriodicOrderFrecuencyType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PeriodicOrderStatusType?,
    ));
  }
}

/// @nodoc

class _$PeriodicOrdersFilterImpl implements _PeriodicOrdersFilter {
  const _$PeriodicOrdersFilterImpl(
      {this.id,
      final List<int>? accountIds,
      this.beneficiaryAccount,
      this.beneficiaryName,
      this.beneficiaryAddress,
      this.beneficiaryCountryCode2char,
      this.amountFrom,
      this.amountTo,
      this.currencyCode,
      this.startDateFrom,
      this.startDateTo,
      this.endDateFrom,
      this.endDateTo,
      this.frecuency,
      this.status})
      : _accountIds = accountIds;

  @override
  final UniqueId? id;
  final List<int>? _accountIds;
  @override
  List<int>? get accountIds {
    final value = _accountIds;
    if (value == null) return null;
    if (_accountIds is EqualUnmodifiableListView) return _accountIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? beneficiaryAccount;
  @override
  final String? beneficiaryName;
  @override
  final String? beneficiaryAddress;
  @override
  final String? beneficiaryCountryCode2char;
  @override
  final double? amountFrom;
  @override
  final double? amountTo;
  @override
  final String? currencyCode;
  @override
  final DateTime? startDateFrom;
  @override
  final DateTime? startDateTo;
  @override
  final DateTime? endDateFrom;
  @override
  final DateTime? endDateTo;
  @override
  final PeriodicOrderFrecuencyType? frecuency;
  @override
  final PeriodicOrderStatusType? status;

  @override
  String toString() {
    return 'PeriodicOrdersFilter(id: $id, accountIds: $accountIds, beneficiaryAccount: $beneficiaryAccount, beneficiaryName: $beneficiaryName, beneficiaryAddress: $beneficiaryAddress, beneficiaryCountryCode2char: $beneficiaryCountryCode2char, amountFrom: $amountFrom, amountTo: $amountTo, currencyCode: $currencyCode, startDateFrom: $startDateFrom, startDateTo: $startDateTo, endDateFrom: $endDateFrom, endDateTo: $endDateTo, frecuency: $frecuency, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodicOrdersFilterImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._accountIds, _accountIds) &&
            (identical(other.beneficiaryAccount, beneficiaryAccount) ||
                other.beneficiaryAccount == beneficiaryAccount) &&
            (identical(other.beneficiaryName, beneficiaryName) ||
                other.beneficiaryName == beneficiaryName) &&
            (identical(other.beneficiaryAddress, beneficiaryAddress) ||
                other.beneficiaryAddress == beneficiaryAddress) &&
            (identical(other.beneficiaryCountryCode2char,
                    beneficiaryCountryCode2char) ||
                other.beneficiaryCountryCode2char ==
                    beneficiaryCountryCode2char) &&
            (identical(other.amountFrom, amountFrom) ||
                other.amountFrom == amountFrom) &&
            (identical(other.amountTo, amountTo) ||
                other.amountTo == amountTo) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.startDateFrom, startDateFrom) ||
                other.startDateFrom == startDateFrom) &&
            (identical(other.startDateTo, startDateTo) ||
                other.startDateTo == startDateTo) &&
            (identical(other.endDateFrom, endDateFrom) ||
                other.endDateFrom == endDateFrom) &&
            (identical(other.endDateTo, endDateTo) ||
                other.endDateTo == endDateTo) &&
            (identical(other.frecuency, frecuency) ||
                other.frecuency == frecuency) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_accountIds),
      beneficiaryAccount,
      beneficiaryName,
      beneficiaryAddress,
      beneficiaryCountryCode2char,
      amountFrom,
      amountTo,
      currencyCode,
      startDateFrom,
      startDateTo,
      endDateFrom,
      endDateTo,
      frecuency,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodicOrdersFilterImplCopyWith<_$PeriodicOrdersFilterImpl>
      get copyWith =>
          __$$PeriodicOrdersFilterImplCopyWithImpl<_$PeriodicOrdersFilterImpl>(
              this, _$identity);
}

abstract class _PeriodicOrdersFilter implements PeriodicOrdersFilter {
  const factory _PeriodicOrdersFilter(
      {final UniqueId? id,
      final List<int>? accountIds,
      final String? beneficiaryAccount,
      final String? beneficiaryName,
      final String? beneficiaryAddress,
      final String? beneficiaryCountryCode2char,
      final double? amountFrom,
      final double? amountTo,
      final String? currencyCode,
      final DateTime? startDateFrom,
      final DateTime? startDateTo,
      final DateTime? endDateFrom,
      final DateTime? endDateTo,
      final PeriodicOrderFrecuencyType? frecuency,
      final PeriodicOrderStatusType? status}) = _$PeriodicOrdersFilterImpl;

  @override
  UniqueId? get id;
  @override
  List<int>? get accountIds;
  @override
  String? get beneficiaryAccount;
  @override
  String? get beneficiaryName;
  @override
  String? get beneficiaryAddress;
  @override
  String? get beneficiaryCountryCode2char;
  @override
  double? get amountFrom;
  @override
  double? get amountTo;
  @override
  String? get currencyCode;
  @override
  DateTime? get startDateFrom;
  @override
  DateTime? get startDateTo;
  @override
  DateTime? get endDateFrom;
  @override
  DateTime? get endDateTo;
  @override
  PeriodicOrderFrecuencyType? get frecuency;
  @override
  PeriodicOrderStatusType? get status;
  @override
  @JsonKey(ignore: true)
  _$$PeriodicOrdersFilterImplCopyWith<_$PeriodicOrdersFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
