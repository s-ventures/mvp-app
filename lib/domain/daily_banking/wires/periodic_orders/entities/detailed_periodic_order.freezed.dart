// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_periodic_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedPeriodicOrder {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get accountId => throw _privateConstructorUsedError;
  UniqueId get customerId => throw _privateConstructorUsedError;
  String get beneficiaryAccount => throw _privateConstructorUsedError;
  String get beneficiaryName => throw _privateConstructorUsedError;
  String? get beneficiaryAddress => throw _privateConstructorUsedError;
  String get beneficiaryCountryCode2char => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  PeriodicOrderFrecuencyType get frecuency => throw _privateConstructorUsedError;
  PeriodicOrderStatusType get status => throw _privateConstructorUsedError;
  String get baasTransferId => throw _privateConstructorUsedError;
  String? get concept => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedPeriodicOrderCopyWith<DetailedPeriodicOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedPeriodicOrderCopyWith<$Res> {
  factory $DetailedPeriodicOrderCopyWith(
          DetailedPeriodicOrder value, $Res Function(DetailedPeriodicOrder) then) =
      _$DetailedPeriodicOrderCopyWithImpl<$Res, DetailedPeriodicOrder>;
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId accountId,
      UniqueId customerId,
      String beneficiaryAccount,
      String beneficiaryName,
      String? beneficiaryAddress,
      String beneficiaryCountryCode2char,
      double amount,
      String currencyCode,
      DateTime startDate,
      DateTime? endDate,
      PeriodicOrderFrecuencyType frecuency,
      PeriodicOrderStatusType status,
      String baasTransferId,
      String? concept});
}

/// @nodoc
class _$DetailedPeriodicOrderCopyWithImpl<$Res, $Val extends DetailedPeriodicOrder>
    implements $DetailedPeriodicOrderCopyWith<$Res> {
  _$DetailedPeriodicOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? customerId = null,
    Object? beneficiaryAccount = null,
    Object? beneficiaryName = null,
    Object? beneficiaryAddress = freezed,
    Object? beneficiaryCountryCode2char = null,
    Object? amount = null,
    Object? currencyCode = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? frecuency = null,
    Object? status = null,
    Object? baasTransferId = null,
    Object? concept = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      beneficiaryAccount: null == beneficiaryAccount
          ? _value.beneficiaryAccount
          : beneficiaryAccount // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiaryAddress: freezed == beneficiaryAddress
          ? _value.beneficiaryAddress
          : beneficiaryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryCountryCode2char: null == beneficiaryCountryCode2char
          ? _value.beneficiaryCountryCode2char
          : beneficiaryCountryCode2char // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      frecuency: null == frecuency
          ? _value.frecuency
          : frecuency // ignore: cast_nullable_to_non_nullable
              as PeriodicOrderFrecuencyType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PeriodicOrderStatusType,
      baasTransferId: null == baasTransferId
          ? _value.baasTransferId
          : baasTransferId // ignore: cast_nullable_to_non_nullable
              as String,
      concept: freezed == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedPeriodicOrderImplCopyWith<$Res>
    implements $DetailedPeriodicOrderCopyWith<$Res> {
  factory _$$DetailedPeriodicOrderImplCopyWith(
          _$DetailedPeriodicOrderImpl value, $Res Function(_$DetailedPeriodicOrderImpl) then) =
      __$$DetailedPeriodicOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId accountId,
      UniqueId customerId,
      String beneficiaryAccount,
      String beneficiaryName,
      String? beneficiaryAddress,
      String beneficiaryCountryCode2char,
      double amount,
      String currencyCode,
      DateTime startDate,
      DateTime? endDate,
      PeriodicOrderFrecuencyType frecuency,
      PeriodicOrderStatusType status,
      String baasTransferId,
      String? concept});
}

