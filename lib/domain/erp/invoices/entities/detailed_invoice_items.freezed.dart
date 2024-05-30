// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_invoice_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedInvoiceItem {
  int get relativeOrder => throw _privateConstructorUsedError;
  String get itemCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  DetailedInvoiceItemUnitOfMeasure get unitOfMeasure =>
      throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  DetailedInvoiceItemVat get vat => throw _privateConstructorUsedError;
  UniqueId get invoiceItemId => throw _privateConstructorUsedError;
  UniqueId get invoiceId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedInvoiceItemCopyWith<DetailedInvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedInvoiceItemCopyWith<$Res> {
  factory $DetailedInvoiceItemCopyWith(
          DetailedInvoiceItem value, $Res Function(DetailedInvoiceItem) then) =
      _$DetailedInvoiceItemCopyWithImpl<$Res, DetailedInvoiceItem>;
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      DetailedInvoiceItemUnitOfMeasure unitOfMeasure,
      double price,
      double discount,
      DetailedInvoiceItemVat vat,
      UniqueId invoiceItemId,
      UniqueId invoiceId});

  $DetailedInvoiceItemVatCopyWith<$Res> get vat;
}

/// @nodoc
class _$DetailedInvoiceItemCopyWithImpl<$Res, $Val extends DetailedInvoiceItem>
    implements $DetailedInvoiceItemCopyWith<$Res> {
  _$DetailedInvoiceItemCopyWithImpl(this._value, this._then);

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
              as DetailedInvoiceItemUnitOfMeasure,
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
              as DetailedInvoiceItemVat,
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
  $DetailedInvoiceItemVatCopyWith<$Res> get vat {
    return $DetailedInvoiceItemVatCopyWith<$Res>(_value.vat, (value) {
      return _then(_value.copyWith(vat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailedInvoiceItemImplCopyWith<$Res>
    implements $DetailedInvoiceItemCopyWith<$Res> {
  factory _$$DetailedInvoiceItemImplCopyWith(_$DetailedInvoiceItemImpl value,
          $Res Function(_$DetailedInvoiceItemImpl) then) =
      __$$DetailedInvoiceItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      DetailedInvoiceItemUnitOfMeasure unitOfMeasure,
      double price,
      double discount,
      DetailedInvoiceItemVat vat,
      UniqueId invoiceItemId,
      UniqueId invoiceId});

  @override
  $DetailedInvoiceItemVatCopyWith<$Res> get vat;
}

/// @nodoc
class __$$DetailedInvoiceItemImplCopyWithImpl<$Res>
    extends _$DetailedInvoiceItemCopyWithImpl<$Res, _$DetailedInvoiceItemImpl>
    implements _$$DetailedInvoiceItemImplCopyWith<$Res> {
  __$$DetailedInvoiceItemImplCopyWithImpl(_$DetailedInvoiceItemImpl _value,
      $Res Function(_$DetailedInvoiceItemImpl) _then)
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
    return _then(_$DetailedInvoiceItemImpl(
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
              as DetailedInvoiceItemUnitOfMeasure,
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
              as DetailedInvoiceItemVat,
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

class _$DetailedInvoiceItemImpl implements _DetailedInvoiceItem {
  const _$DetailedInvoiceItemImpl(
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
  final DetailedInvoiceItemUnitOfMeasure unitOfMeasure;
  @override
  final double price;
  @override
  final double discount;
  @override
  final DetailedInvoiceItemVat vat;
  @override
  final UniqueId invoiceItemId;
  @override
  final UniqueId invoiceId;

  @override
  String toString() {
    return 'DetailedInvoiceItem(relativeOrder: $relativeOrder, itemCode: $itemCode, description: $description, quantity: $quantity, unitOfMeasure: $unitOfMeasure, price: $price, discount: $discount, vat: $vat, invoiceItemId: $invoiceItemId, invoiceId: $invoiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedInvoiceItemImpl &&
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
  _$$DetailedInvoiceItemImplCopyWith<_$DetailedInvoiceItemImpl> get copyWith =>
      __$$DetailedInvoiceItemImplCopyWithImpl<_$DetailedInvoiceItemImpl>(
          this, _$identity);
}

abstract class _DetailedInvoiceItem implements DetailedInvoiceItem {
  const factory _DetailedInvoiceItem(
      {required final int relativeOrder,
      required final String itemCode,
      required final String description,
      required final int quantity,
      required final DetailedInvoiceItemUnitOfMeasure unitOfMeasure,
      required final double price,
      required final double discount,
      required final DetailedInvoiceItemVat vat,
      required final UniqueId invoiceItemId,
      required final UniqueId invoiceId}) = _$DetailedInvoiceItemImpl;

  @override
  int get relativeOrder;
  @override
  String get itemCode;
  @override
  String get description;
  @override
  int get quantity;
  @override
  DetailedInvoiceItemUnitOfMeasure get unitOfMeasure;
  @override
  double get price;
  @override
  double get discount;
  @override
  DetailedInvoiceItemVat get vat;
  @override
  UniqueId get invoiceItemId;
  @override
  UniqueId get invoiceId;
  @override
  @JsonKey(ignore: true)
  _$$DetailedInvoiceItemImplCopyWith<_$DetailedInvoiceItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
