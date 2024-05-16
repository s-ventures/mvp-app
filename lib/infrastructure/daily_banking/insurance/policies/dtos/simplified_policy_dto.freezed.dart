// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_policy_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimplifiedPolicyDto _$SimplifiedPolicyDtoFromJson(Map<String, dynamic> json) {
  return _SimplifiedPolicyDto.fromJson(json);
}

/// @nodoc
mixin _$SimplifiedPolicyDto {
  int get insuranceId => throw _privateConstructorUsedError;
  String get policy => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // TODO(georgeta): Change to enum PolicyStatusTypeDto when BE is ready
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimplifiedPolicyDtoCopyWith<SimplifiedPolicyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedPolicyDtoCopyWith<$Res> {
  factory $SimplifiedPolicyDtoCopyWith(
          SimplifiedPolicyDto value, $Res Function(SimplifiedPolicyDto) then) =
      _$SimplifiedPolicyDtoCopyWithImpl<$Res, SimplifiedPolicyDto>;
  @useResult
  $Res call({int insuranceId, String policy, String status, String description});
}

/// @nodoc
class _$SimplifiedPolicyDtoCopyWithImpl<$Res, $Val extends SimplifiedPolicyDto>
    implements $SimplifiedPolicyDtoCopyWith<$Res> {
  _$SimplifiedPolicyDtoCopyWithImpl(this._value, this._then);

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
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedPolicyDtoImplCopyWith<$Res>
    implements $SimplifiedPolicyDtoCopyWith<$Res> {
  factory _$$SimplifiedPolicyDtoImplCopyWith(
          _$SimplifiedPolicyDtoImpl value, $Res Function(_$SimplifiedPolicyDtoImpl) then) =
      __$$SimplifiedPolicyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int insuranceId, String policy, String status, String description});
}

/// @nodoc
class __$$SimplifiedPolicyDtoImplCopyWithImpl<$Res>
    extends _$SimplifiedPolicyDtoCopyWithImpl<$Res, _$SimplifiedPolicyDtoImpl>
    implements _$$SimplifiedPolicyDtoImplCopyWith<$Res> {
  __$$SimplifiedPolicyDtoImplCopyWithImpl(
      _$SimplifiedPolicyDtoImpl _value, $Res Function(_$SimplifiedPolicyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuranceId = null,
    Object? policy = null,
    Object? status = null,
    Object? description = null,
  }) {
    return _then(_$SimplifiedPolicyDtoImpl(
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
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimplifiedPolicyDtoImpl implements _SimplifiedPolicyDto {
  const _$SimplifiedPolicyDtoImpl(
      {required this.insuranceId,
      required this.policy,
      required this.status,
      required this.description});

  factory _$SimplifiedPolicyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimplifiedPolicyDtoImplFromJson(json);

  @override
  final int insuranceId;
  @override
  final String policy;
  @override
  final String status;
// TODO(georgeta): Change to enum PolicyStatusTypeDto when BE is ready
  @override
  final String description;

  @override
  String toString() {
    return 'SimplifiedPolicyDto(insuranceId: $insuranceId, policy: $policy, status: $status, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedPolicyDtoImpl &&
            (identical(other.insuranceId, insuranceId) || other.insuranceId == insuranceId) &&
            (identical(other.policy, policy) || other.policy == policy) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) || other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, insuranceId, policy, status, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedPolicyDtoImplCopyWith<_$SimplifiedPolicyDtoImpl> get copyWith =>
      __$$SimplifiedPolicyDtoImplCopyWithImpl<_$SimplifiedPolicyDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimplifiedPolicyDtoImplToJson(
      this,
    );
  }
}

abstract class _SimplifiedPolicyDto implements SimplifiedPolicyDto {
  const factory _SimplifiedPolicyDto(
      {required final int insuranceId,
      required final String policy,
      required final String status,
      required final String description}) = _$SimplifiedPolicyDtoImpl;

  factory _SimplifiedPolicyDto.fromJson(Map<String, dynamic> json) =
      _$SimplifiedPolicyDtoImpl.fromJson;

  @override
  int get insuranceId;
  @override
  String get policy;
  @override
  String get status;
  @override // TODO(georgeta): Change to enum PolicyStatusTypeDto when BE is ready
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedPolicyDtoImplCopyWith<_$SimplifiedPolicyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
