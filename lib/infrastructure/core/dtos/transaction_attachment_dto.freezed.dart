// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_attachment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionAttachmentDto _$TransactionAttachmentDtoFromJson(
    Map<String, dynamic> json) {
  return _TransactionAttachmentDto.fromJson(json);
}

/// @nodoc
mixin _$TransactionAttachmentDto {
  int get transactionAttachmentId => throw _privateConstructorUsedError;
  int get movementId => throw _privateConstructorUsedError;
  int get fileId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionAttachmentDtoCopyWith<TransactionAttachmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionAttachmentDtoCopyWith<$Res> {
  factory $TransactionAttachmentDtoCopyWith(TransactionAttachmentDto value,
          $Res Function(TransactionAttachmentDto) then) =
      _$TransactionAttachmentDtoCopyWithImpl<$Res, TransactionAttachmentDto>;
  @useResult
  $Res call({int transactionAttachmentId, int movementId, int fileId});
}

/// @nodoc
class _$TransactionAttachmentDtoCopyWithImpl<$Res,
        $Val extends TransactionAttachmentDto>
    implements $TransactionAttachmentDtoCopyWith<$Res> {
  _$TransactionAttachmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionAttachmentId = null,
    Object? movementId = null,
    Object? fileId = null,
  }) {
    return _then(_value.copyWith(
      transactionAttachmentId: null == transactionAttachmentId
          ? _value.transactionAttachmentId
          : transactionAttachmentId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TransactionAttachmentDtoImplCopyWith<$Res>
    implements $TransactionAttachmentDtoCopyWith<$Res> {
  factory _$$TransactionAttachmentDtoImplCopyWith(
          _$TransactionAttachmentDtoImpl value,
          $Res Function(_$TransactionAttachmentDtoImpl) then) =
      __$$TransactionAttachmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int transactionAttachmentId, int movementId, int fileId});
}

/// @nodoc
class __$$TransactionAttachmentDtoImplCopyWithImpl<$Res>
    extends _$TransactionAttachmentDtoCopyWithImpl<$Res,
        _$TransactionAttachmentDtoImpl>
    implements _$$TransactionAttachmentDtoImplCopyWith<$Res> {
  __$$TransactionAttachmentDtoImplCopyWithImpl(
      _$TransactionAttachmentDtoImpl _value,
      $Res Function(_$TransactionAttachmentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionAttachmentId = null,
    Object? movementId = null,
    Object? fileId = null,
  }) {
    return _then(_$TransactionAttachmentDtoImpl(
      transactionAttachmentId: null == transactionAttachmentId
          ? _value.transactionAttachmentId
          : transactionAttachmentId // ignore: cast_nullable_to_non_nullable
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
class _$TransactionAttachmentDtoImpl implements _TransactionAttachmentDto {
  const _$TransactionAttachmentDtoImpl(
      {required this.transactionAttachmentId,
      required this.movementId,
      required this.fileId});

  factory _$TransactionAttachmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionAttachmentDtoImplFromJson(json);

  @override
  final int transactionAttachmentId;
  @override
  final int movementId;
  @override
  final int fileId;

  @override
  String toString() {
    return 'TransactionAttachmentDto(transactionAttachmentId: $transactionAttachmentId, movementId: $movementId, fileId: $fileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionAttachmentDtoImpl &&
            (identical(
                    other.transactionAttachmentId, transactionAttachmentId) ||
                other.transactionAttachmentId == transactionAttachmentId) &&
            (identical(other.movementId, movementId) ||
                other.movementId == movementId) &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, transactionAttachmentId, movementId, fileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionAttachmentDtoImplCopyWith<_$TransactionAttachmentDtoImpl>
      get copyWith => __$$TransactionAttachmentDtoImplCopyWithImpl<
          _$TransactionAttachmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionAttachmentDtoImplToJson(
      this,
    );
  }
}

abstract class _TransactionAttachmentDto implements TransactionAttachmentDto {
  const factory _TransactionAttachmentDto(
      {required final int transactionAttachmentId,
      required final int movementId,
      required final int fileId}) = _$TransactionAttachmentDtoImpl;

  factory _TransactionAttachmentDto.fromJson(Map<String, dynamic> json) =
      _$TransactionAttachmentDtoImpl.fromJson;

  @override
  int get transactionAttachmentId;
  @override
  int get movementId;
  @override
  int get fileId;
  @override
  @JsonKey(ignore: true)
  _$$TransactionAttachmentDtoImplCopyWith<_$TransactionAttachmentDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
