// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceItem {
  int get relativeOrder => throw _privateConstructorUsedError;
  String get itemCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  UnitOfMeasure get unitOfMeasure => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  Vat get vat => throw _privateConstructorUsedError;
  UniqueId get invoiceItemId => throw _privateConstructorUsedError;
  UniqueId get invoiceId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceItemCopyWith<InvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceItemCopyWith<$Res> {
  factory $InvoiceItemCopyWith(
          InvoiceItem value, $Res Function(InvoiceItem) then) =
      _$InvoiceItemCopyWithImpl<$Res, InvoiceItem>;
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
      UniqueId invoiceItemId,
      UniqueId invoiceId});

  $VatCopyWith<$Res> get vat;
}

/// @nodoc
class _$InvoiceItemCopyWithImpl<$Res, $Val extends InvoiceItem>
    implements $InvoiceItemCopyWith<$Res> {
  _$InvoiceItemCopyWithImpl(this._value, this._then);

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
    Object? invoiceItemId = null,
    Object? invoiceId = null,
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
      invoiceItemId: null == invoiceItemId
          ? _value.invoiceItemId
          : invoiceItemId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$InvoiceItemImplCopyWith<$Res>
    implements $InvoiceItemCopyWith<$Res> {
  factory _$$InvoiceItemImplCopyWith(
          _$InvoiceItemImpl value, $Res Function(_$InvoiceItemImpl) then) =
      __$$InvoiceItemImplCopyWithImpl<$Res>;
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
      UniqueId invoiceItemId,
      UniqueId invoiceId});

  @override
  $VatCopyWith<$Res> get vat;
}

/// @nodoc
class __$$InvoiceItemImplCopyWithImpl<$Res>
    extends _$InvoiceItemCopyWithImpl<$Res, _$InvoiceItemImpl>
    implements _$$InvoiceItemImplCopyWith<$Res> {
  __$$InvoiceItemImplCopyWithImpl(
      _$InvoiceItemImpl _value, $Res Function(_$InvoiceItemImpl) _then)
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
    Object? invoiceItemId = null,
    Object? invoiceId = null,
  }) {
    return _then(_$InvoiceItemImpl(
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
      invoiceItemId: null == invoiceItemId
          ? _value.invoiceItemId
          : invoiceItemId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$InvoiceItemImpl implements _InvoiceItem {
  const _$InvoiceItemImpl(
      {required this.relativeOrder,
      required this.itemCode,
      required this.description,
      required this.quantity,
      required this.unitOfMeasure,
      required this.price,
      required this.discount,
      required this.vat,
      required this.invoiceItemId,
      required this.invoiceId});

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
  final UniqueId invoiceItemId;
  @override
  final UniqueId invoiceId;

  @override
  String toString() {
    return 'InvoiceItem(relativeOrder: $relativeOrder, itemCode: $itemCode, description: $description, quantity: $quantity, unitOfMeasure: $unitOfMeasure, price: $price, discount: $discount, vat: $vat, invoiceItemId: $invoiceItemId, invoiceId: $invoiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceItemImpl &&
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
            (identical(other.invoiceItemId, invoiceItemId) ||
                other.invoiceItemId == invoiceItemId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId));
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
      invoiceItemId,
      invoiceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceItemImplCopyWith<_$InvoiceItemImpl> get copyWith =>
      __$$InvoiceItemImplCopyWithImpl<_$InvoiceItemImpl>(this, _$identity);
}

abstract class _InvoiceItem implements InvoiceItem {
  const factory _InvoiceItem(
      {required final int relativeOrder,
      required final String itemCode,
      required final String description,
      required final int quantity,
      required final UnitOfMeasure unitOfMeasure,
      required final double price,
      required final double discount,
      required final Vat vat,
      required final UniqueId invoiceItemId,
      required final UniqueId invoiceId}) = _$InvoiceItemImpl;

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
  UniqueId get invoiceItemId;
  @override
  UniqueId get invoiceId;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceItemImplCopyWith<_$InvoiceItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
