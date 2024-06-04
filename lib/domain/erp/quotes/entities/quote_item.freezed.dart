// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuoteItem {
  int get relativeOrder => throw _privateConstructorUsedError;
  String get itemCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  UnitOfMeasure get unitOfMeasure => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  Vat get vat => throw _privateConstructorUsedError;
  UniqueId get quotationItemId => throw _privateConstructorUsedError;
  UniqueId get quotationId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuoteItemCopyWith<QuoteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteItemCopyWith<$Res> {
  factory $QuoteItemCopyWith(QuoteItem value, $Res Function(QuoteItem) then) =
      _$QuoteItemCopyWithImpl<$Res, QuoteItem>;
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      UnitOfMeasure unitOfMeasure,
      double price,
      double discount,
      Vat vat,
      UniqueId quotationItemId,
      UniqueId quotationId});

  $VatCopyWith<$Res> get vat;
}

/// @nodoc
class _$QuoteItemCopyWithImpl<$Res, $Val extends QuoteItem>
    implements $QuoteItemCopyWith<$Res> {
  _$QuoteItemCopyWithImpl(this._value, this._then);

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
              as UnitOfMeasure,
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
              as Vat,
      quotationItemId: null == quotationItemId
          ? _value.quotationItemId
          : quotationItemId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VatCopyWith<$Res> get vat {
    return $VatCopyWith<$Res>(_value.vat, (value) {
      return _then(_value.copyWith(vat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuoteItemImplCopyWith<$Res>
    implements $QuoteItemCopyWith<$Res> {
  factory _$$QuoteItemImplCopyWith(
          _$QuoteItemImpl value, $Res Function(_$QuoteItemImpl) then) =
      __$$QuoteItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      UnitOfMeasure unitOfMeasure,
      double price,
      double discount,
      Vat vat,
      UniqueId quotationItemId,
      UniqueId quotationId});

  @override
  $VatCopyWith<$Res> get vat;
}

/// @nodoc
class __$$QuoteItemImplCopyWithImpl<$Res>
    extends _$QuoteItemCopyWithImpl<$Res, _$QuoteItemImpl>
    implements _$$QuoteItemImplCopyWith<$Res> {
  __$$QuoteItemImplCopyWithImpl(
      _$QuoteItemImpl _value, $Res Function(_$QuoteItemImpl) _then)
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
    return _then(_$QuoteItemImpl(
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
              as UnitOfMeasure,
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
              as Vat,
      quotationItemId: null == quotationItemId
          ? _value.quotationItemId
          : quotationItemId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$QuoteItemImpl implements _QuoteItem {
  const _$QuoteItemImpl(
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

  @override
  final int relativeOrder;
  @override
  final String itemCode;
  @override
  final String description;
  @override
  final int quantity;
  @override
  final UnitOfMeasure unitOfMeasure;
  @override
  final double price;
  @override
  final double discount;
  @override
  final Vat vat;
  @override
  final UniqueId quotationItemId;
  @override
  final UniqueId quotationId;

  @override
  String toString() {
    return 'QuoteItem(relativeOrder: $relativeOrder, itemCode: $itemCode, description: $description, quantity: $quantity, unitOfMeasure: $unitOfMeasure, price: $price, discount: $discount, vat: $vat, quotationItemId: $quotationItemId, quotationId: $quotationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteItemImpl &&
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
  _$$QuoteItemImplCopyWith<_$QuoteItemImpl> get copyWith =>
      __$$QuoteItemImplCopyWithImpl<_$QuoteItemImpl>(this, _$identity);
}

abstract class _QuoteItem implements QuoteItem {
  const factory _QuoteItem(
      {required final int relativeOrder,
      required final String itemCode,
      required final String description,
      required final int quantity,
      required final UnitOfMeasure unitOfMeasure,
      required final double price,
      required final double discount,
      required final Vat vat,
      required final UniqueId quotationItemId,
      required final UniqueId quotationId}) = _$QuoteItemImpl;

  @override
  int get relativeOrder;
  @override
  String get itemCode;
  @override
  String get description;
  @override
  int get quantity;
  @override
  UnitOfMeasure get unitOfMeasure;
  @override
  double get price;
  @override
  double get discount;
  @override
  Vat get vat;
  @override
  UniqueId get quotationItemId;
  @override
  UniqueId get quotationId;
  @override
  @JsonKey(ignore: true)
  _$$QuoteItemImplCopyWith<_$QuoteItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
