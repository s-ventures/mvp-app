// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpensesItemDto _$ExpensesItemDtoFromJson(Map<String, dynamic> json) {
  return _ExpensesItemDto.fromJson(json);
}

/// @nodoc
mixin _$ExpensesItemDto {
  int get relativeOrder => throw _privateConstructorUsedError;
  String get itemCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  ExpensesUnitOfMeasureDto get unitOfMeasure =>
      throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  VatDto get vat => throw _privateConstructorUsedError;
  int get vatAmount => throw _privateConstructorUsedError;
  int get expenseItemsId => throw _privateConstructorUsedError;
  int get expenseId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpensesItemDtoCopyWith<ExpensesItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesItemDtoCopyWith<$Res> {
  factory $ExpensesItemDtoCopyWith(
          ExpensesItemDto value, $Res Function(ExpensesItemDto) then) =
      _$ExpensesItemDtoCopyWithImpl<$Res, ExpensesItemDto>;
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      ExpensesUnitOfMeasureDto unitOfMeasure,
      double price,
      double discount,
      VatDto vat,
      int vatAmount,
      int expenseItemsId,
      int expenseId});

  $VatDtoCopyWith<$Res> get vat;
}

/// @nodoc
class _$ExpensesItemDtoCopyWithImpl<$Res, $Val extends ExpensesItemDto>
    implements $ExpensesItemDtoCopyWith<$Res> {
  _$ExpensesItemDtoCopyWithImpl(this._value, this._then);

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
              as ExpensesUnitOfMeasureDto,
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
      vatAmount: null == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expenseItemsId: null == expenseItemsId
          ? _value.expenseItemsId
          : expenseItemsId // ignore: cast_nullable_to_non_nullable
              as int,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ExpensesItemDtoImplCopyWith<$Res>
    implements $ExpensesItemDtoCopyWith<$Res> {
  factory _$$ExpensesItemDtoImplCopyWith(_$ExpensesItemDtoImpl value,
          $Res Function(_$ExpensesItemDtoImpl) then) =
      __$$ExpensesItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int relativeOrder,
      String itemCode,
      String description,
      int quantity,
      ExpensesUnitOfMeasureDto unitOfMeasure,
      double price,
      double discount,
      VatDto vat,
      int vatAmount,
      int expenseItemsId,
      int expenseId});

  @override
  $VatDtoCopyWith<$Res> get vat;
}

/// @nodoc
class __$$ExpensesItemDtoImplCopyWithImpl<$Res>
    extends _$ExpensesItemDtoCopyWithImpl<$Res, _$ExpensesItemDtoImpl>
    implements _$$ExpensesItemDtoImplCopyWith<$Res> {
  __$$ExpensesItemDtoImplCopyWithImpl(
      _$ExpensesItemDtoImpl _value, $Res Function(_$ExpensesItemDtoImpl) _then)
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
    return _then(_$ExpensesItemDtoImpl(
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
              as ExpensesUnitOfMeasureDto,
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
      vatAmount: null == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expenseItemsId: null == expenseItemsId
          ? _value.expenseItemsId
          : expenseItemsId // ignore: cast_nullable_to_non_nullable
              as int,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpensesItemDtoImpl implements _ExpensesItemDto {
  const _$ExpensesItemDtoImpl(
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

  factory _$ExpensesItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpensesItemDtoImplFromJson(json);

  @override
  final int relativeOrder;
  @override
  final String itemCode;
  @override
  final String description;
  @override
  final int quantity;
  @override
  final ExpensesUnitOfMeasureDto unitOfMeasure;
  @override
  final double price;
  @override
  final double discount;
  @override
  final VatDto vat;
  @override
  final int vatAmount;
  @override
  final int expenseItemsId;
  @override
  final int expenseId;

  @override
  String toString() {
    return 'ExpensesItemDto(relativeOrder: $relativeOrder, itemCode: $itemCode, description: $description, quantity: $quantity, unitOfMeasure: $unitOfMeasure, price: $price, discount: $discount, vat: $vat, vatAmount: $vatAmount, expenseItemsId: $expenseItemsId, expenseId: $expenseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpensesItemDtoImpl &&
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
      vatAmount,
      expenseItemsId,
      expenseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpensesItemDtoImplCopyWith<_$ExpensesItemDtoImpl> get copyWith =>
      __$$ExpensesItemDtoImplCopyWithImpl<_$ExpensesItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpensesItemDtoImplToJson(
      this,
    );
  }
}

abstract class _ExpensesItemDto implements ExpensesItemDto {
  const factory _ExpensesItemDto(
      {required final int relativeOrder,
      required final String itemCode,
      required final String description,
      required final int quantity,
      required final ExpensesUnitOfMeasureDto unitOfMeasure,
      required final double price,
      required final double discount,
      required final VatDto vat,
      required final int vatAmount,
      required final int expenseItemsId,
      required final int expenseId}) = _$ExpensesItemDtoImpl;

  factory _ExpensesItemDto.fromJson(Map<String, dynamic> json) =
      _$ExpensesItemDtoImpl.fromJson;

  @override
  int get relativeOrder;
  @override
  String get itemCode;
  @override
  String get description;
  @override
  int get quantity;
  @override
  ExpensesUnitOfMeasureDto get unitOfMeasure;
  @override
  double get price;
  @override
  double get discount;
  @override
  VatDto get vat;
  @override
  int get vatAmount;
  @override
  int get expenseItemsId;
  @override
  int get expenseId;
  @override
  @JsonKey(ignore: true)
  _$$ExpensesItemDtoImplCopyWith<_$ExpensesItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
