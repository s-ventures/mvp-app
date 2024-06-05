// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceItemDto _$InvoiceItemDtoFromJson(Map<String, dynamic> json) {
  return _InvoiceItemDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceItemDto {
  int get relativeOrder => throw _privateConstructorUsedError;
  String get itemCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  UnitOfMeasureDto get unitOfMeasure => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  VatDto get vat => throw _privateConstructorUsedError;
  int get invoiceItemId => throw _privateConstructorUsedError;
  int get invoiceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceItemDtoCopyWith<InvoiceItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceItemDtoCopyWith<$Res> {
  factory $InvoiceItemDtoCopyWith(
          InvoiceItemDto value, $Res Function(InvoiceItemDto) then) =
      _$InvoiceItemDtoCopyWithImpl<$Res, InvoiceItemDto>;
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
      int invoiceItemId,
      int invoiceId});

  $VatDtoCopyWith<$Res> get vat;
}

/// @nodoc
class _$InvoiceItemDtoCopyWithImpl<$Res, $Val extends InvoiceItemDto>
    implements $InvoiceItemDtoCopyWith<$Res> {
  _$InvoiceItemDtoCopyWithImpl(this._value, this._then);

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
      invoiceItemId: null == invoiceItemId
          ? _value.invoiceItemId
          : invoiceItemId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$InvoiceItemDtoImplCopyWith<$Res>
    implements $InvoiceItemDtoCopyWith<$Res> {
  factory _$$InvoiceItemDtoImplCopyWith(_$InvoiceItemDtoImpl value,
          $Res Function(_$InvoiceItemDtoImpl) then) =
      __$$InvoiceItemDtoImplCopyWithImpl<$Res>;
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
      int invoiceItemId,
      int invoiceId});

  @override
  $VatDtoCopyWith<$Res> get vat;
}

/// @nodoc
class __$$InvoiceItemDtoImplCopyWithImpl<$Res>
    extends _$InvoiceItemDtoCopyWithImpl<$Res, _$InvoiceItemDtoImpl>
    implements _$$InvoiceItemDtoImplCopyWith<$Res> {
  __$$InvoiceItemDtoImplCopyWithImpl(
      _$InvoiceItemDtoImpl _value, $Res Function(_$InvoiceItemDtoImpl) _then)
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
    return _then(_$InvoiceItemDtoImpl(
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
      invoiceItemId: null == invoiceItemId
          ? _value.invoiceItemId
          : invoiceItemId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceItemDtoImpl implements _InvoiceItemDto {
  const _$InvoiceItemDtoImpl(
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

  factory _$InvoiceItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceItemDtoImplFromJson(json);

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
  final int invoiceItemId;
  @override
  final int invoiceId;

  @override
  String toString() {
    return 'InvoiceItemDto(relativeOrder: $relativeOrder, itemCode: $itemCode, description: $description, quantity: $quantity, unitOfMeasure: $unitOfMeasure, price: $price, discount: $discount, vat: $vat, invoiceItemId: $invoiceItemId, invoiceId: $invoiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceItemDtoImpl &&
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
      invoiceItemId,
      invoiceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceItemDtoImplCopyWith<_$InvoiceItemDtoImpl> get copyWith =>
      __$$InvoiceItemDtoImplCopyWithImpl<_$InvoiceItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceItemDtoImplToJson(
      this,
    );
  }
}

abstract class _InvoiceItemDto implements InvoiceItemDto {
  const factory _InvoiceItemDto(
      {required final int relativeOrder,
      required final String itemCode,
      required final String description,
      required final int quantity,
      required final UnitOfMeasureDto unitOfMeasure,
      required final double price,
      required final double discount,
      required final VatDto vat,
      required final int invoiceItemId,
      required final int invoiceId}) = _$InvoiceItemDtoImpl;

  factory _InvoiceItemDto.fromJson(Map<String, dynamic> json) =
      _$InvoiceItemDtoImpl.fromJson;

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
  int get invoiceItemId;
  @override
  int get invoiceId;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceItemDtoImplCopyWith<_$InvoiceItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
