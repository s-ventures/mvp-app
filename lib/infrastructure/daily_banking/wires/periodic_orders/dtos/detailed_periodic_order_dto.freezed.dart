// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_periodic_order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailedPeriodicOrderDto _$DetailedPeriodicOrderDtoFromJson(
    Map<String, dynamic> json) {
  return _DetailedPeriodicOrderDto.fromJson(json);
}

/// @nodoc
mixin _$DetailedPeriodicOrderDto {
  int get periodicTransferId => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  int get customerId => throw _privateConstructorUsedError;
  String get beneficiaryAccount => throw _privateConstructorUsedError;
  String get beneficiaryName => throw _privateConstructorUsedError;
  String? get beneficiaryAddress => throw _privateConstructorUsedError;
  String get beneficiaryCountryCode2char => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  PeriodicOrderFrecuencyTypeDto get frecuency =>
      throw _privateConstructorUsedError;
  PeriodicOrderStatusTypeDto get status => throw _privateConstructorUsedError;
  String get baasTransferId => throw _privateConstructorUsedError;
  String? get concept => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedPeriodicOrderDtoCopyWith<DetailedPeriodicOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedPeriodicOrderDtoCopyWith<$Res> {
  factory $DetailedPeriodicOrderDtoCopyWith(DetailedPeriodicOrderDto value,
          $Res Function(DetailedPeriodicOrderDto) then) =
      _$DetailedPeriodicOrderDtoCopyWithImpl<$Res, DetailedPeriodicOrderDto>;
  @useResult
  $Res call(
      {int periodicTransferId,
      int accountId,
      int customerId,
      String beneficiaryAccount,
      String beneficiaryName,
      String? beneficiaryAddress,
      String beneficiaryCountryCode2char,
      double amount,
      String currencyCode,
      DateTime startDate,
      DateTime? endDate,
      PeriodicOrderFrecuencyTypeDto frecuency,
      PeriodicOrderStatusTypeDto status,
      String baasTransferId,
      String? concept});
}

/// @nodoc
class _$DetailedPeriodicOrderDtoCopyWithImpl<$Res,
        $Val extends DetailedPeriodicOrderDto>
    implements $DetailedPeriodicOrderDtoCopyWith<$Res> {
  _$DetailedPeriodicOrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodicTransferId = null,
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
      periodicTransferId: null == periodicTransferId
          ? _value.periodicTransferId
          : periodicTransferId // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
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
              as PeriodicOrderFrecuencyTypeDto,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PeriodicOrderStatusTypeDto,
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
abstract class _$$DetailedPeriodicOrderDtoImplCopyWith<$Res>
    implements $DetailedPeriodicOrderDtoCopyWith<$Res> {
  factory _$$DetailedPeriodicOrderDtoImplCopyWith(
          _$DetailedPeriodicOrderDtoImpl value,
          $Res Function(_$DetailedPeriodicOrderDtoImpl) then) =
      __$$DetailedPeriodicOrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int periodicTransferId,
      int accountId,
      int customerId,
      String beneficiaryAccount,
      String beneficiaryName,
      String? beneficiaryAddress,
      String beneficiaryCountryCode2char,
      double amount,
      String currencyCode,
      DateTime startDate,
      DateTime? endDate,
      PeriodicOrderFrecuencyTypeDto frecuency,
      PeriodicOrderStatusTypeDto status,
      String baasTransferId,
      String? concept});
}

/// @nodoc
class __$$DetailedPeriodicOrderDtoImplCopyWithImpl<$Res>
    extends _$DetailedPeriodicOrderDtoCopyWithImpl<$Res,
        _$DetailedPeriodicOrderDtoImpl>
    implements _$$DetailedPeriodicOrderDtoImplCopyWith<$Res> {
  __$$DetailedPeriodicOrderDtoImplCopyWithImpl(
      _$DetailedPeriodicOrderDtoImpl _value,
      $Res Function(_$DetailedPeriodicOrderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodicTransferId = null,
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
    return _then(_$DetailedPeriodicOrderDtoImpl(
      periodicTransferId: null == periodicTransferId
          ? _value.periodicTransferId
          : periodicTransferId // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
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
              as PeriodicOrderFrecuencyTypeDto,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PeriodicOrderStatusTypeDto,
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
@JsonSerializable()
class _$DetailedPeriodicOrderDtoImpl implements _DetailedPeriodicOrderDto {
  const _$DetailedPeriodicOrderDtoImpl(
      {required this.periodicTransferId,
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

  factory _$DetailedPeriodicOrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedPeriodicOrderDtoImplFromJson(json);

  @override
  final int periodicTransferId;
  @override
  final int accountId;
  @override
  final int customerId;
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
  final PeriodicOrderFrecuencyTypeDto frecuency;
  @override
  final PeriodicOrderStatusTypeDto status;
  @override
  final String baasTransferId;
  @override
  final String? concept;

  @override
  String toString() {
    return 'DetailedPeriodicOrderDto(periodicTransferId: $periodicTransferId, accountId: $accountId, customerId: $customerId, beneficiaryAccount: $beneficiaryAccount, beneficiaryName: $beneficiaryName, beneficiaryAddress: $beneficiaryAddress, beneficiaryCountryCode2char: $beneficiaryCountryCode2char, amount: $amount, currencyCode: $currencyCode, startDate: $startDate, endDate: $endDate, frecuency: $frecuency, status: $status, baasTransferId: $baasTransferId, concept: $concept)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedPeriodicOrderDtoImpl &&
            (identical(other.periodicTransferId, periodicTransferId) ||
                other.periodicTransferId == periodicTransferId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
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
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.frecuency, frecuency) ||
                other.frecuency == frecuency) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.baasTransferId, baasTransferId) ||
                other.baasTransferId == baasTransferId) &&
            (identical(other.concept, concept) || other.concept == concept));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      periodicTransferId,
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
  _$$DetailedPeriodicOrderDtoImplCopyWith<_$DetailedPeriodicOrderDtoImpl>
      get copyWith => __$$DetailedPeriodicOrderDtoImplCopyWithImpl<
          _$DetailedPeriodicOrderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedPeriodicOrderDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailedPeriodicOrderDto implements DetailedPeriodicOrderDto {
  const factory _DetailedPeriodicOrderDto(
      {required final int periodicTransferId,
      required final int accountId,
      required final int customerId,
      required final String beneficiaryAccount,
      required final String beneficiaryName,
      required final String? beneficiaryAddress,
      required final String beneficiaryCountryCode2char,
      required final double amount,
      required final String currencyCode,
      required final DateTime startDate,
      required final DateTime? endDate,
      required final PeriodicOrderFrecuencyTypeDto frecuency,
      required final PeriodicOrderStatusTypeDto status,
      required final String baasTransferId,
      required final String? concept}) = _$DetailedPeriodicOrderDtoImpl;

  factory _DetailedPeriodicOrderDto.fromJson(Map<String, dynamic> json) =
      _$DetailedPeriodicOrderDtoImpl.fromJson;

  @override
  int get periodicTransferId;
  @override
  int get accountId;
  @override
  int get customerId;
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
  PeriodicOrderFrecuencyTypeDto get frecuency;
  @override
  PeriodicOrderStatusTypeDto get status;
  @override
  String get baasTransferId;
  @override
  String? get concept;
  @override
  @JsonKey(ignore: true)
  _$$DetailedPeriodicOrderDtoImplCopyWith<_$DetailedPeriodicOrderDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
