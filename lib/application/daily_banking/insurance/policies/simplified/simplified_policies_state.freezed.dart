// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_policies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedPoliciesState {
  AsyncValue<List<SimplifiedPolicy>> get policies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedPoliciesStateCopyWith<SimplifiedPoliciesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedPoliciesStateCopyWith<$Res> {
  factory $SimplifiedPoliciesStateCopyWith(
          SimplifiedPoliciesState value, $Res Function(SimplifiedPoliciesState) then) =
      _$SimplifiedPoliciesStateCopyWithImpl<$Res, SimplifiedPoliciesState>;
  @useResult
  $Res call({AsyncValue<List<SimplifiedPolicy>> policies});
}

/// @nodoc
class _$SimplifiedPoliciesStateCopyWithImpl<$Res, $Val extends SimplifiedPoliciesState>
    implements $SimplifiedPoliciesStateCopyWith<$Res> {
  _$SimplifiedPoliciesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policies = null,
  }) {
    return _then(_value.copyWith(
      policies: null == policies
          ? _value.policies
          : policies // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedPolicy>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedPoliciesStateImplCopyWith<$Res>
    implements $SimplifiedPoliciesStateCopyWith<$Res> {
  factory _$$SimplifiedPoliciesStateImplCopyWith(
          _$SimplifiedPoliciesStateImpl value, $Res Function(_$SimplifiedPoliciesStateImpl) then) =
      __$$SimplifiedPoliciesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<SimplifiedPolicy>> policies});
}

/// @nodoc
class __$$SimplifiedPoliciesStateImplCopyWithImpl<$Res>
    extends _$SimplifiedPoliciesStateCopyWithImpl<$Res, _$SimplifiedPoliciesStateImpl>
    implements _$$SimplifiedPoliciesStateImplCopyWith<$Res> {
  __$$SimplifiedPoliciesStateImplCopyWithImpl(
      _$SimplifiedPoliciesStateImpl _value, $Res Function(_$SimplifiedPoliciesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policies = null,
  }) {
    return _then(_$SimplifiedPoliciesStateImpl(
      policies: null == policies
          ? _value.policies
          : policies // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedPolicy>>,
    ));
  }
}

/// @nodoc

class _$SimplifiedPoliciesStateImpl implements _SimplifiedPoliciesState {
  const _$SimplifiedPoliciesStateImpl(
      {this.policies = const AsyncLoading<List<SimplifiedPolicy>>()});

  @override
  @JsonKey()
  final AsyncValue<List<SimplifiedPolicy>> policies;

  @override
  String toString() {
    return 'SimplifiedPoliciesState(policies: $policies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedPoliciesStateImpl &&
            (identical(other.policies, policies) || other.policies == policies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, policies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedPoliciesStateImplCopyWith<_$SimplifiedPoliciesStateImpl> get copyWith =>
      __$$SimplifiedPoliciesStateImplCopyWithImpl<_$SimplifiedPoliciesStateImpl>(this, _$identity);
}

abstract class _SimplifiedPoliciesState implements SimplifiedPoliciesState {
  const factory _SimplifiedPoliciesState({final AsyncValue<List<SimplifiedPolicy>> policies}) =
      _$SimplifiedPoliciesStateImpl;

  @override
  AsyncValue<List<SimplifiedPolicy>> get policies;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedPoliciesStateImplCopyWith<_$SimplifiedPoliciesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
