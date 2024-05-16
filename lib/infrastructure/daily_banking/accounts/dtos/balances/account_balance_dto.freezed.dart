// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_balance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountBalanceDto _$AccountBalanceDtoFromJson(Map<String, dynamic> json) {
  return _AccountBalanceDto.fromJson(json);
}

/// @nodoc
mixin _$AccountBalanceDto {
  int get accountId => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  double? get balance => throw _privateConstructorUsedError;
  double? get withholding => throw _privateConstructorUsedError;
  double? get overdraftLimit => throw _privateConstructorUsedError;
  double? get overdraftAmount => throw _privateConstructorUsedError;
  double? get unpaidBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBalanceDtoCopyWith<AccountBalanceDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBalanceDtoCopyWith<$Res> {
  factory $AccountBalanceDtoCopyWith(
          AccountBalanceDto value, $Res Function(AccountBalanceDto) then) =
      _$AccountBalanceDtoCopyWithImpl<$Res, AccountBalanceDto>;
  @useResult
  $Res call(
      {int accountId,
      String? date,
      double? balance,
      double? withholding,
      double? overdraftLimit,
      double? overdraftAmount,
      double? unpaidBalance});
}

/// @nodoc
class _$AccountBalanceDtoCopyWithImpl<$Res, $Val extends AccountBalanceDto>
    implements $AccountBalanceDtoCopyWith<$Res> {
  _$AccountBalanceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? date = freezed,
    Object? balance = freezed,
    Object? withholding = freezed,
    Object? overdraftLimit = freezed,
    Object? overdraftAmount = freezed,
    Object? unpaidBalance = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      withholding: freezed == withholding
          ? _value.withholding
          : withholding // ignore: cast_nullable_to_non_nullable
              as double?,
      overdraftLimit: freezed == overdraftLimit
          ? _value.overdraftLimit
          : overdraftLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      overdraftAmount: freezed == overdraftAmount
          ? _value.overdraftAmount
          : overdraftAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      unpaidBalance: freezed == unpaidBalance
          ? _value.unpaidBalance
          : unpaidBalance // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountBalanceDtoImplCopyWith<$Res> implements $AccountBalanceDtoCopyWith<$Res> {
  factory _$$AccountBalanceDtoImplCopyWith(
          _$AccountBalanceDtoImpl value, $Res Function(_$AccountBalanceDtoImpl) then) =
      __$$AccountBalanceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int accountId,
      String? date,
      double? balance,
      double? withholding,
      double? overdraftLimit,
      double? overdraftAmount,
      double? unpaidBalance});
}

/// @nodoc
class __$$AccountBalanceDtoImplCopyWithImpl<$Res>
    extends _$AccountBalanceDtoCopyWithImpl<$Res, _$AccountBalanceDtoImpl>
    implements _$$AccountBalanceDtoImplCopyWith<$Res> {
  __$$AccountBalanceDtoImplCopyWithImpl(
      _$AccountBalanceDtoImpl _value, $Res Function(_$AccountBalanceDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? date = freezed,
    Object? balance = freezed,
    Object? withholding = freezed,
    Object? overdraftLimit = freezed,
    Object? overdraftAmount = freezed,
    Object? unpaidBalance = freezed,
  }) {
    return _then(_$AccountBalanceDtoImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      withholding: freezed == withholding
          ? _value.withholding
          : withholding // ignore: cast_nullable_to_non_nullable
              as double?,
      overdraftLimit: freezed == overdraftLimit
          ? _value.overdraftLimit
          : overdraftLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      overdraftAmount: freezed == overdraftAmount
          ? _value.overdraftAmount
          : overdraftAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      unpaidBalance: freezed == unpaidBalance
          ? _value.unpaidBalance
          : unpaidBalance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountBalanceDtoImpl implements _AccountBalanceDto {
  const _$AccountBalanceDtoImpl(
      {required this.accountId,
      required this.date,
      required this.balance,
      required this.withholding,
      required this.overdraftLimit,
      required this.overdraftAmount,
      required this.unpaidBalance});

  factory _$AccountBalanceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountBalanceDtoImplFromJson(json);

  @override
  final int accountId;
  @override
  final String? date;
  @override
  final double? balance;
  @override
  final double? withholding;
  @override
  final double? overdraftLimit;
  @override
  final double? overdraftAmount;
  @override
  final double? unpaidBalance;

  @override
  String toString() {
    return 'AccountBalanceDto(accountId: $accountId, date: $date, balance: $balance, withholding: $withholding, overdraftLimit: $overdraftLimit, overdraftAmount: $overdraftAmount, unpaidBalance: $unpaidBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountBalanceDtoImpl &&
            (identical(other.accountId, accountId) || other.accountId == accountId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.withholding, withholding) || other.withholding == withholding) &&
            (identical(other.overdraftLimit, overdraftLimit) ||
                other.overdraftLimit == overdraftLimit) &&
            (identical(other.overdraftAmount, overdraftAmount) ||
                other.overdraftAmount == overdraftAmount) &&
            (identical(other.unpaidBalance, unpaidBalance) ||
                other.unpaidBalance == unpaidBalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accountId, date, balance, withholding,
      overdraftLimit, overdraftAmount, unpaidBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountBalanceDtoImplCopyWith<_$AccountBalanceDtoImpl> get copyWith =>
      __$$AccountBalanceDtoImplCopyWithImpl<_$AccountBalanceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountBalanceDtoImplToJson(
      this,
    );
  }
}

abstract class _AccountBalanceDto implements AccountBalanceDto {
  const factory _AccountBalanceDto(
      {required final int accountId,
      required final String? date,
      required final double? balance,
      required final double? withholding,
      required final double? overdraftLimit,
      required final double? overdraftAmount,
      required final double? unpaidBalance}) = _$AccountBalanceDtoImpl;

  factory _AccountBalanceDto.fromJson(Map<String, dynamic> json) = _$AccountBalanceDtoImpl.fromJson;

  @override
  int get accountId;
  @override
  String? get date;
  @override
  double? get balance;
  @override
  double? get withholding;
  @override
  double? get overdraftLimit;
  @override
  double? get overdraftAmount;
  @override
  double? get unpaidBalance;
  @override
  @JsonKey(ignore: true)
  _$$AccountBalanceDtoImplCopyWith<_$AccountBalanceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
