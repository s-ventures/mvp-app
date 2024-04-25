// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_policy_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailedPolicyDto _$DetailedPolicyDtoFromJson(Map<String, dynamic> json) {
  return _DetailedPolicyDto.fromJson(json);
}

/// @nodoc
mixin _$DetailedPolicyDto {
  int get insuranceId => throw _privateConstructorUsedError;
  String get policy => throw _privateConstructorUsedError;
  String get certificateNumber => throw _privateConstructorUsedError;
  DateTime get createDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; //TODO: Change to enum PolicyStatusType when BE is ready
  String get description => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get lastInvoiceAmount => throw _privateConstructorUsedError;
  PolicyPaymentPeriodicityDto get paymentPeriodicity =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedPolicyDtoCopyWith<DetailedPolicyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedPolicyDtoCopyWith<$Res> {
  factory $DetailedPolicyDtoCopyWith(
          DetailedPolicyDto value, $Res Function(DetailedPolicyDto) then) =
      _$DetailedPolicyDtoCopyWithImpl<$Res, DetailedPolicyDto>;
  @useResult
  $Res call(
      {int insuranceId,
      String policy,
      String certificateNumber,
      DateTime createDate,
      DateTime endDate,
      String status,
      String description,
      double amount,
      double lastInvoiceAmount,
      PolicyPaymentPeriodicityDto paymentPeriodicity});
}

/// @nodoc
class _$DetailedPolicyDtoCopyWithImpl<$Res, $Val extends DetailedPolicyDto>
    implements $DetailedPolicyDtoCopyWith<$Res> {
  _$DetailedPolicyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuranceId = null,
    Object? policy = null,
    Object? certificateNumber = null,
    Object? createDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? description = null,
    Object? amount = null,
    Object? lastInvoiceAmount = null,
    Object? paymentPeriodicity = null,
  }) {
    return _then(_value.copyWith(
      insuranceId: null == insuranceId
          ? _value.insuranceId
          : insuranceId // ignore: cast_nullable_to_non_nullable
              as int,
      policy: null == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as String,
      certificateNumber: null == certificateNumber
          ? _value.certificateNumber
          : certificateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
              as PolicyPaymentPeriodicityDto,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedPolicyDtoImplCopyWith<$Res>
    implements $DetailedPolicyDtoCopyWith<$Res> {
  factory _$$DetailedPolicyDtoImplCopyWith(_$DetailedPolicyDtoImpl value,
          $Res Function(_$DetailedPolicyDtoImpl) then) =
      __$$DetailedPolicyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int insuranceId,
      String policy,
      String certificateNumber,
      DateTime createDate,
      DateTime endDate,
      String status,
      String description,
      double amount,
      double lastInvoiceAmount,
      PolicyPaymentPeriodicityDto paymentPeriodicity});
}

/// @nodoc
class __$$DetailedPolicyDtoImplCopyWithImpl<$Res>
    extends _$DetailedPolicyDtoCopyWithImpl<$Res, _$DetailedPolicyDtoImpl>
    implements _$$DetailedPolicyDtoImplCopyWith<$Res> {
  __$$DetailedPolicyDtoImplCopyWithImpl(_$DetailedPolicyDtoImpl _value,
      $Res Function(_$DetailedPolicyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuranceId = null,
    Object? policy = null,
    Object? certificateNumber = null,
    Object? createDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? description = null,
    Object? amount = null,
    Object? lastInvoiceAmount = null,
    Object? paymentPeriodicity = null,
  }) {
    return _then(_$DetailedPolicyDtoImpl(
      insuranceId: null == insuranceId
          ? _value.insuranceId
          : insuranceId // ignore: cast_nullable_to_non_nullable
              as int,
      policy: null == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as String,
      certificateNumber: null == certificateNumber
          ? _value.certificateNumber
          : certificateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
              as PolicyPaymentPeriodicityDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedPolicyDtoImpl implements _DetailedPolicyDto {
  const _$DetailedPolicyDtoImpl(
      {required this.insuranceId,
      required this.policy,
      required this.certificateNumber,
      required this.createDate,
      required this.endDate,
      required this.status,
      required this.description,
      required this.amount,
      required this.lastInvoiceAmount,
      required this.paymentPeriodicity});

  factory _$DetailedPolicyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedPolicyDtoImplFromJson(json);

  @override
  final int insuranceId;
  @override
  final String policy;
  @override
  final String certificateNumber;
  @override
  final DateTime createDate;
  @override
  final DateTime endDate;
  @override
  final String status;
//TODO: Change to enum PolicyStatusType when BE is ready
  @override
  final String description;
  @override
  final double amount;
  @override
  final double lastInvoiceAmount;
  @override
  final PolicyPaymentPeriodicityDto paymentPeriodicity;

  @override
  String toString() {
    return 'DetailedPolicyDto(insuranceId: $insuranceId, policy: $policy, certificateNumber: $certificateNumber, createDate: $createDate, endDate: $endDate, status: $status, description: $description, amount: $amount, lastInvoiceAmount: $lastInvoiceAmount, paymentPeriodicity: $paymentPeriodicity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedPolicyDtoImpl &&
            (identical(other.insuranceId, insuranceId) ||
                other.insuranceId == insuranceId) &&
            (identical(other.policy, policy) || other.policy == policy) &&
            (identical(other.certificateNumber, certificateNumber) ||
                other.certificateNumber == certificateNumber) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.lastInvoiceAmount, lastInvoiceAmount) ||
                other.lastInvoiceAmount == lastInvoiceAmount) &&
            (identical(other.paymentPeriodicity, paymentPeriodicity) ||
                other.paymentPeriodicity == paymentPeriodicity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      insuranceId,
      policy,
      certificateNumber,
      createDate,
      endDate,
      status,
      description,
      amount,
      lastInvoiceAmount,
      paymentPeriodicity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedPolicyDtoImplCopyWith<_$DetailedPolicyDtoImpl> get copyWith =>
      __$$DetailedPolicyDtoImplCopyWithImpl<_$DetailedPolicyDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedPolicyDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailedPolicyDto implements DetailedPolicyDto {
  const factory _DetailedPolicyDto(
          {required final int insuranceId,
          required final String policy,
          required final String certificateNumber,
          required final DateTime createDate,
          required final DateTime endDate,
          required final String status,
          required final String description,
          required final double amount,
          required final double lastInvoiceAmount,
          required final PolicyPaymentPeriodicityDto paymentPeriodicity}) =
      _$DetailedPolicyDtoImpl;

  factory _DetailedPolicyDto.fromJson(Map<String, dynamic> json) =
      _$DetailedPolicyDtoImpl.fromJson;

  @override
  int get insuranceId;
  @override
  String get policy;
  @override
  String get certificateNumber;
  @override
  DateTime get createDate;
  @override
  DateTime get endDate;
  @override
  String get status;
  @override //TODO: Change to enum PolicyStatusType when BE is ready
  String get description;
  @override
  double get amount;
  @override
  double get lastInvoiceAmount;
  @override
  PolicyPaymentPeriodicityDto get paymentPeriodicity;
  @override
  @JsonKey(ignore: true)
  _$$DetailedPolicyDtoImplCopyWith<_$DetailedPolicyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
