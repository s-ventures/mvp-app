// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_periodic_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedPeriodicOrderState {
  AsyncValue<DetailedPeriodicOrder> get periodicOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedPeriodicOrderStateCopyWith<DetailedPeriodicOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedPeriodicOrderStateCopyWith<$Res> {
  factory $DetailedPeriodicOrderStateCopyWith(
          DetailedPeriodicOrderState value, $Res Function(DetailedPeriodicOrderState) then) =
      _$DetailedPeriodicOrderStateCopyWithImpl<$Res, DetailedPeriodicOrderState>;
  @useResult
  $Res call({AsyncValue<DetailedPeriodicOrder> periodicOrder});
}

/// @nodoc
class _$DetailedPeriodicOrderStateCopyWithImpl<$Res, $Val extends DetailedPeriodicOrderState>
    implements $DetailedPeriodicOrderStateCopyWith<$Res> {
  _$DetailedPeriodicOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodicOrder = null,
  }) {
    return _then(_value.copyWith(
      periodicOrder: null == periodicOrder
          ? _value.periodicOrder
          : periodicOrder // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedPeriodicOrder>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedPeriodicOrderStateImplCopyWith<$Res>
    implements $DetailedPeriodicOrderStateCopyWith<$Res> {
  factory _$$DetailedPeriodicOrderStateImplCopyWith(_$DetailedPeriodicOrderStateImpl value,
          $Res Function(_$DetailedPeriodicOrderStateImpl) then) =
      __$$DetailedPeriodicOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<DetailedPeriodicOrder> periodicOrder});
}

/// @nodoc
class __$$DetailedPeriodicOrderStateImplCopyWithImpl<$Res>
    extends _$DetailedPeriodicOrderStateCopyWithImpl<$Res, _$DetailedPeriodicOrderStateImpl>
    implements _$$DetailedPeriodicOrderStateImplCopyWith<$Res> {
  __$$DetailedPeriodicOrderStateImplCopyWithImpl(_$DetailedPeriodicOrderStateImpl _value,
      $Res Function(_$DetailedPeriodicOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodicOrder = null,
  }) {
    return _then(_$DetailedPeriodicOrderStateImpl(
      periodicOrder: null == periodicOrder
          ? _value.periodicOrder
          : periodicOrder // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedPeriodicOrder>,
    ));
  }
}

/// @nodoc

class _$DetailedPeriodicOrderStateImpl implements _DetailedPeriodicOrderState {
  const _$DetailedPeriodicOrderStateImpl(
      {this.periodicOrder = const AsyncLoading<DetailedPeriodicOrder>()});

  @override
  @JsonKey()
  final AsyncValue<DetailedPeriodicOrder> periodicOrder;

  @override
  String toString() {
    return 'DetailedPeriodicOrderState(periodicOrder: $periodicOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedPeriodicOrderStateImpl &&
            (identical(other.periodicOrder, periodicOrder) ||
                other.periodicOrder == periodicOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, periodicOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedPeriodicOrderStateImplCopyWith<_$DetailedPeriodicOrderStateImpl> get copyWith =>
      __$$DetailedPeriodicOrderStateImplCopyWithImpl<_$DetailedPeriodicOrderStateImpl>(
          this, _$identity);
}

abstract class _DetailedPeriodicOrderState implements DetailedPeriodicOrderState {
  const factory _DetailedPeriodicOrderState(
      {final AsyncValue<DetailedPeriodicOrder> periodicOrder}) = _$DetailedPeriodicOrderStateImpl;

  @override
  AsyncValue<DetailedPeriodicOrder> get periodicOrder;
  @override
  @JsonKey(ignore: true)
  _$$DetailedPeriodicOrderStateImplCopyWith<_$DetailedPeriodicOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
