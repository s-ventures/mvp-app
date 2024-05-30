// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_invoice_items_vat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedInvoiceItemVat {
  UniqueId get vatId => throw _privateConstructorUsedError;
  int get percentage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get initialDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedInvoiceItemVatCopyWith<DetailedInvoiceItemVat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedInvoiceItemVatCopyWith<$Res> {
  factory $DetailedInvoiceItemVatCopyWith(DetailedInvoiceItemVat value,
          $Res Function(DetailedInvoiceItemVat) then) =
      _$DetailedInvoiceItemVatCopyWithImpl<$Res, DetailedInvoiceItemVat>;
  @useResult
  $Res call(
      {UniqueId vatId,
      int percentage,
      String description,
      DateTime initialDate,
      DateTime endDate});
}

/// @nodoc
class _$DetailedInvoiceItemVatCopyWithImpl<$Res,
        $Val extends DetailedInvoiceItemVat>
    implements $DetailedInvoiceItemVatCopyWith<$Res> {
  _$DetailedInvoiceItemVatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vatId = null,
    Object? percentage = null,
    Object? description = null,
    Object? initialDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      vatId: null == vatId
          ? _value.vatId
          : vatId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      initialDate: null == initialDate
          ? _value.initialDate
          : initialDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedInvoiceItemVatImplCopyWith<$Res>
    implements $DetailedInvoiceItemVatCopyWith<$Res> {
  factory _$$DetailedInvoiceItemVatImplCopyWith(
          _$DetailedInvoiceItemVatImpl value,
          $Res Function(_$DetailedInvoiceItemVatImpl) then) =
      __$$DetailedInvoiceItemVatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId vatId,
      int percentage,
      String description,
      DateTime initialDate,
      DateTime endDate});
}

/// @nodoc
class __$$DetailedInvoiceItemVatImplCopyWithImpl<$Res>
    extends _$DetailedInvoiceItemVatCopyWithImpl<$Res,
        _$DetailedInvoiceItemVatImpl>
    implements _$$DetailedInvoiceItemVatImplCopyWith<$Res> {
  __$$DetailedInvoiceItemVatImplCopyWithImpl(
      _$DetailedInvoiceItemVatImpl _value,
      $Res Function(_$DetailedInvoiceItemVatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vatId = null,
    Object? percentage = null,
    Object? description = null,
    Object? initialDate = null,
    Object? endDate = null,
  }) {
    return _then(_$DetailedInvoiceItemVatImpl(
      vatId: null == vatId
          ? _value.vatId
          : vatId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      initialDate: null == initialDate
          ? _value.initialDate
          : initialDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DetailedInvoiceItemVatImpl implements _DetailedInvoiceItemVat {
  const _$DetailedInvoiceItemVatImpl(
      {required this.vatId,
      required this.percentage,
      required this.description,
      required this.initialDate,
      required this.endDate});

  @override
  final UniqueId vatId;
  @override
  final int percentage;
  @override
  final String description;
  @override
  final DateTime initialDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'DetailedInvoiceItemVat(vatId: $vatId, percentage: $percentage, description: $description, initialDate: $initialDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedInvoiceItemVatImpl &&
            (identical(other.vatId, vatId) || other.vatId == vatId) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.initialDate, initialDate) ||
                other.initialDate == initialDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, vatId, percentage, description, initialDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedInvoiceItemVatImplCopyWith<_$DetailedInvoiceItemVatImpl>
      get copyWith => __$$DetailedInvoiceItemVatImplCopyWithImpl<
          _$DetailedInvoiceItemVatImpl>(this, _$identity);
}

abstract class _DetailedInvoiceItemVat implements DetailedInvoiceItemVat {
  const factory _DetailedInvoiceItemVat(
      {required final UniqueId vatId,
      required final int percentage,
      required final String description,
      required final DateTime initialDate,
      required final DateTime endDate}) = _$DetailedInvoiceItemVatImpl;

  @override
  UniqueId get vatId;
  @override
  int get percentage;
  @override
  String get description;
  @override
  DateTime get initialDate;
  @override
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$DetailedInvoiceItemVatImplCopyWith<_$DetailedInvoiceItemVatImpl>
      get copyWith => throw _privateConstructorUsedError;
}
