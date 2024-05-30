// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_invoices_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PendingInvoicesState {
  AsyncValue<List<Invoice>> get pendingInvoices =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PendingInvoicesStateCopyWith<PendingInvoicesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingInvoicesStateCopyWith<$Res> {
  factory $PendingInvoicesStateCopyWith(PendingInvoicesState value,
          $Res Function(PendingInvoicesState) then) =
      _$PendingInvoicesStateCopyWithImpl<$Res, PendingInvoicesState>;
  @useResult
  $Res call({AsyncValue<List<Invoice>> pendingInvoices});
}

/// @nodoc
class _$PendingInvoicesStateCopyWithImpl<$Res,
        $Val extends PendingInvoicesState>
    implements $PendingInvoicesStateCopyWith<$Res> {
  _$PendingInvoicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingInvoices = null,
  }) {
    return _then(_value.copyWith(
      pendingInvoices: null == pendingInvoices
          ? _value.pendingInvoices
          : pendingInvoices // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Invoice>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PendingInvoicesStateImplCopyWith<$Res>
    implements $PendingInvoicesStateCopyWith<$Res> {
  factory _$$PendingInvoicesStateImplCopyWith(_$PendingInvoicesStateImpl value,
          $Res Function(_$PendingInvoicesStateImpl) then) =
      __$$PendingInvoicesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<Invoice>> pendingInvoices});
}

/// @nodoc
class __$$PendingInvoicesStateImplCopyWithImpl<$Res>
    extends _$PendingInvoicesStateCopyWithImpl<$Res, _$PendingInvoicesStateImpl>
    implements _$$PendingInvoicesStateImplCopyWith<$Res> {
  __$$PendingInvoicesStateImplCopyWithImpl(_$PendingInvoicesStateImpl _value,
      $Res Function(_$PendingInvoicesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingInvoices = null,
  }) {
    return _then(_$PendingInvoicesStateImpl(
      pendingInvoices: null == pendingInvoices
          ? _value.pendingInvoices
          : pendingInvoices // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Invoice>>,
    ));
  }
}

/// @nodoc

class _$PendingInvoicesStateImpl implements _PendingInvoicesState {
  const _$PendingInvoicesStateImpl(
      {this.pendingInvoices = const AsyncLoading<List<Invoice>>()});

  @override
  @JsonKey()
  final AsyncValue<List<Invoice>> pendingInvoices;

  @override
  String toString() {
    return 'PendingInvoicesState(pendingInvoices: $pendingInvoices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingInvoicesStateImpl &&
            (identical(other.pendingInvoices, pendingInvoices) ||
                other.pendingInvoices == pendingInvoices));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pendingInvoices);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PendingInvoicesStateImplCopyWith<_$PendingInvoicesStateImpl>
      get copyWith =>
          __$$PendingInvoicesStateImplCopyWithImpl<_$PendingInvoicesStateImpl>(
              this, _$identity);
}

abstract class _PendingInvoicesState implements PendingInvoicesState {
  const factory _PendingInvoicesState(
          {final AsyncValue<List<Invoice>> pendingInvoices}) =
      _$PendingInvoicesStateImpl;

  @override
  AsyncValue<List<Invoice>> get pendingInvoices;
  @override
  @JsonKey(ignore: true)
  _$$PendingInvoicesStateImplCopyWith<_$PendingInvoicesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
