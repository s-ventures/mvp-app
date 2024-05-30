// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_invoices_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedInvoicesState {
  AsyncValue<List<Invoice>> get invoices => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedInvoicesStateCopyWith<SimplifiedInvoicesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedInvoicesStateCopyWith<$Res> {
  factory $SimplifiedInvoicesStateCopyWith(SimplifiedInvoicesState value,
          $Res Function(SimplifiedInvoicesState) then) =
      _$SimplifiedInvoicesStateCopyWithImpl<$Res, SimplifiedInvoicesState>;
  @useResult
  $Res call({AsyncValue<List<Invoice>> invoices});
}

/// @nodoc
class _$SimplifiedInvoicesStateCopyWithImpl<$Res,
        $Val extends SimplifiedInvoicesState>
    implements $SimplifiedInvoicesStateCopyWith<$Res> {
  _$SimplifiedInvoicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoices = null,
  }) {
    return _then(_value.copyWith(
      invoices: null == invoices
          ? _value.invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Invoice>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedInvoicesStateImplCopyWith<$Res>
    implements $SimplifiedInvoicesStateCopyWith<$Res> {
  factory _$$SimplifiedInvoicesStateImplCopyWith(
          _$SimplifiedInvoicesStateImpl value,
          $Res Function(_$SimplifiedInvoicesStateImpl) then) =
      __$$SimplifiedInvoicesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<Invoice>> invoices});
}

/// @nodoc
class __$$SimplifiedInvoicesStateImplCopyWithImpl<$Res>
    extends _$SimplifiedInvoicesStateCopyWithImpl<$Res,
        _$SimplifiedInvoicesStateImpl>
    implements _$$SimplifiedInvoicesStateImplCopyWith<$Res> {
  __$$SimplifiedInvoicesStateImplCopyWithImpl(
      _$SimplifiedInvoicesStateImpl _value,
      $Res Function(_$SimplifiedInvoicesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoices = null,
  }) {
    return _then(_$SimplifiedInvoicesStateImpl(
      invoices: null == invoices
          ? _value.invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Invoice>>,
    ));
  }
}

/// @nodoc

class _$SimplifiedInvoicesStateImpl implements _SimplifiedInvoicesState {
  const _$SimplifiedInvoicesStateImpl(
      {this.invoices = const AsyncLoading<List<Invoice>>()});

  @override
  @JsonKey()
  final AsyncValue<List<Invoice>> invoices;

  @override
  String toString() {
    return 'SimplifiedInvoicesState(invoices: $invoices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedInvoicesStateImpl &&
            (identical(other.invoices, invoices) ||
                other.invoices == invoices));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoices);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedInvoicesStateImplCopyWith<_$SimplifiedInvoicesStateImpl>
      get copyWith => __$$SimplifiedInvoicesStateImplCopyWithImpl<
          _$SimplifiedInvoicesStateImpl>(this, _$identity);
}

abstract class _SimplifiedInvoicesState implements SimplifiedInvoicesState {
  const factory _SimplifiedInvoicesState(
          {final AsyncValue<List<Invoice>> invoices}) =
      _$SimplifiedInvoicesStateImpl;

  @override
  AsyncValue<List<Invoice>> get invoices;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedInvoicesStateImplCopyWith<_$SimplifiedInvoicesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
