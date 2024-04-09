// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movement_attachment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovementAttachmentDto _$MovementAttachmentDtoFromJson(
    Map<String, dynamic> json) {
  return _MovementAttachmentDto.fromJson(json);
}

/// @nodoc
mixin _$MovementAttachmentDto {
  int get movementAttachmentId => throw _privateConstructorUsedError;
  int get movementId => throw _privateConstructorUsedError;
  int get fileId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovementAttachmentDtoCopyWith<MovementAttachmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovementAttachmentDtoCopyWith<$Res> {
  factory $MovementAttachmentDtoCopyWith(MovementAttachmentDto value,
          $Res Function(MovementAttachmentDto) then) =
      _$MovementAttachmentDtoCopyWithImpl<$Res, MovementAttachmentDto>;
  @useResult
  $Res call({int movementAttachmentId, int movementId, int fileId});
}

/// @nodoc
class _$MovementAttachmentDtoCopyWithImpl<$Res,
        $Val extends MovementAttachmentDto>
    implements $MovementAttachmentDtoCopyWith<$Res> {
  _$MovementAttachmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movementAttachmentId = null,
    Object? movementId = null,
    Object? fileId = null,
  }) {
    return _then(_value.copyWith(
      movementAttachmentId: null == movementAttachmentId
          ? _value.movementAttachmentId
          : movementAttachmentId // ignore: cast_nullable_to_non_nullable
              as int,
      movementId: null == movementId
          ? _value.movementId
          : movementId // ignore: cast_nullable_to_non_nullable
              as int,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovementAttachmentDtoImplCopyWith<$Res>
    implements $MovementAttachmentDtoCopyWith<$Res> {
  factory _$$MovementAttachmentDtoImplCopyWith(
          _$MovementAttachmentDtoImpl value,
          $Res Function(_$MovementAttachmentDtoImpl) then) =
      __$$MovementAttachmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int movementAttachmentId, int movementId, int fileId});
}

/// @nodoc
class __$$MovementAttachmentDtoImplCopyWithImpl<$Res>
    extends _$MovementAttachmentDtoCopyWithImpl<$Res,
        _$MovementAttachmentDtoImpl>
    implements _$$MovementAttachmentDtoImplCopyWith<$Res> {
  __$$MovementAttachmentDtoImplCopyWithImpl(_$MovementAttachmentDtoImpl _value,
      $Res Function(_$MovementAttachmentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movementAttachmentId = null,
    Object? movementId = null,
    Object? fileId = null,
  }) {
    return _then(_$MovementAttachmentDtoImpl(
      movementAttachmentId: null == movementAttachmentId
          ? _value.movementAttachmentId
          : movementAttachmentId // ignore: cast_nullable_to_non_nullable
              as int,
      movementId: null == movementId
          ? _value.movementId
          : movementId // ignore: cast_nullable_to_non_nullable
              as int,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovementAttachmentDtoImpl implements _MovementAttachmentDto {
  const _$MovementAttachmentDtoImpl(
      {required this.movementAttachmentId,
      required this.movementId,
      required this.fileId});

  factory _$MovementAttachmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovementAttachmentDtoImplFromJson(json);

  @override
  final int movementAttachmentId;
  @override
  final int movementId;
  @override
  final int fileId;

  @override
  String toString() {
    return 'MovementAttachmentDto(movementAttachmentId: $movementAttachmentId, movementId: $movementId, fileId: $fileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovementAttachmentDtoImpl &&
            (identical(other.movementAttachmentId, movementAttachmentId) ||
                other.movementAttachmentId == movementAttachmentId) &&
            (identical(other.movementId, movementId) ||
                other.movementId == movementId) &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, movementAttachmentId, movementId, fileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovementAttachmentDtoImplCopyWith<_$MovementAttachmentDtoImpl>
      get copyWith => __$$MovementAttachmentDtoImplCopyWithImpl<
          _$MovementAttachmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovementAttachmentDtoImplToJson(
      this,
    );
  }
}

abstract class _MovementAttachmentDto implements MovementAttachmentDto {
  const factory _MovementAttachmentDto(
      {required final int movementAttachmentId,
      required final int movementId,
      required final int fileId}) = _$MovementAttachmentDtoImpl;

  factory _MovementAttachmentDto.fromJson(Map<String, dynamic> json) =
      _$MovementAttachmentDtoImpl.fromJson;

  @override
  int get movementAttachmentId;
  @override
  int get movementId;
  @override
  int get fileId;
  @override
  @JsonKey(ignore: true)
  _$$MovementAttachmentDtoImplCopyWith<_$MovementAttachmentDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
