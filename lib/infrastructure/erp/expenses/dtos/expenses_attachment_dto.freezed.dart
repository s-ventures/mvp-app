// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_attachment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpensesAttachmentDto _$ExpensesAttachmentDtoFromJson(
    Map<String, dynamic> json) {
  return _ExpensesAttachmentDto.fromJson(json);
}

/// @nodoc
mixin _$ExpensesAttachmentDto {
  int get expenseAttachmentId => throw _privateConstructorUsedError;
  int get expenseId => throw _privateConstructorUsedError;
  int get fileId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpensesAttachmentDtoCopyWith<ExpensesAttachmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesAttachmentDtoCopyWith<$Res> {
  factory $ExpensesAttachmentDtoCopyWith(ExpensesAttachmentDto value,
          $Res Function(ExpensesAttachmentDto) then) =
      _$ExpensesAttachmentDtoCopyWithImpl<$Res, ExpensesAttachmentDto>;
  @useResult
  $Res call({int expenseAttachmentId, int expenseId, int fileId});
}

/// @nodoc
class _$ExpensesAttachmentDtoCopyWithImpl<$Res,
        $Val extends ExpensesAttachmentDto>
    implements $ExpensesAttachmentDtoCopyWith<$Res> {
  _$ExpensesAttachmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseAttachmentId = null,
    Object? expenseId = null,
    Object? fileId = null,
  }) {
    return _then(_value.copyWith(
      expenseAttachmentId: null == expenseAttachmentId
          ? _value.expenseAttachmentId
          : expenseAttachmentId // ignore: cast_nullable_to_non_nullable
              as int,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpensesAttachmentDtoImplCopyWith<$Res>
    implements $ExpensesAttachmentDtoCopyWith<$Res> {
  factory _$$ExpensesAttachmentDtoImplCopyWith(
          _$ExpensesAttachmentDtoImpl value,
          $Res Function(_$ExpensesAttachmentDtoImpl) then) =
      __$$ExpensesAttachmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int expenseAttachmentId, int expenseId, int fileId});
}

/// @nodoc
class __$$ExpensesAttachmentDtoImplCopyWithImpl<$Res>
    extends _$ExpensesAttachmentDtoCopyWithImpl<$Res,
        _$ExpensesAttachmentDtoImpl>
    implements _$$ExpensesAttachmentDtoImplCopyWith<$Res> {
  __$$ExpensesAttachmentDtoImplCopyWithImpl(_$ExpensesAttachmentDtoImpl _value,
      $Res Function(_$ExpensesAttachmentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseAttachmentId = null,
    Object? expenseId = null,
    Object? fileId = null,
  }) {
    return _then(_$ExpensesAttachmentDtoImpl(
      expenseAttachmentId: null == expenseAttachmentId
          ? _value.expenseAttachmentId
          : expenseAttachmentId // ignore: cast_nullable_to_non_nullable
              as int,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
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
class _$ExpensesAttachmentDtoImpl implements _ExpensesAttachmentDto {
  const _$ExpensesAttachmentDtoImpl(
      {required this.expenseAttachmentId,
      required this.expenseId,
      required this.fileId});

  factory _$ExpensesAttachmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpensesAttachmentDtoImplFromJson(json);

  @override
  final int expenseAttachmentId;
  @override
  final int expenseId;
  @override
  final int fileId;

  @override
  String toString() {
    return 'ExpensesAttachmentDto(expenseAttachmentId: $expenseAttachmentId, expenseId: $expenseId, fileId: $fileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpensesAttachmentDtoImpl &&
            (identical(other.expenseAttachmentId, expenseAttachmentId) ||
                other.expenseAttachmentId == expenseAttachmentId) &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId) &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, expenseAttachmentId, expenseId, fileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpensesAttachmentDtoImplCopyWith<_$ExpensesAttachmentDtoImpl>
      get copyWith => __$$ExpensesAttachmentDtoImplCopyWithImpl<
          _$ExpensesAttachmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpensesAttachmentDtoImplToJson(
      this,
    );
  }
}

abstract class _ExpensesAttachmentDto implements ExpensesAttachmentDto {
  const factory _ExpensesAttachmentDto(
      {required final int expenseAttachmentId,
      required final int expenseId,
      required final int fileId}) = _$ExpensesAttachmentDtoImpl;

  factory _ExpensesAttachmentDto.fromJson(Map<String, dynamic> json) =
      _$ExpensesAttachmentDtoImpl.fromJson;

  @override
  int get expenseAttachmentId;
  @override
  int get expenseId;
  @override
  int get fileId;
  @override
  @JsonKey(ignore: true)
  _$$ExpensesAttachmentDtoImplCopyWith<_$ExpensesAttachmentDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
