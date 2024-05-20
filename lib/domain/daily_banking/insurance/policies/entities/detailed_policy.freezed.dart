// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedPolicy {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get insuranceId => throw _privateConstructorUsedError;
  String get certificateNumber => throw _privateConstructorUsedError;
  DateTime get createDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // TODO(georgeta): Change to enum PolicyStatusType when BE is ready
  String get description => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get lastInvoiceAmount => throw _privateConstructorUsedError;
  PolicyPaymentPeriodicity get paymentPeriodicity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedPolicyCopyWith<DetailedPolicy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedPolicyCopyWith<$Res> {
  factory $DetailedPolicyCopyWith(DetailedPolicy value, $Res Function(DetailedPolicy) then) =
      _$DetailedPolicyCopyWithImpl<$Res, DetailedPolicy>;
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId insuranceId,
      String certificateNumber,
      DateTime createDate,
      DateTime? endDate,
      String status,
      String description,
      double amount,
      double lastInvoiceAmount,
      PolicyPaymentPeriodicity paymentPeriodicity});
}

/// @nodoc
class _$DetailedPolicyCopyWithImpl<$Res, $Val extends DetailedPolicy>
    implements $DetailedPolicyCopyWith<$Res> {
  _$DetailedPolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? insuranceId = null,
    Object? certificateNumber = null,
    Object? createDate = null,
    Object? endDate = freezed,
    Object? status = null,
    Object? description = null,
    Object? amount = null,
    Object? lastInvoiceAmount = null,
    Object? paymentPeriodicity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      insuranceId: null == insuranceId
          ? _value.insuranceId
          : insuranceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      certificateNumber: null == certificateNumber
          ? _value.certificateNumber
          : certificateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      lastInvoiceAmount: null == lastInvoiceAmount
          ? _value.lastInvoiceAmount
          : lastInvoiceAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentPeriodicity: null == paymentPeriodicity
          ? _value.paymentPeriodicity
          : paymentPeriodicity // ignore: cast_nullable_to_non_nullable
              as PolicyPaymentPeriodicity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedPolicyImplCopyWith<$Res> implements $DetailedPolicyCopyWith<$Res> {
  factory _$$DetailedPolicyImplCopyWith(
          _$DetailedPolicyImpl value, $Res Function(_$DetailedPolicyImpl) then) =
      __$$DetailedPolicyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId insuranceId,
      String certificateNumber,
      DateTime createDate,
      DateTime? endDate,
      String status,
      String description,
      double amount,
      double lastInvoiceAmount,
      PolicyPaymentPeriodicity paymentPeriodicity});
}

/// @nodoc
class __$$DetailedPolicyImplCopyWithImpl<$Res>
    extends _$DetailedPolicyCopyWithImpl<$Res, _$DetailedPolicyImpl>
    implements _$$DetailedPolicyImplCopyWith<$Res> {
  __$$DetailedPolicyImplCopyWithImpl(
      _$DetailedPolicyImpl _value, $Res Function(_$DetailedPolicyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? insuranceId = null,
    Object? certificateNumber = null,
    Object? createDate = null,
    Object? endDate = freezed,
    Object? status = null,
    Object? description = null,
    Object? amount = null,
    Object? lastInvoiceAmount = null,
    Object? paymentPeriodicity = null,
  }) {
    return _then(_$DetailedPolicyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      insuranceId: null == insuranceId
          ? _value.insuranceId
          : insuranceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      certificateNumber: null == certificateNumber
          ? _value.certificateNumber
          : certificateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      lastInvoiceAmount: null == lastInvoiceAmount
          ? _value.lastInvoiceAmount
          : lastInvoiceAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentPeriodicity: null == paymentPeriodicity
          ? _value.paymentPeriodicity
          : paymentPeriodicity // ignore: cast_nullable_to_non_nullable
              as PolicyPaymentPeriodicity,
    ));
  }
}

/// @nodoc

class _$DetailedPolicyImpl implements _DetailedPolicy {
  const _$DetailedPolicyImpl(
      {required this.id,
      required this.insuranceId,
      required this.certificateNumber,
      required this.createDate,
      required this.endDate,
      required this.status,
      required this.description,
      required this.amount,
      required this.lastInvoiceAmount,
      required this.paymentPeriodicity});

  @override
  final UniqueId id;
  @override
  final UniqueId insuranceId;
  @override
  final String certificateNumber;
  @override
  final DateTime createDate;
  @override
  final DateTime? endDate;
  @override
  final String status;
// TODO(georgeta): Change to enum PolicyStatusType when BE is ready
  @override
  final String description;
  @override
  final double amount;
  @override
  final double lastInvoiceAmount;
  @override
  final PolicyPaymentPeriodicity paymentPeriodicity;

  @override
  String toString() {
    return 'DetailedPolicy(id: $id, insuranceId: $insuranceId, certificateNumber: $certificateNumber, createDate: $createDate, endDate: $endDate, status: $status, description: $description, amount: $amount, lastInvoiceAmount: $lastInvoiceAmount, paymentPeriodicity: $paymentPeriodicity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedPolicyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.insuranceId, insuranceId) || other.insuranceId == insuranceId) &&
            (identical(other.certificateNumber, certificateNumber) ||
                other.certificateNumber == certificateNumber) &&
            (identical(other.createDate, createDate) || other.createDate == createDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.lastInvoiceAmount, lastInvoiceAmount) ||
                other.lastInvoiceAmount == lastInvoiceAmount) &&
            (identical(other.paymentPeriodicity, paymentPeriodicity) ||
                other.paymentPeriodicity == paymentPeriodicity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, insuranceId, certificateNumber, createDate,
      endDate, status, description, amount, lastInvoiceAmount, paymentPeriodicity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedPolicyImplCopyWith<_$DetailedPolicyImpl> get copyWith =>
      __$$DetailedPolicyImplCopyWithImpl<_$DetailedPolicyImpl>(this, _$identity);
}

abstract class _DetailedPolicy implements DetailedPolicy {
  const factory _DetailedPolicy(
      {required final UniqueId id,
      required final UniqueId insuranceId,
      required final String certificateNumber,
      required final DateTime createDate,
      required final DateTime? endDate,
      required final String status,
      required final String description,
      required final double amount,
      required final double lastInvoiceAmount,
      required final PolicyPaymentPeriodicity paymentPeriodicity}) = _$DetailedPolicyImpl;

  @override
  UniqueId get id;
  @override
  UniqueId get insuranceId;
  @override
  String get certificateNumber;
  @override
  DateTime get createDate;
  @override
  DateTime? get endDate;
  @override
  String get status;
  @override // TODO(georgeta): Change to enum PolicyStatusType when BE is ready
  String get description;
  @override
  double get amount;
  @override
  double get lastInvoiceAmount;
  @override
  PolicyPaymentPeriodicity get paymentPeriodicity;
  @override
  @JsonKey(ignore: true)
  _$$DetailedPolicyImplCopyWith<_$DetailedPolicyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
