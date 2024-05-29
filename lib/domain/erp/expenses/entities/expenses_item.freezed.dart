// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpensesItem {
  int get relativeOrder => throw _privateConstructorUsedError;
  String get itemCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  ExpensesUnitOfMeasure get unitOfMeasure => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discount =>
      throw _privateConstructorUsedError; // required Vat vat,
  ExpensesVat get vat => throw _privateConstructorUsedError;
  int get vatAmount => throw _privateConstructorUsedError;
  UniqueId get expenseItemsId => throw _privateConstructorUsedError;
  UniqueId get expenseId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpensesItemCopyWith<ExpensesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesItemCopyWith<$Res> {
  factory $ExpensesItemCopyWith(
          ExpensesItem value, $Res Function(ExpensesItem) then) =
      _$ExpensesItemCopyWithImpl<$Res, ExpensesItem>;
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      ExpensesUnitOfMeasure unitOfMeasure,
      double price,
      double discount,
      ExpensesVat vat,
      int vatAmount,
      UniqueId expenseItemsId,
      UniqueId expenseId});

  $ExpensesVatCopyWith<$Res> get vat;
}

/// @nodoc
class _$ExpensesItemCopyWithImpl<$Res, $Val extends ExpensesItem>
    implements $ExpensesItemCopyWith<$Res> {
  _$ExpensesItemCopyWithImpl(this._value, this._then);

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
    Object? vatAmount = null,
    Object? expenseItemsId = null,
    Object? expenseId = null,
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
              as ExpensesUnitOfMeasure,
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
              as ExpensesVat,
      vatAmount: null == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expenseItemsId: null == expenseItemsId
          ? _value.expenseItemsId
          : expenseItemsId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpensesVatCopyWith<$Res> get vat {
    return $ExpensesVatCopyWith<$Res>(_value.vat, (value) {
      return _then(_value.copyWith(vat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpensesItemImplCopyWith<$Res>
    implements $ExpensesItemCopyWith<$Res> {
  factory _$$ExpensesItemImplCopyWith(
          _$ExpensesItemImpl value, $Res Function(_$ExpensesItemImpl) then) =
      __$$ExpensesItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      ExpensesUnitOfMeasure unitOfMeasure,
      double price,
      double discount,
      ExpensesVat vat,
      int vatAmount,
      UniqueId expenseItemsId,
      UniqueId expenseId});

  @override
  $ExpensesVatCopyWith<$Res> get vat;
}

/// @nodoc
class __$$ExpensesItemImplCopyWithImpl<$Res>
    extends _$ExpensesItemCopyWithImpl<$Res, _$ExpensesItemImpl>
    implements _$$ExpensesItemImplCopyWith<$Res> {
  __$$ExpensesItemImplCopyWithImpl(
      _$ExpensesItemImpl _value, $Res Function(_$ExpensesItemImpl) _then)
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
    Object? vatAmount = null,
    Object? expenseItemsId = null,
    Object? expenseId = null,
  }) {
    return _then(_$ExpensesItemImpl(
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
              as ExpensesUnitOfMeasure,
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
              as ExpensesVat,
      vatAmount: null == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expenseItemsId: null == expenseItemsId
          ? _value.expenseItemsId
          : expenseItemsId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$ExpensesItemImpl implements _ExpensesItem {
  const _$ExpensesItemImpl(
      {required this.relativeOrder,
      required this.itemCode,
      required this.description,
      required this.quantity,
      required this.unitOfMeasure,
      required this.price,
      required this.discount,
      required this.vat,
      required this.vatAmount,
      required this.expenseItemsId,
      required this.expenseId});

  @override
  final int relativeOrder;
  @override
  final String itemCode;
  @override
  final String description;
  @override
  final int quantity;
  @override
  final ExpensesUnitOfMeasure unitOfMeasure;
  @override
  final double price;
  @override
  final double discount;
// required Vat vat,
  @override
  final ExpensesVat vat;
  @override
  final int vatAmount;
  @override
  final UniqueId expenseItemsId;
  @override
  final UniqueId expenseId;

  @override
  String toString() {
    return 'ExpensesItem(relativeOrder: $relativeOrder, itemCode: $itemCode, description: $description, quantity: $quantity, unitOfMeasure: $unitOfMeasure, price: $price, discount: $discount, vat: $vat, vatAmount: $vatAmount, expenseItemsId: $expenseItemsId, expenseId: $expenseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpensesItemImpl &&
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
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.expenseItemsId, expenseItemsId) ||
                other.expenseItemsId == expenseItemsId) &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId));
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
      vatAmount,
      expenseItemsId,
      expenseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpensesItemImplCopyWith<_$ExpensesItemImpl> get copyWith =>
      __$$ExpensesItemImplCopyWithImpl<_$ExpensesItemImpl>(this, _$identity);
}

abstract class _ExpensesItem implements ExpensesItem {
  const factory _ExpensesItem(
      {required final int relativeOrder,
      required final String itemCode,
      required final String description,
      required final int quantity,
      required final ExpensesUnitOfMeasure unitOfMeasure,
      required final double price,
      required final double discount,
      required final ExpensesVat vat,
      required final int vatAmount,
      required final UniqueId expenseItemsId,
      required final UniqueId expenseId}) = _$ExpensesItemImpl;

  @override
  int get relativeOrder;
  @override
  String get itemCode;
  @override
  String get description;
  @override
  int get quantity;
  @override
  ExpensesUnitOfMeasure get unitOfMeasure;
  @override
  double get price;
  @override
  double get discount;
  @override // required Vat vat,
  ExpensesVat get vat;
  @override
  int get vatAmount;
  @override
  UniqueId get expenseItemsId;
  @override
  UniqueId get expenseId;
  @override
  @JsonKey(ignore: true)
  _$$ExpensesItemImplCopyWith<_$ExpensesItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
