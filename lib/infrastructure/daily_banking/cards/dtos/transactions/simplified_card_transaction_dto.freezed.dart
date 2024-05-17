// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_card_transaction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimplifiedCardTransactionDto _$SimplifiedCardTransactionDtoFromJson(Map<String, dynamic> json) {
  return _CardTransactionDto.fromJson(json);
}

/// @nodoc
mixin _$SimplifiedCardTransactionDto {
  int get movementId => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get postingDate => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get valueDate => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  String? get analyticsCategory => throw _privateConstructorUsedError;
  String? get userCategory => throw _privateConstructorUsedError;
  int get cardId => throw _privateConstructorUsedError;
  String get responseCode => throw _privateConstructorUsedError;
  String get concept => throw _privateConstructorUsedError;
  String get postingTime => throw _privateConstructorUsedError;
  ProductTypeDto get productType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimplifiedCardTransactionDtoCopyWith<SimplifiedCardTransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedCardTransactionDtoCopyWith<$Res> {
  factory $SimplifiedCardTransactionDtoCopyWith(
          SimplifiedCardTransactionDto value, $Res Function(SimplifiedCardTransactionDto) then) =
      _$SimplifiedCardTransactionDtoCopyWithImpl<$Res, SimplifiedCardTransactionDto>;
  @useResult
  $Res call(
      {int movementId,
      @DateConverter() DateTime postingDate,
      @DateConverter() DateTime valueDate,
      double amount,
      String currencyCode,
      String? analyticsCategory,
      String? userCategory,
      int cardId,
      String responseCode,
      String concept,
      String postingTime,
      ProductTypeDto productType});
}

/// @nodoc
class _$SimplifiedCardTransactionDtoCopyWithImpl<$Res, $Val extends SimplifiedCardTransactionDto>
    implements $SimplifiedCardTransactionDtoCopyWith<$Res> {
  _$SimplifiedCardTransactionDtoCopyWithImpl(this._value, this._then);

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
    Object? amount = null,
    Object? currencyCode = null,
    Object? analyticsCategory = freezed,
    Object? userCategory = freezed,
    Object? cardId = null,
    Object? responseCode = null,
    Object? concept = null,
    Object? postingTime = null,
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
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      analyticsCategory: freezed == analyticsCategory
          ? _value.analyticsCategory
          : analyticsCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      userCategory: freezed == userCategory
          ? _value.userCategory
          : userCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      responseCode: null == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String,
      concept: null == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as String,
      postingTime: null == postingTime
          ? _value.postingTime
          : postingTime // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductTypeDto,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardTransactionDtoImplCopyWith<$Res>
    implements $SimplifiedCardTransactionDtoCopyWith<$Res> {
  factory _$$CardTransactionDtoImplCopyWith(
          _$CardTransactionDtoImpl value, $Res Function(_$CardTransactionDtoImpl) then) =
      __$$CardTransactionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int movementId,
      @DateConverter() DateTime postingDate,
      @DateConverter() DateTime valueDate,
      double amount,
      String currencyCode,
      String? analyticsCategory,
      String? userCategory,
      int cardId,
      String responseCode,
      String concept,
      String postingTime,
      ProductTypeDto productType});
}

