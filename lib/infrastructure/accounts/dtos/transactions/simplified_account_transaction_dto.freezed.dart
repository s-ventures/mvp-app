// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_account_transaction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimplifiedAccountTransactionDto _$SimplifiedAccountTransactionDtoFromJson(
    Map<String, dynamic> json) {
  return _SimplifiedAccountTransactionDto.fromJson(json);
}

/// @nodoc
mixin _$SimplifiedAccountTransactionDto {
  int get movementId => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get postingDate => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get valueDate => throw _privateConstructorUsedError;
  AccountTransactionTypeDto get type => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get endBalance => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get analyticsCategory => throw _privateConstructorUsedError;
  String? get userCategory => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  AccountTransactionCreditDebitDto get creditDebit =>
      throw _privateConstructorUsedError;
  String get originBranch => throw _privateConstructorUsedError;
  ProductTypeDto get productType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimplifiedAccountTransactionDtoCopyWith<SimplifiedAccountTransactionDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedAccountTransactionDtoCopyWith<$Res> {
  factory $SimplifiedAccountTransactionDtoCopyWith(
          SimplifiedAccountTransactionDto value,
          $Res Function(SimplifiedAccountTransactionDto) then) =
      _$SimplifiedAccountTransactionDtoCopyWithImpl<$Res,
          SimplifiedAccountTransactionDto>;
  @useResult
  $Res call(
      {int movementId,
      @DateConverter() DateTime postingDate,
      @DateConverter() DateTime valueDate,
      AccountTransactionTypeDto type,
      double amount,
      double endBalance,
      String currencyCode,
      String description,
      String? analyticsCategory,
      String? userCategory,
      int accountId,
      AccountTransactionCreditDebitDto creditDebit,
      String originBranch,
      ProductTypeDto productType});
}

/// @nodoc
class _$SimplifiedAccountTransactionDtoCopyWithImpl<$Res,
        $Val extends SimplifiedAccountTransactionDto>
    implements $SimplifiedAccountTransactionDtoCopyWith<$Res> {
  _$SimplifiedAccountTransactionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movementId = null,
    Object? postingDate = null,
    Object? valueDate = null,
    Object? type = null,
    Object? amount = null,
    Object? endBalance = null,
    Object? currencyCode = null,
    Object? description = null,
    Object? analyticsCategory = freezed,
    Object? userCategory = freezed,
    Object? accountId = null,
    Object? creditDebit = null,
    Object? originBranch = null,
    Object? productType = null,
  }) {
    return _then(_value.copyWith(
      movementId: null == movementId
          ? _value.movementId
          : movementId // ignore: cast_nullable_to_non_nullable
              as int,
      postingDate: null == postingDate
          ? _value.postingDate
          : postingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueDate: null == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountTransactionTypeDto,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      endBalance: null == endBalance
          ? _value.endBalance
          : endBalance // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      analyticsCategory: freezed == analyticsCategory
          ? _value.analyticsCategory
          : analyticsCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      userCategory: freezed == userCategory
          ? _value.userCategory
          : userCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      creditDebit: null == creditDebit
          ? _value.creditDebit
          : creditDebit // ignore: cast_nullable_to_non_nullable
              as AccountTransactionCreditDebitDto,
      originBranch: null == originBranch
          ? _value.originBranch
          : originBranch // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductTypeDto,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedAccountTransactionDtoImplCopyWith<$Res>
    implements $SimplifiedAccountTransactionDtoCopyWith<$Res> {
  factory _$$SimplifiedAccountTransactionDtoImplCopyWith(
          _$SimplifiedAccountTransactionDtoImpl value,
          $Res Function(_$SimplifiedAccountTransactionDtoImpl) then) =
      __$$SimplifiedAccountTransactionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int movementId,
      @DateConverter() DateTime postingDate,
      @DateConverter() DateTime valueDate,
      AccountTransactionTypeDto type,
      double amount,
      double endBalance,
      String currencyCode,
      String description,
      String? analyticsCategory,
      String? userCategory,
      int accountId,
      AccountTransactionCreditDebitDto creditDebit,
      String originBranch,
      ProductTypeDto productType});
}

/// @nodoc
class __$$SimplifiedAccountTransactionDtoImplCopyWithImpl<$Res>
    extends _$SimplifiedAccountTransactionDtoCopyWithImpl<$Res,
        _$SimplifiedAccountTransactionDtoImpl>
    implements _$$SimplifiedAccountTransactionDtoImplCopyWith<$Res> {
  __$$SimplifiedAccountTransactionDtoImplCopyWithImpl(
      _$SimplifiedAccountTransactionDtoImpl _value,
      $Res Function(_$SimplifiedAccountTransactionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movementId = null,
    Object? postingDate = null,
    Object? valueDate = null,
    Object? type = null,
    Object? amount = null,
    Object? endBalance = null,
    Object? currencyCode = null,
    Object? description = null,
    Object? analyticsCategory = freezed,
    Object? userCategory = freezed,
    Object? accountId = null,
    Object? creditDebit = null,
    Object? originBranch = null,
    Object? productType = null,
  }) {
    return _then(_$SimplifiedAccountTransactionDtoImpl(
      movementId: null == movementId
          ? _value.movementId
          : movementId // ignore: cast_nullable_to_non_nullable
              as int,
      postingDate: null == postingDate
          ? _value.postingDate
          : postingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueDate: null == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountTransactionTypeDto,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      endBalance: null == endBalance
          ? _value.endBalance
          : endBalance // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      analyticsCategory: freezed == analyticsCategory
          ? _value.analyticsCategory
          : analyticsCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      userCategory: freezed == userCategory
          ? _value.userCategory
          : userCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      creditDebit: null == creditDebit
          ? _value.creditDebit
          : creditDebit // ignore: cast_nullable_to_non_nullable
              as AccountTransactionCreditDebitDto,
      originBranch: null == originBranch
          ? _value.originBranch
          : originBranch // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductTypeDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimplifiedAccountTransactionDtoImpl
    implements _SimplifiedAccountTransactionDto {
  const _$SimplifiedAccountTransactionDtoImpl(
      {required this.movementId,
      @DateConverter() required this.postingDate,
      @DateConverter() required this.valueDate,
      required this.type,
      required this.amount,
      required this.endBalance,
      required this.currencyCode,
      required this.description,
      required this.analyticsCategory,
      required this.userCategory,
      required this.accountId,
      required this.creditDebit,
      required this.originBranch,
      required this.productType});

  factory _$SimplifiedAccountTransactionDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SimplifiedAccountTransactionDtoImplFromJson(json);

  @override
  final int movementId;
  @override
  @DateConverter()
  final DateTime postingDate;
  @override
  @DateConverter()
  final DateTime valueDate;
  @override
  final AccountTransactionTypeDto type;
  @override
  final double amount;
  @override
  final double endBalance;
  @override
  final String currencyCode;
  @override
  final String description;
  @override
  final String? analyticsCategory;
  @override
  final String? userCategory;
  @override
  final int accountId;
  @override
  final AccountTransactionCreditDebitDto creditDebit;
  @override
  final String originBranch;
  @override
  final ProductTypeDto productType;

  @override
  String toString() {
    return 'SimplifiedAccountTransactionDto(movementId: $movementId, postingDate: $postingDate, valueDate: $valueDate, type: $type, amount: $amount, endBalance: $endBalance, currencyCode: $currencyCode, description: $description, analyticsCategory: $analyticsCategory, userCategory: $userCategory, accountId: $accountId, creditDebit: $creditDebit, originBranch: $originBranch, productType: $productType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedAccountTransactionDtoImpl &&
            (identical(other.movementId, movementId) ||
                other.movementId == movementId) &&
            (identical(other.postingDate, postingDate) ||
                other.postingDate == postingDate) &&
            (identical(other.valueDate, valueDate) ||
                other.valueDate == valueDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.endBalance, endBalance) ||
                other.endBalance == endBalance) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.analyticsCategory, analyticsCategory) ||
                other.analyticsCategory == analyticsCategory) &&
            (identical(other.userCategory, userCategory) ||
                other.userCategory == userCategory) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.creditDebit, creditDebit) ||
                other.creditDebit == creditDebit) &&
            (identical(other.originBranch, originBranch) ||
                other.originBranch == originBranch) &&
            (identical(other.productType, productType) ||
                other.productType == productType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      movementId,
      postingDate,
      valueDate,
      type,
      amount,
      endBalance,
      currencyCode,
      description,
      analyticsCategory,
      userCategory,
      accountId,
      creditDebit,
      originBranch,
      productType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedAccountTransactionDtoImplCopyWith<
          _$SimplifiedAccountTransactionDtoImpl>
      get copyWith => __$$SimplifiedAccountTransactionDtoImplCopyWithImpl<
          _$SimplifiedAccountTransactionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimplifiedAccountTransactionDtoImplToJson(
      this,
    );
  }
}

abstract class _SimplifiedAccountTransactionDto
    implements SimplifiedAccountTransactionDto {
  const factory _SimplifiedAccountTransactionDto(
          {required final int movementId,
          @DateConverter() required final DateTime postingDate,
          @DateConverter() required final DateTime valueDate,
          required final AccountTransactionTypeDto type,
          required final double amount,
          required final double endBalance,
          required final String currencyCode,
          required final String description,
          required final String? analyticsCategory,
          required final String? userCategory,
          required final int accountId,
          required final AccountTransactionCreditDebitDto creditDebit,
          required final String originBranch,
          required final ProductTypeDto productType}) =
      _$SimplifiedAccountTransactionDtoImpl;

  factory _SimplifiedAccountTransactionDto.fromJson(Map<String, dynamic> json) =
      _$SimplifiedAccountTransactionDtoImpl.fromJson;

  @override
  int get movementId;
  @override
  @DateConverter()
  DateTime get postingDate;
  @override
  @DateConverter()
  DateTime get valueDate;
  @override
  AccountTransactionTypeDto get type;
  @override
  double get amount;
  @override
  double get endBalance;
  @override
  String get currencyCode;
  @override
  String get description;
  @override
  String? get analyticsCategory;
  @override
  String? get userCategory;
  @override
  int get accountId;
  @override
  AccountTransactionCreditDebitDto get creditDebit;
  @override
  String get originBranch;
  @override
  ProductTypeDto get productType;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedAccountTransactionDtoImplCopyWith<
          _$SimplifiedAccountTransactionDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
