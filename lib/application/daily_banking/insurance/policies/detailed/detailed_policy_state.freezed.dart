// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_policy_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedPolicyState {
  AsyncValue<DetailedPolicy> get policy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedPolicyStateCopyWith<DetailedPolicyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedPolicyStateCopyWith<$Res> {
  factory $DetailedPolicyStateCopyWith(
          DetailedPolicyState value, $Res Function(DetailedPolicyState) then) =
      _$DetailedPolicyStateCopyWithImpl<$Res, DetailedPolicyState>;
  @useResult
  $Res call({AsyncValue<DetailedPolicy> policy});
}

/// @nodoc
class _$DetailedPolicyStateCopyWithImpl<$Res, $Val extends DetailedPolicyState>
    implements $DetailedPolicyStateCopyWith<$Res> {
  _$DetailedPolicyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policy = null,
  }) {
    return _then(_value.copyWith(
      policy: null == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedPolicy>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedPolicyStateImplCopyWith<$Res>
    implements $DetailedPolicyStateCopyWith<$Res> {
  factory _$$DetailedPolicyStateImplCopyWith(
          _$DetailedPolicyStateImpl value, $Res Function(_$DetailedPolicyStateImpl) then) =
      __$$DetailedPolicyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<DetailedPolicy> policy});
}

/// @nodoc
class __$$DetailedPolicyStateImplCopyWithImpl<$Res>
    extends _$DetailedPolicyStateCopyWithImpl<$Res, _$DetailedPolicyStateImpl>
    implements _$$DetailedPolicyStateImplCopyWith<$Res> {
  __$$DetailedPolicyStateImplCopyWithImpl(
      _$DetailedPolicyStateImpl _value, $Res Function(_$DetailedPolicyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policy = null,
  }) {
    return _then(_$DetailedPolicyStateImpl(
      policy: null == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedPolicy>,
    ));
  }
}

/// @nodoc

class _$DetailedPolicyStateImpl implements _DetailedPolicyState {
  const _$DetailedPolicyStateImpl({this.policy = const AsyncLoading<DetailedPolicy>()});

  @override
  @JsonKey()
  final AsyncValue<DetailedPolicy> policy;

  @override
  String toString() {
    return 'DetailedPolicyState(policy: $policy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedPolicyStateImpl &&
            (identical(other.policy, policy) || other.policy == policy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, policy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedPolicyStateImplCopyWith<_$DetailedPolicyStateImpl> get copyWith =>
      __$$DetailedPolicyStateImplCopyWithImpl<_$DetailedPolicyStateImpl>(this, _$identity);
}

abstract class _DetailedPolicyState implements DetailedPolicyState {
  const factory _DetailedPolicyState({final AsyncValue<DetailedPolicy> policy}) =
      _$DetailedPolicyStateImpl;

  @override
  AsyncValue<DetailedPolicy> get policy;
  @override
  @JsonKey(ignore: true)
  _$$DetailedPolicyStateImplCopyWith<_$DetailedPolicyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
