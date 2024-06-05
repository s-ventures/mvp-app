// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_invoice_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedInvoiceState {
  AsyncValue<DetailedInvoice> get invoice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedInvoiceStateCopyWith<DetailedInvoiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedInvoiceStateCopyWith<$Res> {
  factory $DetailedInvoiceStateCopyWith(DetailedInvoiceState value,
          $Res Function(DetailedInvoiceState) then) =
      _$DetailedInvoiceStateCopyWithImpl<$Res, DetailedInvoiceState>;
  @useResult
  $Res call({AsyncValue<DetailedInvoice> invoice});
}

/// @nodoc
class _$DetailedInvoiceStateCopyWithImpl<$Res,
        $Val extends DetailedInvoiceState>
    implements $DetailedInvoiceStateCopyWith<$Res> {
  _$DetailedInvoiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = null,
  }) {
    return _then(_value.copyWith(
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedInvoice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedInvoiceStateImplCopyWith<$Res>
    implements $DetailedInvoiceStateCopyWith<$Res> {
  factory _$$DetailedInvoiceStateImplCopyWith(_$DetailedInvoiceStateImpl value,
          $Res Function(_$DetailedInvoiceStateImpl) then) =
      __$$DetailedInvoiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<DetailedInvoice> invoice});
}

/// @nodoc
class __$$DetailedInvoiceStateImplCopyWithImpl<$Res>
    extends _$DetailedInvoiceStateCopyWithImpl<$Res, _$DetailedInvoiceStateImpl>
    implements _$$DetailedInvoiceStateImplCopyWith<$Res> {
  __$$DetailedInvoiceStateImplCopyWithImpl(_$DetailedInvoiceStateImpl _value,
      $Res Function(_$DetailedInvoiceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = null,
  }) {
    return _then(_$DetailedInvoiceStateImpl(
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedInvoice>,
    ));
  }
}

/// @nodoc

class _$DetailedInvoiceStateImpl implements _DetailedInvoiceState {
  const _$DetailedInvoiceStateImpl(
      {this.invoice = const AsyncLoading<DetailedInvoice>()});

  @override
  @JsonKey()
  final AsyncValue<DetailedInvoice> invoice;

  @override
  String toString() {
    return 'DetailedInvoiceState(invoice: $invoice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedInvoiceStateImpl &&
            (identical(other.invoice, invoice) || other.invoice == invoice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedInvoiceStateImplCopyWith<_$DetailedInvoiceStateImpl>
      get copyWith =>
          __$$DetailedInvoiceStateImplCopyWithImpl<_$DetailedInvoiceStateImpl>(
              this, _$identity);
}

abstract class _DetailedInvoiceState implements DetailedInvoiceState {
  const factory _DetailedInvoiceState(
      {final AsyncValue<DetailedInvoice> invoice}) = _$DetailedInvoiceStateImpl;

  @override
  AsyncValue<DetailedInvoice> get invoice;
  @override
  @JsonKey(ignore: true)
  _$$DetailedInvoiceStateImplCopyWith<_$DetailedInvoiceStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
