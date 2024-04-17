// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_periodic_orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedPeriodicOrdersState {
  AsyncValue<List<SimplifiedPeriodicOrder>> get periodicOrders =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedPeriodicOrdersStateCopyWith<SimplifiedPeriodicOrdersState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedPeriodicOrdersStateCopyWith<$Res> {
  factory $SimplifiedPeriodicOrdersStateCopyWith(
          SimplifiedPeriodicOrdersState value,
          $Res Function(SimplifiedPeriodicOrdersState) then) =
      _$SimplifiedPeriodicOrdersStateCopyWithImpl<$Res,
          SimplifiedPeriodicOrdersState>;
  @useResult
  $Res call({AsyncValue<List<SimplifiedPeriodicOrder>> periodicOrders});
}

/// @nodoc
class _$SimplifiedPeriodicOrdersStateCopyWithImpl<$Res,
        $Val extends SimplifiedPeriodicOrdersState>
    implements $SimplifiedPeriodicOrdersStateCopyWith<$Res> {
  _$SimplifiedPeriodicOrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodicOrders = null,
  }) {
    return _then(_value.copyWith(
      periodicOrders: null == periodicOrders
          ? _value.periodicOrders
          : periodicOrders // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedPeriodicOrder>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedPeriodicOrderStateImplCopyWith<$Res>
    implements $SimplifiedPeriodicOrdersStateCopyWith<$Res> {
  factory _$$SimplifiedPeriodicOrderStateImplCopyWith(
          _$SimplifiedPeriodicOrderStateImpl value,
          $Res Function(_$SimplifiedPeriodicOrderStateImpl) then) =
      __$$SimplifiedPeriodicOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<SimplifiedPeriodicOrder>> periodicOrders});
}

/// @nodoc
class __$$SimplifiedPeriodicOrderStateImplCopyWithImpl<$Res>
    extends _$SimplifiedPeriodicOrdersStateCopyWithImpl<$Res,
        _$SimplifiedPeriodicOrderStateImpl>
    implements _$$SimplifiedPeriodicOrderStateImplCopyWith<$Res> {
  __$$SimplifiedPeriodicOrderStateImplCopyWithImpl(
      _$SimplifiedPeriodicOrderStateImpl _value,
      $Res Function(_$SimplifiedPeriodicOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodicOrders = null,
  }) {
    return _then(_$SimplifiedPeriodicOrderStateImpl(
      periodicOrders: null == periodicOrders
          ? _value.periodicOrders
          : periodicOrders // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedPeriodicOrder>>,
    ));
  }
}

/// @nodoc

class _$SimplifiedPeriodicOrderStateImpl
    implements _SimplifiedPeriodicOrderState {
  const _$SimplifiedPeriodicOrderStateImpl(
      {this.periodicOrders =
          const AsyncLoading<List<SimplifiedPeriodicOrder>>()});

  @override
  @JsonKey()
  final AsyncValue<List<SimplifiedPeriodicOrder>> periodicOrders;

  @override
  String toString() {
    return 'SimplifiedPeriodicOrdersState(periodicOrders: $periodicOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedPeriodicOrderStateImpl &&
            (identical(other.periodicOrders, periodicOrders) ||
                other.periodicOrders == periodicOrders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, periodicOrders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedPeriodicOrderStateImplCopyWith<
          _$SimplifiedPeriodicOrderStateImpl>
      get copyWith => __$$SimplifiedPeriodicOrderStateImplCopyWithImpl<
          _$SimplifiedPeriodicOrderStateImpl>(this, _$identity);
}

abstract class _SimplifiedPeriodicOrderState
    implements SimplifiedPeriodicOrdersState {
  const factory _SimplifiedPeriodicOrderState(
          {final AsyncValue<List<SimplifiedPeriodicOrder>> periodicOrders}) =
      _$SimplifiedPeriodicOrderStateImpl;

  @override
  AsyncValue<List<SimplifiedPeriodicOrder>> get periodicOrders;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedPeriodicOrderStateImplCopyWith<
          _$SimplifiedPeriodicOrderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