/// @nodoc
class __$$DetailedPeriodicOrderImplCopyWithImpl<$Res>
    extends _$DetailedPeriodicOrderCopyWithImpl<$Res, _$DetailedPeriodicOrderImpl>
    implements _$$DetailedPeriodicOrderImplCopyWith<$Res> {
  __$$DetailedPeriodicOrderImplCopyWithImpl(
      _$DetailedPeriodicOrderImpl _value, $Res Function(_$DetailedPeriodicOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? customerId = null,
    Object? beneficiaryAccount = null,
    Object? beneficiaryName = null,
    Object? beneficiaryAddress = freezed,
    Object? beneficiaryCountryCode2char = null,
    Object? amount = null,
    Object? currencyCode = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? frecuency = null,
    Object? status = null,
    Object? baasTransferId = null,
    Object? concept = freezed,
  }) {
    return _then(_$DetailedPeriodicOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      beneficiaryAccount: null == beneficiaryAccount
          ? _value.beneficiaryAccount
          : beneficiaryAccount // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiaryName: null == beneficiaryName
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiaryAddress: freezed == beneficiaryAddress
          ? _value.beneficiaryAddress
          : beneficiaryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryCountryCode2char: null == beneficiaryCountryCode2char
          ? _value.beneficiaryCountryCode2char
          : beneficiaryCountryCode2char // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      frecuency: null == frecuency
          ? _value.frecuency
          : frecuency // ignore: cast_nullable_to_non_nullable
              as PeriodicOrderFrecuencyType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PeriodicOrderStatusType,
      baasTransferId: null == baasTransferId
          ? _value.baasTransferId
          : baasTransferId // ignore: cast_nullable_to_non_nullable
              as String,
      concept: freezed == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DetailedPeriodicOrderImpl implements _DetailedPeriodicOrder {
  const _$DetailedPeriodicOrderImpl(
      {required this.id,
      required this.accountId,
      required this.customerId,
      required this.beneficiaryAccount,
      required this.beneficiaryName,
      required this.beneficiaryAddress,
      required this.beneficiaryCountryCode2char,
      required this.amount,
      required this.currencyCode,
      required this.startDate,
      required this.endDate,
      required this.frecuency,
      required this.status,
      required this.baasTransferId,
      required this.concept});

  @override
  final UniqueId id;
  @override
  final UniqueId accountId;
  @override
  final UniqueId customerId;
  @override
  final String beneficiaryAccount;
  @override
  final String beneficiaryName;
  @override
  final String? beneficiaryAddress;
  @override
  final String beneficiaryCountryCode2char;
  @override
  final double amount;
  @override
  final String currencyCode;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  final PeriodicOrderFrecuencyType frecuency;
  @override
  final PeriodicOrderStatusType status;
  @override
  final String baasTransferId;
  @override
  final String? concept;

  @override
  String toString() {
    return 'DetailedPeriodicOrder(id: $id, accountId: $accountId, customerId: $customerId, beneficiaryAccount: $beneficiaryAccount, beneficiaryName: $beneficiaryName, beneficiaryAddress: $beneficiaryAddress, beneficiaryCountryCode2char: $beneficiaryCountryCode2char, amount: $amount, currencyCode: $currencyCode, startDate: $startDate, endDate: $endDate, frecuency: $frecuency, status: $status, baasTransferId: $baasTransferId, concept: $concept)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedPeriodicOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) || other.accountId == accountId) &&
            (identical(other.customerId, customerId) || other.customerId == customerId) &&
            (identical(other.beneficiaryAccount, beneficiaryAccount) ||
                other.beneficiaryAccount == beneficiaryAccount) &&
            (identical(other.beneficiaryName, beneficiaryName) ||
                other.beneficiaryName == beneficiaryName) &&
            (identical(other.beneficiaryAddress, beneficiaryAddress) ||
                other.beneficiaryAddress == beneficiaryAddress) &&
            (identical(other.beneficiaryCountryCode2char, beneficiaryCountryCode2char) ||
                other.beneficiaryCountryCode2char == beneficiaryCountryCode2char) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode) &&
            (identical(other.startDate, startDate) || other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.frecuency, frecuency) || other.frecuency == frecuency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.baasTransferId, baasTransferId) ||
                other.baasTransferId == baasTransferId) &&
            (identical(other.concept, concept) || other.concept == concept));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      accountId,
      customerId,
      beneficiaryAccount,
      beneficiaryName,
      beneficiaryAddress,
      beneficiaryCountryCode2char,
      amount,
      currencyCode,
      startDate,
      endDate,
      frecuency,
      status,
      baasTransferId,
      concept);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedPeriodicOrderImplCopyWith<_$DetailedPeriodicOrderImpl> get copyWith =>
      __$$DetailedPeriodicOrderImplCopyWithImpl<_$DetailedPeriodicOrderImpl>(this, _$identity);
}

abstract class _DetailedPeriodicOrder implements DetailedPeriodicOrder {
  const factory _DetailedPeriodicOrder(
      {required final UniqueId id,
      required final UniqueId accountId,
      required final UniqueId customerId,
      required final String beneficiaryAccount,
      required final String beneficiaryName,
      required final String? beneficiaryAddress,
      required final String beneficiaryCountryCode2char,
      required final double amount,
      required final String currencyCode,
      required final DateTime startDate,
      required final DateTime? endDate,
      required final PeriodicOrderFrecuencyType frecuency,
      required final PeriodicOrderStatusType status,
      required final String baasTransferId,
      required final String? concept}) = _$DetailedPeriodicOrderImpl;

  @override
  UniqueId get id;
  @override
  UniqueId get accountId;
  @override
  UniqueId get customerId;
  @override
  String get beneficiaryAccount;
  @override
  String get beneficiaryName;
  @override
  String? get beneficiaryAddress;
  @override
  String get beneficiaryCountryCode2char;
  @override
  double get amount;
  @override
  String get currencyCode;
  @override
  DateTime get startDate;
  @override
  DateTime? get endDate;
  @override
  PeriodicOrderFrecuencyType get frecuency;
  @override
  PeriodicOrderStatusType get status;
  @override
  String get baasTransferId;
  @override
  String? get concept;
  @override
  @JsonKey(ignore: true)
  _$$DetailedPeriodicOrderImplCopyWith<_$DetailedPeriodicOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
