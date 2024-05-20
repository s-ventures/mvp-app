// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_card_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailedCardDto _$DetailedCardDtoFromJson(Map<String, dynamic> json) {
  return _DetailedCardDto.fromJson(json);
}

/// @nodoc
mixin _$DetailedCardDto {
  int get cardId => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  CardTypeDto get cardType => throw _privateConstructorUsedError;
  String get cardName => throw _privateConstructorUsedError;
  String get createDate => throw _privateConstructorUsedError;
  String get deliveryDate => throw _privateConstructorUsedError;
  String get activateDate => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  CardStatusDto get status => throw _privateConstructorUsedError;
  String get cardEncryptedNumber => throw _privateConstructorUsedError;
  CardContractDto get cardContract => throw _privateConstructorUsedError;
  SimplifiedCardBalanceDto? get balance => throw _privateConstructorUsedError;
  String? get dueDate => throw _privateConstructorUsedError;
  String? get statusReason => throw _privateConstructorUsedError;
  String? get cvv => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedCardDtoCopyWith<DetailedCardDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedCardDtoCopyWith<$Res> {
  factory $DetailedCardDtoCopyWith(DetailedCardDto value, $Res Function(DetailedCardDto) then) =
      _$DetailedCardDtoCopyWithImpl<$Res, DetailedCardDto>;
  @useResult
  $Res call(
      {int cardId,
      String brand,
      CardTypeDto cardType,
      String cardName,
      String createDate,
      String deliveryDate,
      String activateDate,
      String currencyCode,
      CardStatusDto status,
      String cardEncryptedNumber,
      CardContractDto cardContract,
      SimplifiedCardBalanceDto? balance,
      String? dueDate,
      String? statusReason,
      String? cvv});

  $CardContractDtoCopyWith<$Res> get cardContract;
  $SimplifiedCardBalanceDtoCopyWith<$Res>? get balance;
}

/// @nodoc
class _$DetailedCardDtoCopyWithImpl<$Res, $Val extends DetailedCardDto>
    implements $DetailedCardDtoCopyWith<$Res> {
  _$DetailedCardDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
    Object? brand = null,
    Object? cardType = null,
    Object? cardName = null,
    Object? createDate = null,
    Object? deliveryDate = null,
    Object? activateDate = null,
    Object? currencyCode = null,
    Object? status = null,
    Object? cardEncryptedNumber = null,
    Object? cardContract = null,
    Object? balance = freezed,
    Object? dueDate = freezed,
    Object? statusReason = freezed,
    Object? cvv = freezed,
  }) {
    return _then(_value.copyWith(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardTypeDto,
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      activateDate: null == activateDate
          ? _value.activateDate
          : activateDate // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CardStatusDto,
      cardEncryptedNumber: null == cardEncryptedNumber
          ? _value.cardEncryptedNumber
          : cardEncryptedNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardContract: null == cardContract
          ? _value.cardContract
          : cardContract // ignore: cast_nullable_to_non_nullable
              as CardContractDto,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as SimplifiedCardBalanceDto?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardContractDtoCopyWith<$Res> get cardContract {
    return $CardContractDtoCopyWith<$Res>(_value.cardContract, (value) {
      return _then(_value.copyWith(cardContract: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SimplifiedCardBalanceDtoCopyWith<$Res>? get balance {
    if (_value.balance == null) {
      return null;
    }

    return $SimplifiedCardBalanceDtoCopyWith<$Res>(_value.balance!, (value) {
      return _then(_value.copyWith(balance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailedCardDtoImplCopyWith<$Res> implements $DetailedCardDtoCopyWith<$Res> {
  factory _$$DetailedCardDtoImplCopyWith(
          _$DetailedCardDtoImpl value, $Res Function(_$DetailedCardDtoImpl) then) =
      __$$DetailedCardDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int cardId,
      String brand,
      CardTypeDto cardType,
      String cardName,
      String createDate,
      String deliveryDate,
      String activateDate,
      String currencyCode,
      CardStatusDto status,
      String cardEncryptedNumber,
      CardContractDto cardContract,
      SimplifiedCardBalanceDto? balance,
      String? dueDate,
      String? statusReason,
      String? cvv});

  @override
  $CardContractDtoCopyWith<$Res> get cardContract;
  @override
  $SimplifiedCardBalanceDtoCopyWith<$Res>? get balance;
}

/// @nodoc
class __$$DetailedCardDtoImplCopyWithImpl<$Res>
    extends _$DetailedCardDtoCopyWithImpl<$Res, _$DetailedCardDtoImpl>
    implements _$$DetailedCardDtoImplCopyWith<$Res> {
  __$$DetailedCardDtoImplCopyWithImpl(
      _$DetailedCardDtoImpl _value, $Res Function(_$DetailedCardDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
    Object? brand = null,
    Object? cardType = null,
    Object? cardName = null,
    Object? createDate = null,
    Object? deliveryDate = null,
    Object? activateDate = null,
    Object? currencyCode = null,
    Object? status = null,
    Object? cardEncryptedNumber = null,
    Object? cardContract = null,
    Object? balance = freezed,
    Object? dueDate = freezed,
    Object? statusReason = freezed,
    Object? cvv = freezed,
  }) {
    return _then(_$DetailedCardDtoImpl(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardTypeDto,
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      activateDate: null == activateDate
          ? _value.activateDate
          : activateDate // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CardStatusDto,
      cardEncryptedNumber: null == cardEncryptedNumber
          ? _value.cardEncryptedNumber
          : cardEncryptedNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardContract: null == cardContract
          ? _value.cardContract
          : cardContract // ignore: cast_nullable_to_non_nullable
              as CardContractDto,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as SimplifiedCardBalanceDto?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedCardDtoImpl implements _DetailedCardDto {
  const _$DetailedCardDtoImpl(
      {required this.cardId,
      required this.brand,
      required this.cardType,
      required this.cardName,
      required this.createDate,
      required this.deliveryDate,
      required this.activateDate,
      required this.currencyCode,
      required this.status,
      required this.cardEncryptedNumber,
      required this.cardContract,
      required this.balance,
      required this.dueDate,
      required this.statusReason,
      required this.cvv});

  factory _$DetailedCardDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedCardDtoImplFromJson(json);

  @override
  final int cardId;
  @override
  final String brand;
  @override
  final CardTypeDto cardType;
  @override
  final String cardName;
  @override
  final String createDate;
  @override
  final String deliveryDate;
  @override
  final String activateDate;
  @override
  final String currencyCode;
  @override
  final CardStatusDto status;
  @override
  final String cardEncryptedNumber;
  @override
  final CardContractDto cardContract;
  @override
  final SimplifiedCardBalanceDto? balance;
  @override
  final String? dueDate;
  @override
  final String? statusReason;
  @override
  final String? cvv;

  @override
  String toString() {
    return 'DetailedCardDto(cardId: $cardId, brand: $brand, cardType: $cardType, cardName: $cardName, createDate: $createDate, deliveryDate: $deliveryDate, activateDate: $activateDate, currencyCode: $currencyCode, status: $status, cardEncryptedNumber: $cardEncryptedNumber, cardContract: $cardContract, balance: $balance, dueDate: $dueDate, statusReason: $statusReason, cvv: $cvv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedCardDtoImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.cardType, cardType) || other.cardType == cardType) &&
            (identical(other.cardName, cardName) || other.cardName == cardName) &&
            (identical(other.createDate, createDate) || other.createDate == createDate) &&
            (identical(other.deliveryDate, deliveryDate) || other.deliveryDate == deliveryDate) &&
            (identical(other.activateDate, activateDate) || other.activateDate == activateDate) &&
            (identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cardEncryptedNumber, cardEncryptedNumber) ||
                other.cardEncryptedNumber == cardEncryptedNumber) &&
            (identical(other.cardContract, cardContract) || other.cardContract == cardContract) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.statusReason, statusReason) || other.statusReason == statusReason) &&
            (identical(other.cvv, cvv) || other.cvv == cvv));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cardId,
      brand,
      cardType,
      cardName,
      createDate,
      deliveryDate,
      activateDate,
      currencyCode,
      status,
      cardEncryptedNumber,
      cardContract,
      balance,
      dueDate,
      statusReason,
      cvv);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedCardDtoImplCopyWith<_$DetailedCardDtoImpl> get copyWith =>
      __$$DetailedCardDtoImplCopyWithImpl<_$DetailedCardDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedCardDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailedCardDto implements DetailedCardDto {
  const factory _DetailedCardDto(
      {required final int cardId,
      required final String brand,
      required final CardTypeDto cardType,
      required final String cardName,
      required final String createDate,
      required final String deliveryDate,
      required final String activateDate,
      required final String currencyCode,
      required final CardStatusDto status,
      required final String cardEncryptedNumber,
      required final CardContractDto cardContract,
      required final SimplifiedCardBalanceDto? balance,
      required final String? dueDate,
      required final String? statusReason,
      required final String? cvv}) = _$DetailedCardDtoImpl;

  factory _DetailedCardDto.fromJson(Map<String, dynamic> json) = _$DetailedCardDtoImpl.fromJson;

  @override
  int get cardId;
  @override
  String get brand;
  @override
  CardTypeDto get cardType;
  @override
  String get cardName;
  @override
  String get createDate;
  @override
  String get deliveryDate;
  @override
  String get activateDate;
  @override
  String get currencyCode;
  @override
  CardStatusDto get status;
  @override
  String get cardEncryptedNumber;
  @override
  CardContractDto get cardContract;
  @override
  SimplifiedCardBalanceDto? get balance;
  @override
  String? get dueDate;
  @override
  String? get statusReason;
  @override
  String? get cvv;
  @override
  @JsonKey(ignore: true)
  _$$DetailedCardDtoImplCopyWith<_$DetailedCardDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
