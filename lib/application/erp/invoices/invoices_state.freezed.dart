// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoices_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoicesState {
  AsyncValue<List<Invoice>> get invoices => throw _privateConstructorUsedError;
  AsyncValue<List<Invoice>> get pendingInvoices =>
      throw _privateConstructorUsedError; // TODO(georgeta): Cambiar fechas a dueDate cuando Bfmf las añada
  DateTime? get createdDateFrom => throw _privateConstructorUsedError;
  DateTime? get createdDateTo => throw _privateConstructorUsedError;
  double? get totalAmountFrom => throw _privateConstructorUsedError;
  double? get totalAmountTo => throw _privateConstructorUsedError;
  InvoiceStatus? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoicesStateCopyWith<InvoicesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoicesStateCopyWith<$Res> {
  factory $InvoicesStateCopyWith(
          InvoicesState value, $Res Function(InvoicesState) then) =
      _$InvoicesStateCopyWithImpl<$Res, InvoicesState>;
  @useResult
  $Res call(
      {AsyncValue<List<Invoice>> invoices,
      AsyncValue<List<Invoice>> pendingInvoices,
      DateTime? createdDateFrom,
      DateTime? createdDateTo,
      double? totalAmountFrom,
      double? totalAmountTo,
      InvoiceStatus? status});
}

/// @nodoc
class _$InvoicesStateCopyWithImpl<$Res, $Val extends InvoicesState>
    implements $InvoicesStateCopyWith<$Res> {
  _$InvoicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoices = null,
    Object? pendingInvoices = null,
    Object? createdDateFrom = freezed,
    Object? createdDateTo = freezed,
    Object? totalAmountFrom = freezed,
    Object? totalAmountTo = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      invoices: null == invoices
          ? _value.invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Invoice>>,
      pendingInvoices: null == pendingInvoices
          ? _value.pendingInvoices
          : pendingInvoices // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Invoice>>,
      createdDateFrom: freezed == createdDateFrom
          ? _value.createdDateFrom
          : createdDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDateTo: freezed == createdDateTo
          ? _value.createdDateTo
          : createdDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmountFrom: freezed == totalAmountFrom
          ? _value.totalAmountFrom
          : totalAmountFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountTo: freezed == totalAmountTo
          ? _value.totalAmountTo
          : totalAmountTo // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoicesStateImplCopyWith<$Res>
    implements $InvoicesStateCopyWith<$Res> {
  factory _$$InvoicesStateImplCopyWith(
          _$InvoicesStateImpl value, $Res Function(_$InvoicesStateImpl) then) =
      __$$InvoicesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<Invoice>> invoices,
      AsyncValue<List<Invoice>> pendingInvoices,
      DateTime? createdDateFrom,
      DateTime? createdDateTo,
      double? totalAmountFrom,
      double? totalAmountTo,
      InvoiceStatus? status});
}

/// @nodoc
class __$$InvoicesStateImplCopyWithImpl<$Res>
    extends _$InvoicesStateCopyWithImpl<$Res, _$InvoicesStateImpl>
    implements _$$InvoicesStateImplCopyWith<$Res> {
  __$$InvoicesStateImplCopyWithImpl(
      _$InvoicesStateImpl _value, $Res Function(_$InvoicesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoices = null,
    Object? pendingInvoices = null,
    Object? createdDateFrom = freezed,
    Object? createdDateTo = freezed,
    Object? totalAmountFrom = freezed,
    Object? totalAmountTo = freezed,
    Object? status = freezed,
  }) {
    return _then(_$InvoicesStateImpl(
      invoices: null == invoices
          ? _value.invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Invoice>>,
      pendingInvoices: null == pendingInvoices
          ? _value.pendingInvoices
          : pendingInvoices // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Invoice>>,
      createdDateFrom: freezed == createdDateFrom
          ? _value.createdDateFrom
          : createdDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDateTo: freezed == createdDateTo
          ? _value.createdDateTo
          : createdDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmountFrom: freezed == totalAmountFrom
          ? _value.totalAmountFrom
          : totalAmountFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountTo: freezed == totalAmountTo
          ? _value.totalAmountTo
          : totalAmountTo // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatus?,
    ));
  }
}

/// @nodoc

class _$InvoicesStateImpl implements _InvoicesState {
  const _$InvoicesStateImpl(
      {this.invoices = const AsyncLoading<List<Invoice>>(),
      this.pendingInvoices = const AsyncLoading<List<Invoice>>(),
      this.createdDateFrom,
      this.createdDateTo,
      this.totalAmountFrom,
      this.totalAmountTo,
      this.status});

  @override
  @JsonKey()
  final AsyncValue<List<Invoice>> invoices;
  @override
  @JsonKey()
  final AsyncValue<List<Invoice>> pendingInvoices;
// TODO(georgeta): Cambiar fechas a dueDate cuando Bfmf las añada
  @override
  final DateTime? createdDateFrom;
  @override
  final DateTime? createdDateTo;
  @override
  final double? totalAmountFrom;
  @override
  final double? totalAmountTo;
  @override
  final InvoiceStatus? status;

  @override
  String toString() {
    return 'InvoicesState(invoices: $invoices, pendingInvoices: $pendingInvoices, createdDateFrom: $createdDateFrom, createdDateTo: $createdDateTo, totalAmountFrom: $totalAmountFrom, totalAmountTo: $totalAmountTo, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoicesStateImpl &&
            (identical(other.invoices, invoices) ||
                other.invoices == invoices) &&
            (identical(other.pendingInvoices, pendingInvoices) ||
                other.pendingInvoices == pendingInvoices) &&
            (identical(other.createdDateFrom, createdDateFrom) ||
                other.createdDateFrom == createdDateFrom) &&
            (identical(other.createdDateTo, createdDateTo) ||
                other.createdDateTo == createdDateTo) &&
            (identical(other.totalAmountFrom, totalAmountFrom) ||
                other.totalAmountFrom == totalAmountFrom) &&
            (identical(other.totalAmountTo, totalAmountTo) ||
                other.totalAmountTo == totalAmountTo) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoices, pendingInvoices,
      createdDateFrom, createdDateTo, totalAmountFrom, totalAmountTo, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoicesStateImplCopyWith<_$InvoicesStateImpl> get copyWith =>
      __$$InvoicesStateImplCopyWithImpl<_$InvoicesStateImpl>(this, _$identity);
}

abstract class _InvoicesState implements InvoicesState {
  const factory _InvoicesState(
      {final AsyncValue<List<Invoice>> invoices,
      final AsyncValue<List<Invoice>> pendingInvoices,
      final DateTime? createdDateFrom,
      final DateTime? createdDateTo,
      final double? totalAmountFrom,
      final double? totalAmountTo,
      final InvoiceStatus? status}) = _$InvoicesStateImpl;

  @override
  AsyncValue<List<Invoice>> get invoices;
  @override
  AsyncValue<List<Invoice>> get pendingInvoices;
  @override // TODO(georgeta): Cambiar fechas a dueDate cuando Bfmf las añada
  DateTime? get createdDateFrom;
  @override
  DateTime? get createdDateTo;
  @override
  double? get totalAmountFrom;
  @override
  double? get totalAmountTo;
  @override
  InvoiceStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$InvoicesStateImplCopyWith<_$InvoicesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
