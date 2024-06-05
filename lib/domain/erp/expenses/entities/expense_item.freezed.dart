// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpenseItem {
  int get relativeOrder => throw _privateConstructorUsedError;
  String get itemCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  UnitOfMeasure get unitOfMeasure => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  double get vatAmount => throw _privateConstructorUsedError;
  UniqueId get expenseItemsId => throw _privateConstructorUsedError;
  UniqueId get expenseId => throw _privateConstructorUsedError;
  Vat get vat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenseItemCopyWith<ExpenseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseItemCopyWith<$Res> {
  factory $ExpenseItemCopyWith(
          ExpenseItem value, $Res Function(ExpenseItem) then) =
      _$ExpenseItemCopyWithImpl<$Res, ExpenseItem>;
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      UnitOfMeasure unitOfMeasure,
      double price,
      double discount,
      double vatAmount,
      UniqueId expenseItemsId,
      UniqueId expenseId,
      Vat vat});

  $VatCopyWith<$Res> get vat;
}

/// @nodoc
class _$ExpenseItemCopyWithImpl<$Res, $Val extends ExpenseItem>
    implements $ExpenseItemCopyWith<$Res> {
  _$ExpenseItemCopyWithImpl(this._value, this._then);

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
    Object? vatAmount = null,
    Object? expenseItemsId = null,
    Object? expenseId = null,
    Object? vat = null,
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
      vatAmount: null == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expenseItemsId: null == expenseItemsId
          ? _value.expenseItemsId
          : expenseItemsId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as Vat,
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
abstract class _$$ExpenseItemImplCopyWith<$Res>
    implements $ExpenseItemCopyWith<$Res> {
  factory _$$ExpenseItemImplCopyWith(
          _$ExpenseItemImpl value, $Res Function(_$ExpenseItemImpl) then) =
      __$$ExpenseItemImplCopyWithImpl<$Res>;
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
      double vatAmount,
      UniqueId expenseItemsId,
      UniqueId expenseId,
      Vat vat});

  @override
  $VatCopyWith<$Res> get vat;
}

/// @nodoc
class __$$ExpenseItemImplCopyWithImpl<$Res>
    extends _$ExpenseItemCopyWithImpl<$Res, _$ExpenseItemImpl>
    implements _$$ExpenseItemImplCopyWith<$Res> {
  __$$ExpenseItemImplCopyWithImpl(
      _$ExpenseItemImpl _value, $Res Function(_$ExpenseItemImpl) _then)
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
    Object? vatAmount = null,
    Object? expenseItemsId = null,
    Object? expenseId = null,
    Object? vat = null,
  }) {
    return _then(_$ExpenseItemImpl(
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
      vatAmount: null == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expenseItemsId: null == expenseItemsId
          ? _value.expenseItemsId
          : expenseItemsId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as Vat,
    ));
  }
}

/// @nodoc

class _$ExpenseItemImpl implements _ExpenseItem {
  const _$ExpenseItemImpl(
      {required this.relativeOrder,
      required this.itemCode,
      required this.description,
      required this.quantity,
      required this.unitOfMeasure,
      required this.price,
      required this.discount,
      required this.vatAmount,
      required this.expenseItemsId,
      required this.expenseId,
      required this.vat});

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
  final double vatAmount;
  @override
  final UniqueId expenseItemsId;
  @override
  final UniqueId expenseId;
  @override
  final Vat vat;

  @override
  String toString() {
    return 'ExpenseItem(relativeOrder: $relativeOrder, itemCode: $itemCode, description: $description, quantity: $quantity, unitOfMeasure: $unitOfMeasure, price: $price, discount: $discount, vatAmount: $vatAmount, expenseItemsId: $expenseItemsId, expenseId: $expenseId, vat: $vat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseItemImpl &&
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
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.expenseItemsId, expenseItemsId) ||
                other.expenseItemsId == expenseItemsId) &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId) &&
            (identical(other.vat, vat) || other.vat == vat));
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
      vatAmount,
      expenseItemsId,
      expenseId,
      vat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseItemImplCopyWith<_$ExpenseItemImpl> get copyWith =>
      __$$ExpenseItemImplCopyWithImpl<_$ExpenseItemImpl>(this, _$identity);
}

abstract class _ExpenseItem implements ExpenseItem {
  const factory _ExpenseItem(
      {required final int relativeOrder,
      required final String itemCode,
      required final String description,
      required final int quantity,
      required final UnitOfMeasure unitOfMeasure,
      required final double price,
      required final double discount,
      required final double vatAmount,
      required final UniqueId expenseItemsId,
      required final UniqueId expenseId,
      required final Vat vat}) = _$ExpenseItemImpl;

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
  double get vatAmount;
  @override
  UniqueId get expenseItemsId;
  @override
  UniqueId get expenseId;
  @override
  Vat get vat;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseItemImplCopyWith<_$ExpenseItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
