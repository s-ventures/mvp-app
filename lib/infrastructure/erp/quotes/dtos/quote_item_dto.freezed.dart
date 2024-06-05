// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuoteItemDto _$QuoteItemDtoFromJson(Map<String, dynamic> json) {
  return _QuoteItemDto.fromJson(json);
}

/// @nodoc
mixin _$QuoteItemDto {
  int get relativeOrder => throw _privateConstructorUsedError;
  String get itemCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  UnitOfMeasureDto get unitOfMeasure => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  VatDto get vat => throw _privateConstructorUsedError;
  int get quotationItemId => throw _privateConstructorUsedError;
  int get quotationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteItemDtoCopyWith<QuoteItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteItemDtoCopyWith<$Res> {
  factory $QuoteItemDtoCopyWith(
          QuoteItemDto value, $Res Function(QuoteItemDto) then) =
      _$QuoteItemDtoCopyWithImpl<$Res, QuoteItemDto>;
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      UnitOfMeasureDto unitOfMeasure,
      double price,
      double discount,
      VatDto vat,
      int quotationItemId,
      int quotationId});

  $VatDtoCopyWith<$Res> get vat;
}

/// @nodoc
class _$QuoteItemDtoCopyWithImpl<$Res, $Val extends QuoteItemDto>
    implements $QuoteItemDtoCopyWith<$Res> {
  _$QuoteItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relativeOrder = null,
    Object? itemCode = null,
    Object? description = null,
    Object? quantity = null,
    Object? unitOfMeasure = null,
    Object? price = null,
    Object? discount = null,
    Object? vat = null,
    Object? quotationItemId = null,
    Object? quotationId = null,
  }) {
    return _then(_value.copyWith(
      relativeOrder: null == relativeOrder
          ? _value.relativeOrder
          : relativeOrder // ignore: cast_nullable_to_non_nullable
              as int,
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitOfMeasure: null == unitOfMeasure
          ? _value.unitOfMeasure
          : unitOfMeasure // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasureDto,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as VatDto,
      quotationItemId: null == quotationItemId
          ? _value.quotationItemId
          : quotationItemId // ignore: cast_nullable_to_non_nullable
              as int,
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VatDtoCopyWith<$Res> get vat {
    return $VatDtoCopyWith<$Res>(_value.vat, (value) {
      return _then(_value.copyWith(vat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuoteItemDtoImplCopyWith<$Res>
    implements $QuoteItemDtoCopyWith<$Res> {
  factory _$$QuoteItemDtoImplCopyWith(
          _$QuoteItemDtoImpl value, $Res Function(_$QuoteItemDtoImpl) then) =
      __$$QuoteItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      UnitOfMeasureDto unitOfMeasure,
      double price,
      double discount,
      VatDto vat,
      int quotationItemId,
      int quotationId});

  @override
  $VatDtoCopyWith<$Res> get vat;
}

/// @nodoc
class __$$QuoteItemDtoImplCopyWithImpl<$Res>
    extends _$QuoteItemDtoCopyWithImpl<$Res, _$QuoteItemDtoImpl>
    implements _$$QuoteItemDtoImplCopyWith<$Res> {
  __$$QuoteItemDtoImplCopyWithImpl(
      _$QuoteItemDtoImpl _value, $Res Function(_$QuoteItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relativeOrder = null,
    Object? itemCode = null,
    Object? description = null,
    Object? quantity = null,
    Object? unitOfMeasure = null,
    Object? price = null,
    Object? discount = null,
    Object? vat = null,
    Object? quotationItemId = null,
    Object? quotationId = null,
  }) {
    return _then(_$QuoteItemDtoImpl(
      relativeOrder: null == relativeOrder
          ? _value.relativeOrder
          : relativeOrder // ignore: cast_nullable_to_non_nullable
              as int,
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitOfMeasure: null == unitOfMeasure
          ? _value.unitOfMeasure
          : unitOfMeasure // ignore: cast_nullable_to_non_nullable
              as UnitOfMeasureDto,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as VatDto,
      quotationItemId: null == quotationItemId
          ? _value.quotationItemId
          : quotationItemId // ignore: cast_nullable_to_non_nullable
              as int,
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuoteItemDtoImpl implements _QuoteItemDto {
  const _$QuoteItemDtoImpl(
      {required this.relativeOrder,
      required this.itemCode,
      required this.description,
      required this.quantity,
      required this.unitOfMeasure,
      required this.price,
      required this.discount,
      required this.vat,
      required this.quotationItemId,
      required this.quotationId});

  factory _$QuoteItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteItemDtoImplFromJson(json);

  @override
  final int relativeOrder;
  @override
  final String itemCode;
  @override
  final String description;
  @override
  final int quantity;
  @override
  final UnitOfMeasureDto unitOfMeasure;
  @override
  final double price;
  @override
  final double discount;
  @override
  final VatDto vat;
  @override
  final int quotationItemId;
  @override
  final int quotationId;

  @override
  String toString() {
    return 'QuoteItemDto(relativeOrder: $relativeOrder, itemCode: $itemCode, description: $description, quantity: $quantity, unitOfMeasure: $unitOfMeasure, price: $price, discount: $discount, vat: $vat, quotationItemId: $quotationItemId, quotationId: $quotationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteItemDtoImpl &&
            (identical(other.relativeOrder, relativeOrder) ||
                other.relativeOrder == relativeOrder) &&
            (identical(other.itemCode, itemCode) ||
                other.itemCode == itemCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitOfMeasure, unitOfMeasure) ||
                other.unitOfMeasure == unitOfMeasure) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.quotationItemId, quotationItemId) ||
                other.quotationItemId == quotationItemId) &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      relativeOrder,
      itemCode,
      description,
      quantity,
      unitOfMeasure,
      price,
      discount,
      vat,
      quotationItemId,
      quotationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteItemDtoImplCopyWith<_$QuoteItemDtoImpl> get copyWith =>
      __$$QuoteItemDtoImplCopyWithImpl<_$QuoteItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteItemDtoImplToJson(
      this,
    );
  }
}

abstract class _QuoteItemDto implements QuoteItemDto {
  const factory _QuoteItemDto(
      {required final int relativeOrder,
      required final String itemCode,
      required final String description,
      required final int quantity,
      required final UnitOfMeasureDto unitOfMeasure,
      required final double price,
      required final double discount,
      required final VatDto vat,
      required final int quotationItemId,
      required final int quotationId}) = _$QuoteItemDtoImpl;

  factory _QuoteItemDto.fromJson(Map<String, dynamic> json) =
      _$QuoteItemDtoImpl.fromJson;

  @override
  int get relativeOrder;
  @override
  String get itemCode;
  @override
  String get description;
  @override
  int get quantity;
  @override
  UnitOfMeasureDto get unitOfMeasure;
  @override
  double get price;
  @override
  double get discount;
  @override
  VatDto get vat;
  @override
  int get quotationItemId;
  @override
  int get quotationId;
  @override
  @JsonKey(ignore: true)
  _$$QuoteItemDtoImplCopyWith<_$QuoteItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
