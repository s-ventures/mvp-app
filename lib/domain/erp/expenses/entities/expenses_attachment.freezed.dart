// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpensesAttachment {
  UniqueId get expenseAttachmentId => throw _privateConstructorUsedError;
  UniqueId get expenseId => throw _privateConstructorUsedError;
  UniqueId get fileId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpensesAttachmentCopyWith<ExpensesAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesAttachmentCopyWith<$Res> {
  factory $ExpensesAttachmentCopyWith(
          ExpensesAttachment value, $Res Function(ExpensesAttachment) then) =
      _$ExpensesAttachmentCopyWithImpl<$Res, ExpensesAttachment>;
  @useResult
  $Res call(
      {UniqueId expenseAttachmentId, UniqueId expenseId, UniqueId fileId});
}

/// @nodoc
class _$ExpensesAttachmentCopyWithImpl<$Res, $Val extends ExpensesAttachment>
    implements $ExpensesAttachmentCopyWith<$Res> {
  _$ExpensesAttachmentCopyWithImpl(this._value, this._then);

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
              as UniqueId,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpensesAttachmentImplCopyWith<$Res>
    implements $ExpensesAttachmentCopyWith<$Res> {
  factory _$$ExpensesAttachmentImplCopyWith(_$ExpensesAttachmentImpl value,
          $Res Function(_$ExpensesAttachmentImpl) then) =
      __$$ExpensesAttachmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId expenseAttachmentId, UniqueId expenseId, UniqueId fileId});
}

/// @nodoc
class __$$ExpensesAttachmentImplCopyWithImpl<$Res>
    extends _$ExpensesAttachmentCopyWithImpl<$Res, _$ExpensesAttachmentImpl>
    implements _$$ExpensesAttachmentImplCopyWith<$Res> {
  __$$ExpensesAttachmentImplCopyWithImpl(_$ExpensesAttachmentImpl _value,
      $Res Function(_$ExpensesAttachmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseAttachmentId = null,
    Object? expenseId = null,
    Object? fileId = null,
  }) {
    return _then(_$ExpensesAttachmentImpl(
      expenseAttachmentId: null == expenseAttachmentId
          ? _value.expenseAttachmentId
          : expenseAttachmentId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$ExpensesAttachmentImpl implements _ExpensesAttachment {
  const _$ExpensesAttachmentImpl(
      {required this.expenseAttachmentId,
      required this.expenseId,
      required this.fileId});

  @override
  final UniqueId expenseAttachmentId;
  @override
  final UniqueId expenseId;
  @override
  final UniqueId fileId;

  @override
  String toString() {
    return 'ExpensesAttachment(expenseAttachmentId: $expenseAttachmentId, expenseId: $expenseId, fileId: $fileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpensesAttachmentImpl &&
            (identical(other.expenseAttachmentId, expenseAttachmentId) ||
                other.expenseAttachmentId == expenseAttachmentId) &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId) &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, expenseAttachmentId, expenseId, fileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpensesAttachmentImplCopyWith<_$ExpensesAttachmentImpl> get copyWith =>
      __$$ExpensesAttachmentImplCopyWithImpl<_$ExpensesAttachmentImpl>(
          this, _$identity);
}

abstract class _ExpensesAttachment implements ExpensesAttachment {
  const factory _ExpensesAttachment(
      {required final UniqueId expenseAttachmentId,
      required final UniqueId expenseId,
      required final UniqueId fileId}) = _$ExpensesAttachmentImpl;

  @override
  UniqueId get expenseAttachmentId;
  @override
  UniqueId get expenseId;
  @override
  UniqueId get fileId;
  @override
  @JsonKey(ignore: true)
  _$$ExpensesAttachmentImplCopyWith<_$ExpensesAttachmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
