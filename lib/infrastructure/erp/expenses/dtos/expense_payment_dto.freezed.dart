// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_payment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentDto _$PaymentDtoFromJson(Map<String, dynamic> json) {
  return _PaymentDto.fromJson(json);
}

/// @nodoc
mixin _$PaymentDto {
  int get referenceId => throw _privateConstructorUsedError;
  int get expenseId => throw _privateConstructorUsedError;
  PaymentOriginDto get origin => throw _privateConstructorUsedError;
  int get bankMovId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  String get additionalInfo => throw _privateConstructorUsedError;
  PaymentStatusDto get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDtoCopyWith<PaymentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDtoCopyWith<$Res> {
  factory $PaymentDtoCopyWith(
          PaymentDto value, $Res Function(PaymentDto) then) =
      _$PaymentDtoCopyWithImpl<$Res, PaymentDto>;
  @useResult
  $Res call(
      {int referenceId,
      int expenseId,
      PaymentOriginDto origin,
      int bankMovId,
      double amount,
      String currencyCode,
      String additionalInfo,
      PaymentStatusDto status});
}

/// @nodoc
class _$PaymentDtoCopyWithImpl<$Res, $Val extends PaymentDto>
    implements $PaymentDtoCopyWith<$Res> {
  _$PaymentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceId = null,
    Object? expenseId = null,
    Object? origin = null,
    Object? bankMovId = null,
    Object? amount = null,
    Object? currencyCode = null,
    Object? additionalInfo = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as int,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as PaymentOriginDto,
      bankMovId: null == bankMovId
          ? _value.bankMovId
          : bankMovId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatusDto,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentDtoImplCopyWith<$Res>
    implements $PaymentDtoCopyWith<$Res> {
  factory _$$PaymentDtoImplCopyWith(
          _$PaymentDtoImpl value, $Res Function(_$PaymentDtoImpl) then) =
      __$$PaymentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int referenceId,
      int expenseId,
      PaymentOriginDto origin,
      int bankMovId,
      double amount,
      String currencyCode,
      String additionalInfo,
      PaymentStatusDto status});
}

/// @nodoc
class __$$PaymentDtoImplCopyWithImpl<$Res>
    extends _$PaymentDtoCopyWithImpl<$Res, _$PaymentDtoImpl>
    implements _$$PaymentDtoImplCopyWith<$Res> {
  __$$PaymentDtoImplCopyWithImpl(
      _$PaymentDtoImpl _value, $Res Function(_$PaymentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceId = null,
    Object? expenseId = null,
    Object? origin = null,
    Object? bankMovId = null,
    Object? amount = null,
    Object? currencyCode = null,
    Object? additionalInfo = null,
    Object? status = null,
  }) {
    return _then(_$PaymentDtoImpl(
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as int,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as PaymentOriginDto,
      bankMovId: null == bankMovId
          ? _value.bankMovId
          : bankMovId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatusDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDtoImpl implements _PaymentDto {
  const _$PaymentDtoImpl(
      {required this.referenceId,
      required this.expenseId,
      required this.origin,
      required this.bankMovId,
      required this.amount,
      required this.currencyCode,
      required this.additionalInfo,
      required this.status});

  factory _$PaymentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDtoImplFromJson(json);

  @override
  final int referenceId;
  @override
  final int expenseId;
  @override
  final PaymentOriginDto origin;
  @override
  final int bankMovId;
  @override
  final double amount;
  @override
  final String currencyCode;
  @override
  final String additionalInfo;
  @override
  final PaymentStatusDto status;

  @override
  String toString() {
    return 'PaymentDto(referenceId: $referenceId, expenseId: $expenseId, origin: $origin, bankMovId: $bankMovId, amount: $amount, currencyCode: $currencyCode, additionalInfo: $additionalInfo, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDtoImpl &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.bankMovId, bankMovId) ||
                other.bankMovId == bankMovId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, referenceId, expenseId, origin,
      bankMovId, amount, currencyCode, additionalInfo, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDtoImplCopyWith<_$PaymentDtoImpl> get copyWith =>
      __$$PaymentDtoImplCopyWithImpl<_$PaymentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDtoImplToJson(
      this,
    );
  }
}

abstract class _PaymentDto implements PaymentDto {
  const factory _PaymentDto(
      {required final int referenceId,
      required final int expenseId,
      required final PaymentOriginDto origin,
      required final int bankMovId,
      required final double amount,
      required final String currencyCode,
      required final String additionalInfo,
      required final PaymentStatusDto status}) = _$PaymentDtoImpl;

  factory _PaymentDto.fromJson(Map<String, dynamic> json) =
      _$PaymentDtoImpl.fromJson;

  @override
  int get referenceId;
  @override
  int get expenseId;
  @override
  PaymentOriginDto get origin;
  @override
  int get bankMovId;
  @override
  double get amount;
  @override
  String get currencyCode;
  @override
  String get additionalInfo;
  @override
  PaymentStatusDto get status;
  @override
  @JsonKey(ignore: true)
  _$$PaymentDtoImplCopyWith<_$PaymentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
