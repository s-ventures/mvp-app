// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_attachment_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileAttachmentInfoDto _$FileAttachmentInfoDtoFromJson(Map<String, dynamic> json) {
  return _FileAttachmentInfoDto.fromJson(json);
}

/// @nodoc
mixin _$FileAttachmentInfoDto {
  int get fileId => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  int get fileLength => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get createDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileAttachmentInfoDtoCopyWith<FileAttachmentInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileAttachmentInfoDtoCopyWith<$Res> {
  factory $FileAttachmentInfoDtoCopyWith(
          FileAttachmentInfoDto value, $Res Function(FileAttachmentInfoDto) then) =
      _$FileAttachmentInfoDtoCopyWithImpl<$Res, FileAttachmentInfoDto>;
  @useResult
  $Res call({int fileId, String fileName, int fileLength, @DateConverter() DateTime createDate});
}

/// @nodoc
class _$FileAttachmentInfoDtoCopyWithImpl<$Res, $Val extends FileAttachmentInfoDto>
    implements $FileAttachmentInfoDtoCopyWith<$Res> {
  _$FileAttachmentInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileName = null,
    Object? fileLength = null,
    Object? createDate = null,
  }) {
    return _then(_value.copyWith(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileLength: null == fileLength
          ? _value.fileLength
          : fileLength // ignore: cast_nullable_to_non_nullable
              as int,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileAttachmentInfoDtoImplCopyWith<$Res>
    implements $FileAttachmentInfoDtoCopyWith<$Res> {
  factory _$$FileAttachmentInfoDtoImplCopyWith(
          _$FileAttachmentInfoDtoImpl value, $Res Function(_$FileAttachmentInfoDtoImpl) then) =
      __$$FileAttachmentInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int fileId, String fileName, int fileLength, @DateConverter() DateTime createDate});
}

/// @nodoc
class __$$FileAttachmentInfoDtoImplCopyWithImpl<$Res>
    extends _$FileAttachmentInfoDtoCopyWithImpl<$Res, _$FileAttachmentInfoDtoImpl>
    implements _$$FileAttachmentInfoDtoImplCopyWith<$Res> {
  __$$FileAttachmentInfoDtoImplCopyWithImpl(
      _$FileAttachmentInfoDtoImpl _value, $Res Function(_$FileAttachmentInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileName = null,
    Object? fileLength = null,
    Object? createDate = null,
  }) {
    return _then(_$FileAttachmentInfoDtoImpl(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileLength: null == fileLength
          ? _value.fileLength
          : fileLength // ignore: cast_nullable_to_non_nullable
              as int,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileAttachmentInfoDtoImpl implements _FileAttachmentInfoDto {
  const _$FileAttachmentInfoDtoImpl(
      {required this.fileId,
      required this.fileName,
      required this.fileLength,
      @DateConverter() required this.createDate});

  factory _$FileAttachmentInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileAttachmentInfoDtoImplFromJson(json);

  @override
  final int fileId;
  @override
  final String fileName;
  @override
  final int fileLength;
  @override
  @DateConverter()
  final DateTime createDate;

  @override
  String toString() {
    return 'FileAttachmentInfoDto(fileId: $fileId, fileName: $fileName, fileLength: $fileLength, createDate: $createDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileAttachmentInfoDtoImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.fileName, fileName) || other.fileName == fileName) &&
            (identical(other.fileLength, fileLength) || other.fileLength == fileLength) &&
            (identical(other.createDate, createDate) || other.createDate == createDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileId, fileName, fileLength, createDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileAttachmentInfoDtoImplCopyWith<_$FileAttachmentInfoDtoImpl> get copyWith =>
      __$$FileAttachmentInfoDtoImplCopyWithImpl<_$FileAttachmentInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileAttachmentInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _FileAttachmentInfoDto implements FileAttachmentInfoDto {
  const factory _FileAttachmentInfoDto(
      {required final int fileId,
      required final String fileName,
      required final int fileLength,
      @DateConverter() required final DateTime createDate}) = _$FileAttachmentInfoDtoImpl;

  factory _FileAttachmentInfoDto.fromJson(Map<String, dynamic> json) =
      _$FileAttachmentInfoDtoImpl.fromJson;

  @override
  int get fileId;
  @override
  String get fileName;
  @override
  int get fileLength;
  @override
  @DateConverter()
  DateTime get createDate;
  @override
  @JsonKey(ignore: true)
  _$$FileAttachmentInfoDtoImplCopyWith<_$FileAttachmentInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
