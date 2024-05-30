// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpenseItemDto _$ExpenseItemDtoFromJson(Map<String, dynamic> json) {
  return _ExpenseItemDto.fromJson(json);
}

/// @nodoc
mixin _$ExpenseItemDto {
  int get relativeOrder => throw _privateConstructorUsedError;
  String get itemCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  UnitOfMeasureDto get unitOfMeasure => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  double get vatAmount => throw _privateConstructorUsedError;
  int get expenseItemsId => throw _privateConstructorUsedError;
  int get expenseId => throw _privateConstructorUsedError;
  VatDto get vat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseItemDtoCopyWith<ExpenseItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseItemDtoCopyWith<$Res> {
  factory $ExpenseItemDtoCopyWith(
          ExpenseItemDto value, $Res Function(ExpenseItemDto) then) =
      _$ExpenseItemDtoCopyWithImpl<$Res, ExpenseItemDto>;
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      UnitOfMeasureDto unitOfMeasure,
      double price,
      double discount,
      double vatAmount,
      int expenseItemsId,
      int expenseId,
      VatDto vat});

  $VatDtoCopyWith<$Res> get vat;
}

/// @nodoc
class _$ExpenseItemDtoCopyWithImpl<$Res, $Val extends ExpenseItemDto>
    implements $ExpenseItemDtoCopyWith<$Res> {
  _$ExpenseItemDtoCopyWithImpl(this._value, this._then);

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
              as UnitOfMeasureDto,
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
              as int,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as VatDto,
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
abstract class _$$ExpenseItemDtoImplCopyWith<$Res>
    implements $ExpenseItemDtoCopyWith<$Res> {
  factory _$$ExpenseItemDtoImplCopyWith(_$ExpenseItemDtoImpl value,
          $Res Function(_$ExpenseItemDtoImpl) then) =
      __$$ExpenseItemDtoImplCopyWithImpl<$Res>;
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
      double vatAmount,
      int expenseItemsId,
      int expenseId,
      VatDto vat});

  @override
  $VatDtoCopyWith<$Res> get vat;
}

/// @nodoc
class __$$ExpenseItemDtoImplCopyWithImpl<$Res>
    extends _$ExpenseItemDtoCopyWithImpl<$Res, _$ExpenseItemDtoImpl>
    implements _$$ExpenseItemDtoImplCopyWith<$Res> {
  __$$ExpenseItemDtoImplCopyWithImpl(
      _$ExpenseItemDtoImpl _value, $Res Function(_$ExpenseItemDtoImpl) _then)
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
    return _then(_$ExpenseItemDtoImpl(
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
      vatAmount: null == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expenseItemsId: null == expenseItemsId
          ? _value.expenseItemsId
          : expenseItemsId // ignore: cast_nullable_to_non_nullable
              as int,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
      vat: null == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as VatDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseItemDtoImpl implements _ExpenseItemDto {
  const _$ExpenseItemDtoImpl(
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

  factory _$ExpenseItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseItemDtoImplFromJson(json);

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
  final double vatAmount;
  @override
  final int expenseItemsId;
  @override
  final int expenseId;
  @override
  final VatDto vat;

  @override
  String toString() {
    return 'ExpenseItemDto(relativeOrder: $relativeOrder, itemCode: $itemCode, description: $description, quantity: $quantity, unitOfMeasure: $unitOfMeasure, price: $price, discount: $discount, vatAmount: $vatAmount, expenseItemsId: $expenseItemsId, expenseId: $expenseId, vat: $vat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseItemDtoImpl &&
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
      vatAmount,
      expenseItemsId,
      expenseId,
      vat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseItemDtoImplCopyWith<_$ExpenseItemDtoImpl> get copyWith =>
      __$$ExpenseItemDtoImplCopyWithImpl<_$ExpenseItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseItemDtoImplToJson(
      this,
    );
  }
}

abstract class _ExpenseItemDto implements ExpenseItemDto {
  const factory _ExpenseItemDto(
      {required final int relativeOrder,
      required final String itemCode,
      required final String description,
      required final int quantity,
      required final UnitOfMeasureDto unitOfMeasure,
      required final double price,
      required final double discount,
      required final double vatAmount,
      required final int expenseItemsId,
      required final int expenseId,
      required final VatDto vat}) = _$ExpenseItemDtoImpl;

  factory _ExpenseItemDto.fromJson(Map<String, dynamic> json) =
      _$ExpenseItemDtoImpl.fromJson;

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
  double get vatAmount;
  @override
  int get expenseItemsId;
  @override
  int get expenseId;
  @override
  VatDto get vat;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseItemDtoImplCopyWith<_$ExpenseItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
