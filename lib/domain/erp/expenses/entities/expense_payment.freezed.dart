// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Payment {
  UniqueId get referenceId => throw _privateConstructorUsedError;
  UniqueId get expenseId => throw _privateConstructorUsedError;
  PaymentOrigin get origin => throw _privateConstructorUsedError;
  UniqueId get bankMovId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  String get additionalInfo => throw _privateConstructorUsedError;
  PaymentStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {UniqueId referenceId,
      UniqueId expenseId,
      PaymentOrigin origin,
      UniqueId bankMovId,
      double amount,
      String currencyCode,
      String additionalInfo,
      PaymentStatus status});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

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
              as UniqueId,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as PaymentOrigin,
      bankMovId: null == bankMovId
          ? _value.bankMovId
          : bankMovId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
              as PaymentStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId referenceId,
      UniqueId expenseId,
      PaymentOrigin origin,
      UniqueId bankMovId,
      double amount,
      String currencyCode,
      String additionalInfo,
      PaymentStatus status});
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
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
    return _then(_$PaymentImpl(
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as PaymentOrigin,
      bankMovId: null == bankMovId
          ? _value.bankMovId
          : bankMovId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
              as PaymentStatus,
    ));
  }
}

/// @nodoc

class _$PaymentImpl implements _Payment {
  const _$PaymentImpl(
      {required this.referenceId,
      required this.expenseId,
      required this.origin,
      required this.bankMovId,
      required this.amount,
      required this.currencyCode,
      required this.additionalInfo,
      required this.status});

  @override
  final UniqueId referenceId;
  @override
  final UniqueId expenseId;
  @override
  final PaymentOrigin origin;
  @override
  final UniqueId bankMovId;
  @override
  final double amount;
  @override
  final String currencyCode;
  @override
  final String additionalInfo;
  @override
  final PaymentStatus status;

  @override
  String toString() {
    return 'Payment(referenceId: $referenceId, expenseId: $expenseId, origin: $origin, bankMovId: $bankMovId, amount: $amount, currencyCode: $currencyCode, additionalInfo: $additionalInfo, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, referenceId, expenseId, origin,
      bankMovId, amount, currencyCode, additionalInfo, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);
}

abstract class _Payment implements Payment {
  const factory _Payment(
      {required final UniqueId referenceId,
      required final UniqueId expenseId,
      required final PaymentOrigin origin,
      required final UniqueId bankMovId,
      required final double amount,
      required final String currencyCode,
      required final String additionalInfo,
      required final PaymentStatus status}) = _$PaymentImpl;

  @override
  UniqueId get referenceId;
  @override
  UniqueId get expenseId;
  @override
  PaymentOrigin get origin;
  @override
  UniqueId get bankMovId;
  @override
  double get amount;
  @override
  String get currencyCode;
  @override
  String get additionalInfo;
  @override
  PaymentStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
