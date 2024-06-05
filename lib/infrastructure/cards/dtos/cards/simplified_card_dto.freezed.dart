// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_card_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimplifiedCardDto _$SimplifiedCardDtoFromJson(Map<String, dynamic> json) {
  return _SimplifiedCardDto.fromJson(json);
}

/// @nodoc
mixin _$SimplifiedCardDto {
  int get cardId => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  CardTypeDto get cardType => throw _privateConstructorUsedError;
  String get cardName => throw _privateConstructorUsedError;
  CardStatusDto get status => throw _privateConstructorUsedError;
  String get cardEncryptedNumber => throw _privateConstructorUsedError;
  CardContractDto get cardContract => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimplifiedCardDtoCopyWith<SimplifiedCardDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedCardDtoCopyWith<$Res> {
  factory $SimplifiedCardDtoCopyWith(
          SimplifiedCardDto value, $Res Function(SimplifiedCardDto) then) =
      _$SimplifiedCardDtoCopyWithImpl<$Res, SimplifiedCardDto>;
  @useResult
  $Res call(
      {int cardId,
      String brand,
      CardTypeDto cardType,
      String cardName,
      CardStatusDto status,
      String cardEncryptedNumber,
      CardContractDto cardContract});

  $CardContractDtoCopyWith<$Res> get cardContract;
}

/// @nodoc
class _$SimplifiedCardDtoCopyWithImpl<$Res, $Val extends SimplifiedCardDto>
    implements $SimplifiedCardDtoCopyWith<$Res> {
  _$SimplifiedCardDtoCopyWithImpl(this._value, this._then);

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
    Object? status = null,
    Object? cardEncryptedNumber = null,
    Object? cardContract = null,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardContractDtoCopyWith<$Res> get cardContract {
    return $CardContractDtoCopyWith<$Res>(_value.cardContract, (value) {
      return _then(_value.copyWith(cardContract: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SimplifiedCardDtoImplCopyWith<$Res>
    implements $SimplifiedCardDtoCopyWith<$Res> {
  factory _$$SimplifiedCardDtoImplCopyWith(_$SimplifiedCardDtoImpl value,
          $Res Function(_$SimplifiedCardDtoImpl) then) =
      __$$SimplifiedCardDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int cardId,
      String brand,
      CardTypeDto cardType,
      String cardName,
      CardStatusDto status,
      String cardEncryptedNumber,
      CardContractDto cardContract});

  @override
  $CardContractDtoCopyWith<$Res> get cardContract;
}

/// @nodoc
class __$$SimplifiedCardDtoImplCopyWithImpl<$Res>
    extends _$SimplifiedCardDtoCopyWithImpl<$Res, _$SimplifiedCardDtoImpl>
    implements _$$SimplifiedCardDtoImplCopyWith<$Res> {
  __$$SimplifiedCardDtoImplCopyWithImpl(_$SimplifiedCardDtoImpl _value,
      $Res Function(_$SimplifiedCardDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
    Object? brand = null,
    Object? cardType = null,
    Object? cardName = null,
    Object? status = null,
    Object? cardEncryptedNumber = null,
    Object? cardContract = null,
  }) {
    return _then(_$SimplifiedCardDtoImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimplifiedCardDtoImpl implements _SimplifiedCardDto {
  const _$SimplifiedCardDtoImpl(
      {required this.cardId,
      required this.brand,
      required this.cardType,
      required this.cardName,
      required this.status,
      required this.cardEncryptedNumber,
      required this.cardContract});

  factory _$SimplifiedCardDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimplifiedCardDtoImplFromJson(json);

  @override
  final int cardId;
  @override
  final String brand;
  @override
  final CardTypeDto cardType;
  @override
  final String cardName;
  @override
  final CardStatusDto status;
  @override
  final String cardEncryptedNumber;
  @override
  final CardContractDto cardContract;

  @override
  String toString() {
    return 'SimplifiedCardDto(cardId: $cardId, brand: $brand, cardType: $cardType, cardName: $cardName, status: $status, cardEncryptedNumber: $cardEncryptedNumber, cardContract: $cardContract)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedCardDtoImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.cardName, cardName) ||
                other.cardName == cardName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cardEncryptedNumber, cardEncryptedNumber) ||
                other.cardEncryptedNumber == cardEncryptedNumber) &&
            (identical(other.cardContract, cardContract) ||
                other.cardContract == cardContract));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardId, brand, cardType,
      cardName, status, cardEncryptedNumber, cardContract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedCardDtoImplCopyWith<_$SimplifiedCardDtoImpl> get copyWith =>
      __$$SimplifiedCardDtoImplCopyWithImpl<_$SimplifiedCardDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimplifiedCardDtoImplToJson(
      this,
    );
  }
}

abstract class _SimplifiedCardDto implements SimplifiedCardDto {
  const factory _SimplifiedCardDto(
      {required final int cardId,
      required final String brand,
      required final CardTypeDto cardType,
      required final String cardName,
      required final CardStatusDto status,
      required final String cardEncryptedNumber,
      required final CardContractDto cardContract}) = _$SimplifiedCardDtoImpl;

  factory _SimplifiedCardDto.fromJson(Map<String, dynamic> json) =
      _$SimplifiedCardDtoImpl.fromJson;

  @override
  int get cardId;
  @override
  String get brand;
  @override
  CardTypeDto get cardType;
  @override
  String get cardName;
  @override
  CardStatusDto get status;
  @override
  String get cardEncryptedNumber;
  @override
  CardContractDto get cardContract;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedCardDtoImplCopyWith<_$SimplifiedCardDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
