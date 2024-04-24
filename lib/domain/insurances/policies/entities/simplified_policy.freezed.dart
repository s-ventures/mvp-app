// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedPolicy {
  int get insuranceId => throw _privateConstructorUsedError;
  String get policy => throw _privateConstructorUsedError;
  PolicyStatusType get status => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedPolicyCopyWith<SimplifiedPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedPolicyCopyWith<$Res> {
  factory $SimplifiedPolicyCopyWith(
          SimplifiedPolicy value, $Res Function(SimplifiedPolicy) then) =
      _$SimplifiedPolicyCopyWithImpl<$Res, SimplifiedPolicy>;
  @useResult
  $Res call(
      {int insuranceId,
      String policy,
      PolicyStatusType status,
      String description});
}

/// @nodoc
class _$SimplifiedPolicyCopyWithImpl<$Res, $Val extends SimplifiedPolicy>
    implements $SimplifiedPolicyCopyWith<$Res> {
  _$SimplifiedPolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuranceId = null,
    Object? policy = null,
    Object? status = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      insuranceId: null == insuranceId
          ? _value.insuranceId
          : insuranceId // ignore: cast_nullable_to_non_nullable
              as int,
      policy: null == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PolicyStatusType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedPolicyImplCopyWith<$Res>
    implements $SimplifiedPolicyCopyWith<$Res> {
  factory _$$SimplifiedPolicyImplCopyWith(_$SimplifiedPolicyImpl value,
          $Res Function(_$SimplifiedPolicyImpl) then) =
      __$$SimplifiedPolicyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int insuranceId,
      String policy,
      PolicyStatusType status,
      String description});
}

/// @nodoc
class __$$SimplifiedPolicyImplCopyWithImpl<$Res>
    extends _$SimplifiedPolicyCopyWithImpl<$Res, _$SimplifiedPolicyImpl>
    implements _$$SimplifiedPolicyImplCopyWith<$Res> {
  __$$SimplifiedPolicyImplCopyWithImpl(_$SimplifiedPolicyImpl _value,
      $Res Function(_$SimplifiedPolicyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuranceId = null,
    Object? policy = null,
    Object? status = null,
    Object? description = null,
  }) {
    return _then(_$SimplifiedPolicyImpl(
      insuranceId: null == insuranceId
          ? _value.insuranceId
          : insuranceId // ignore: cast_nullable_to_non_nullable
              as int,
      policy: null == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PolicyStatusType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SimplifiedPolicyImpl implements _SimplifiedPolicy {
  const _$SimplifiedPolicyImpl(
      {required this.insuranceId,
      required this.policy,
      required this.status,
      required this.description});

  @override
  final int insuranceId;
  @override
  final String policy;
  @override
  final PolicyStatusType status;
  @override
  final String description;

  @override
  String toString() {
    return 'SimplifiedPolicy(insuranceId: $insuranceId, policy: $policy, status: $status, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedPolicyImpl &&
            (identical(other.insuranceId, insuranceId) ||
                other.insuranceId == insuranceId) &&
            (identical(other.policy, policy) || other.policy == policy) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, insuranceId, policy, status, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedPolicyImplCopyWith<_$SimplifiedPolicyImpl> get copyWith =>
      __$$SimplifiedPolicyImplCopyWithImpl<_$SimplifiedPolicyImpl>(
          this, _$identity);
}

abstract class _SimplifiedPolicy implements SimplifiedPolicy {
  const factory _SimplifiedPolicy(
      {required final int insuranceId,
      required final String policy,
      required final PolicyStatusType status,
      required final String description}) = _$SimplifiedPolicyImpl;

  @override
  int get insuranceId;
  @override
  String get policy;
  @override
  PolicyStatusType get status;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedPolicyImplCopyWith<_$SimplifiedPolicyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
