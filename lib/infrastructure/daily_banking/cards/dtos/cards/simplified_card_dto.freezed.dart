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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimplifiedCardDto _$SimplifiedCardDtoFromJson(Map<String, dynamic> json) {
  return _SimplifiedCardDto.fromJson(json);
}

/// @nodoc
mixin _$SimplifiedCardDto {
  int get cardId => throw _privateConstructorUsedError;
  String get alias => throw _privateConstructorUsedError;
  CardTypeDto get cardType => throw _privateConstructorUsedError;
  CardStatusDto get status => throw _privateConstructorUsedError;
  String get cardName => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get cardEncryptedNumber => throw _privateConstructorUsedError;
  CardCategoryDto get category => throw _privateConstructorUsedError;
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
      String alias,
      CardTypeDto cardType,
      CardStatusDto status,
      String cardName,
      String brand,
      String cardEncryptedNumber,
      CardCategoryDto category,
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
    Object? alias = null,
    Object? cardType = null,
    Object? status = null,
    Object? cardName = null,
    Object? brand = null,
    Object? cardEncryptedNumber = null,
    Object? category = null,
    Object? cardContract = null,
  }) {
    return _then(_value.copyWith(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardTypeDto,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CardStatusDto,
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      cardEncryptedNumber: null == cardEncryptedNumber
          ? _value.cardEncryptedNumber
          : cardEncryptedNumber // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CardCategoryDto,
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
      String alias,
      CardTypeDto cardType,
      CardStatusDto status,
      String cardName,
      String brand,
      String cardEncryptedNumber,
      CardCategoryDto category,
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
    Object? alias = null,
    Object? cardType = null,
    Object? status = null,
    Object? cardName = null,
    Object? brand = null,
    Object? cardEncryptedNumber = null,
    Object? category = null,
    Object? cardContract = null,
  }) {
    return _then(_$SimplifiedCardDtoImpl(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardTypeDto,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CardStatusDto,
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      cardEncryptedNumber: null == cardEncryptedNumber
          ? _value.cardEncryptedNumber
          : cardEncryptedNumber // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CardCategoryDto,
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
      required this.alias,
      required this.cardType,
      required this.status,
      required this.cardName,
      required this.brand,
      required this.cardEncryptedNumber,
      required this.category,
      required this.cardContract});

  factory _$SimplifiedCardDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimplifiedCardDtoImplFromJson(json);

  @override
  final int cardId;
  @override
  final String alias;
  @override
  final CardTypeDto cardType;
  @override
  final CardStatusDto status;
  @override
  final String cardName;
  @override
  final String brand;
  @override
  final String cardEncryptedNumber;
  @override
  final CardCategoryDto category;
  @override
  final CardContractDto cardContract;

  @override
  String toString() {
    return 'SimplifiedCardDto(cardId: $cardId, alias: $alias, cardType: $cardType, status: $status, cardName: $cardName, brand: $brand, cardEncryptedNumber: $cardEncryptedNumber, category: $category, cardContract: $cardContract)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedCardDtoImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cardName, cardName) ||
                other.cardName == cardName) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.cardEncryptedNumber, cardEncryptedNumber) ||
                other.cardEncryptedNumber == cardEncryptedNumber) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.cardContract, cardContract) ||
                other.cardContract == cardContract));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardId, alias, cardType, status,
      cardName, brand, cardEncryptedNumber, category, cardContract);

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
      required final String alias,
      required final CardTypeDto cardType,
      required final CardStatusDto status,
      required final String cardName,
      required final String brand,
      required final String cardEncryptedNumber,
      required final CardCategoryDto category,
      required final CardContractDto cardContract}) = _$SimplifiedCardDtoImpl;

  factory _SimplifiedCardDto.fromJson(Map<String, dynamic> json) =
      _$SimplifiedCardDtoImpl.fromJson;

  @override
  int get cardId;
  @override
  String get alias;
  @override
  CardTypeDto get cardType;
  @override
  CardStatusDto get status;
  @override
  String get cardName;
  @override
  String get brand;
  @override
  String get cardEncryptedNumber;
  @override
  CardCategoryDto get category;
  @override
  CardContractDto get cardContract;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedCardDtoImplCopyWith<_$SimplifiedCardDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
