// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_attachment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileAttachmentDto _$FileAttachmentDtoFromJson(Map<String, dynamic> json) {
  return _FileAttachmentDto.fromJson(json);
}

/// @nodoc
mixin _$FileAttachmentDto {
  int get documentId => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  int get fileLength => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get createDate => throw _privateConstructorUsedError;
  int get customerId => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime? get deleteDate => throw _privateConstructorUsedError;
  List<String>? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileAttachmentDtoCopyWith<FileAttachmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileAttachmentDtoCopyWith<$Res> {
  factory $FileAttachmentDtoCopyWith(
          FileAttachmentDto value, $Res Function(FileAttachmentDto) then) =
      _$FileAttachmentDtoCopyWithImpl<$Res, FileAttachmentDto>;
  @useResult
  $Res call(
      {int documentId,
      String fileName,
      int fileLength,
      @DateConverter() DateTime createDate,
      int customerId,
      @DateConverter() DateTime? deleteDate,
      List<String>? content});
}

/// @nodoc
class _$FileAttachmentDtoCopyWithImpl<$Res, $Val extends FileAttachmentDto>
    implements $FileAttachmentDtoCopyWith<$Res> {
  _$FileAttachmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? fileName = null,
    Object? fileLength = null,
    Object? createDate = null,
    Object? customerId = null,
    Object? deleteDate = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
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
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      deleteDate: freezed == deleteDate
          ? _value.deleteDate
          : deleteDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileAttachmentDtoImplCopyWith<$Res>
    implements $FileAttachmentDtoCopyWith<$Res> {
  factory _$$FileAttachmentDtoImplCopyWith(_$FileAttachmentDtoImpl value,
          $Res Function(_$FileAttachmentDtoImpl) then) =
      __$$FileAttachmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int documentId,
      String fileName,
      int fileLength,
      @DateConverter() DateTime createDate,
      int customerId,
      @DateConverter() DateTime? deleteDate,
      List<String>? content});
}

/// @nodoc
class __$$FileAttachmentDtoImplCopyWithImpl<$Res>
    extends _$FileAttachmentDtoCopyWithImpl<$Res, _$FileAttachmentDtoImpl>
    implements _$$FileAttachmentDtoImplCopyWith<$Res> {
  __$$FileAttachmentDtoImplCopyWithImpl(_$FileAttachmentDtoImpl _value,
      $Res Function(_$FileAttachmentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? fileName = null,
    Object? fileLength = null,
    Object? createDate = null,
    Object? customerId = null,
    Object? deleteDate = freezed,
    Object? content = freezed,
  }) {
    return _then(_$FileAttachmentDtoImpl(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
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
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      deleteDate: freezed == deleteDate
          ? _value.deleteDate
          : deleteDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileAttachmentDtoImpl implements _FileAttachmentDto {
  const _$FileAttachmentDtoImpl(
      {required this.documentId,
      required this.fileName,
      required this.fileLength,
      @DateConverter() required this.createDate,
      required this.customerId,
      @DateConverter() this.deleteDate,
      final List<String>? content})
      : _content = content;

  factory _$FileAttachmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileAttachmentDtoImplFromJson(json);

  @override
  final int documentId;
  @override
  final String fileName;
  @override
  final int fileLength;
  @override
  @DateConverter()
  final DateTime createDate;
  @override
  final int customerId;
  @override
  @DateConverter()
  final DateTime? deleteDate;
  final List<String>? _content;
  @override
  List<String>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FileAttachmentDto(documentId: $documentId, fileName: $fileName, fileLength: $fileLength, createDate: $createDate, customerId: $customerId, deleteDate: $deleteDate, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileAttachmentDtoImpl &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileLength, fileLength) ||
                other.fileLength == fileLength) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.deleteDate, deleteDate) ||
                other.deleteDate == deleteDate) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      documentId,
      fileName,
      fileLength,
      createDate,
      customerId,
      deleteDate,
      const DeepCollectionEquality().hash(_content));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileAttachmentDtoImplCopyWith<_$FileAttachmentDtoImpl> get copyWith =>
      __$$FileAttachmentDtoImplCopyWithImpl<_$FileAttachmentDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileAttachmentDtoImplToJson(
      this,
    );
  }
}

abstract class _FileAttachmentDto implements FileAttachmentDto {
  const factory _FileAttachmentDto(
      {required final int documentId,
      required final String fileName,
      required final int fileLength,
      @DateConverter() required final DateTime createDate,
      required final int customerId,
      @DateConverter() final DateTime? deleteDate,
      final List<String>? content}) = _$FileAttachmentDtoImpl;

  factory _FileAttachmentDto.fromJson(Map<String, dynamic> json) =
      _$FileAttachmentDtoImpl.fromJson;

  @override
  int get documentId;
  @override
  String get fileName;
  @override
  int get fileLength;
  @override
  @DateConverter()
  DateTime get createDate;
  @override
  int get customerId;
  @override
  @DateConverter()
  DateTime? get deleteDate;
  @override
  List<String>? get content;
  @override
  @JsonKey(ignore: true)
  _$$FileAttachmentDtoImplCopyWith<_$FileAttachmentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