/// @nodoc
class __$$CardTransactionDtoImplCopyWithImpl<$Res>
    extends _$SimplifiedCardTransactionDtoCopyWithImpl<$Res, _$CardTransactionDtoImpl>
    implements _$$CardTransactionDtoImplCopyWith<$Res> {
  __$$CardTransactionDtoImplCopyWithImpl(
      _$CardTransactionDtoImpl _value, $Res Function(_$CardTransactionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movementId = null,
    Object? postingDate = null,
    Object? valueDate = null,
    Object? amount = null,
    Object? currencyCode = null,
    Object? analyticsCategory = freezed,
    Object? userCategory = freezed,
    Object? cardId = null,
    Object? responseCode = null,
    Object? concept = null,
    Object? postingTime = null,
    Object? productType = null,
  }) {
    return _then(_$CardTransactionDtoImpl(
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
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      analyticsCategory: freezed == analyticsCategory
          ? _value.analyticsCategory
          : analyticsCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      userCategory: freezed == userCategory
          ? _value.userCategory
          : userCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      responseCode: null == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String,
      concept: null == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as String,
      postingTime: null == postingTime
          ? _value.postingTime
          : postingTime // ignore: cast_nullable_to_non_nullable
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
class _$CardTransactionDtoImpl implements _CardTransactionDto {
  const _$CardTransactionDtoImpl(
      {required this.movementId,
      @DateConverter() required this.postingDate,
      @DateConverter() required this.valueDate,
      required this.amount,
      required this.currencyCode,
      required this.analyticsCategory,
      required this.userCategory,
      required this.cardId,
      required this.responseCode,
      required this.concept,
      required this.postingTime,
      required this.productType});

  factory _$CardTransactionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardTransactionDtoImplFromJson(json);

  @override
  final int movementId;
  @override
  @DateConverter()
  final DateTime postingDate;
  @override
  @DateConverter()
  final DateTime valueDate;
  @override
  final double amount;
  @override
  final String currencyCode;
  @override
  final String? analyticsCategory;
  @override
  final String? userCategory;
  @override
  final int cardId;
  @override
  final String responseCode;
  @override
  final String concept;
  @override
  final String postingTime;
  @override
  final ProductTypeDto productType;

  @override
  String toString() {
    return 'SimplifiedCardTransactionDto(movementId: $movementId, postingDate: $postingDate, valueDate: $valueDate, amount: $amount, currencyCode: $currencyCode, analyticsCategory: $analyticsCategory, userCategory: $userCategory, cardId: $cardId, responseCode: $responseCode, concept: $concept, postingTime: $postingTime, productType: $productType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardTransactionDtoImpl &&
            (identical(other.movementId, movementId) || other.movementId == movementId) &&
            (identical(other.postingDate, postingDate) || other.postingDate == postingDate) &&
            (identical(other.valueDate, valueDate) || other.valueDate == valueDate) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode) &&
            (identical(other.analyticsCategory, analyticsCategory) ||
                other.analyticsCategory == analyticsCategory) &&
            (identical(other.userCategory, userCategory) || other.userCategory == userCategory) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.responseCode, responseCode) || other.responseCode == responseCode) &&
            (identical(other.concept, concept) || other.concept == concept) &&
            (identical(other.postingTime, postingTime) || other.postingTime == postingTime) &&
            (identical(other.productType, productType) || other.productType == productType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      movementId,
      postingDate,
      valueDate,
      amount,
      currencyCode,
      analyticsCategory,
      userCategory,
      cardId,
      responseCode,
      concept,
      postingTime,
      productType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardTransactionDtoImplCopyWith<_$CardTransactionDtoImpl> get copyWith =>
      __$$CardTransactionDtoImplCopyWithImpl<_$CardTransactionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardTransactionDtoImplToJson(
      this,
    );
  }
}

abstract class _CardTransactionDto implements SimplifiedCardTransactionDto {
  const factory _CardTransactionDto(
      {required final int movementId,
      @DateConverter() required final DateTime postingDate,
      @DateConverter() required final DateTime valueDate,
      required final double amount,
      required final String currencyCode,
      required final String? analyticsCategory,
      required final String? userCategory,
      required final int cardId,
      required final String responseCode,
      required final String concept,
      required final String postingTime,
      required final ProductTypeDto productType}) = _$CardTransactionDtoImpl;

  factory _CardTransactionDto.fromJson(Map<String, dynamic> json) =
      _$CardTransactionDtoImpl.fromJson;

  @override
  int get movementId;
  @override
  @DateConverter()
  DateTime get postingDate;
  @override
  @DateConverter()
  DateTime get valueDate;
  @override
  double get amount;
  @override
  String get currencyCode;
  @override
  String? get analyticsCategory;
  @override
  String? get userCategory;
  @override
  int get cardId;
  @override
  String get responseCode;
  @override
  String get concept;
  @override
  String get postingTime;
  @override
  ProductTypeDto get productType;
  @override
  @JsonKey(ignore: true)
  _$$CardTransactionDtoImplCopyWith<_$CardTransactionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
