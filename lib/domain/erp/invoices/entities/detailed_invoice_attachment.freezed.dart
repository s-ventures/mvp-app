// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_invoice_attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedInvoiceAttachment {
  UniqueId get invoiceAttachmentId => throw _privateConstructorUsedError;
  UniqueId get invoiceId => throw _privateConstructorUsedError;
  UniqueId get fileId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedInvoiceAttachmentCopyWith<DetailedInvoiceAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedInvoiceAttachmentCopyWith<$Res> {
  factory $DetailedInvoiceAttachmentCopyWith(DetailedInvoiceAttachment value,
          $Res Function(DetailedInvoiceAttachment) then) =
      _$DetailedInvoiceAttachmentCopyWithImpl<$Res, DetailedInvoiceAttachment>;
  @useResult
  $Res call(
      {UniqueId invoiceAttachmentId, UniqueId invoiceId, UniqueId fileId});
}

/// @nodoc
class _$DetailedInvoiceAttachmentCopyWithImpl<$Res,
        $Val extends DetailedInvoiceAttachment>
    implements $DetailedInvoiceAttachmentCopyWith<$Res> {
  _$DetailedInvoiceAttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceAttachmentId = null,
    Object? invoiceId = null,
    Object? fileId = null,
  }) {
    return _then(_value.copyWith(
      invoiceAttachmentId: null == invoiceAttachmentId
          ? _value.invoiceAttachmentId
          : invoiceAttachmentId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedInvoiceAttachmentImplCopyWith<$Res>
    implements $DetailedInvoiceAttachmentCopyWith<$Res> {
  factory _$$DetailedInvoiceAttachmentImplCopyWith(
          _$DetailedInvoiceAttachmentImpl value,
          $Res Function(_$DetailedInvoiceAttachmentImpl) then) =
      __$$DetailedInvoiceAttachmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId invoiceAttachmentId, UniqueId invoiceId, UniqueId fileId});
}

/// @nodoc
class __$$DetailedInvoiceAttachmentImplCopyWithImpl<$Res>
    extends _$DetailedInvoiceAttachmentCopyWithImpl<$Res,
        _$DetailedInvoiceAttachmentImpl>
    implements _$$DetailedInvoiceAttachmentImplCopyWith<$Res> {
  __$$DetailedInvoiceAttachmentImplCopyWithImpl(
      _$DetailedInvoiceAttachmentImpl _value,
      $Res Function(_$DetailedInvoiceAttachmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceAttachmentId = null,
    Object? invoiceId = null,
    Object? fileId = null,
  }) {
    return _then(_$DetailedInvoiceAttachmentImpl(
      invoiceAttachmentId: null == invoiceAttachmentId
          ? _value.invoiceAttachmentId
          : invoiceAttachmentId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$DetailedInvoiceAttachmentImpl implements _DetailedInvoiceAttachment {
  const _$DetailedInvoiceAttachmentImpl(
      {required this.invoiceAttachmentId,
      required this.invoiceId,
      required this.fileId});

  @override
  final UniqueId invoiceAttachmentId;
  @override
  final UniqueId invoiceId;
  @override
  final UniqueId fileId;

  @override
  String toString() {
    return 'DetailedInvoiceAttachment(invoiceAttachmentId: $invoiceAttachmentId, invoiceId: $invoiceId, fileId: $fileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedInvoiceAttachmentImpl &&
            (identical(other.invoiceAttachmentId, invoiceAttachmentId) ||
                other.invoiceAttachmentId == invoiceAttachmentId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, invoiceAttachmentId, invoiceId, fileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedInvoiceAttachmentImplCopyWith<_$DetailedInvoiceAttachmentImpl>
      get copyWith => __$$DetailedInvoiceAttachmentImplCopyWithImpl<
          _$DetailedInvoiceAttachmentImpl>(this, _$identity);
}

abstract class _DetailedInvoiceAttachment implements DetailedInvoiceAttachment {
  const factory _DetailedInvoiceAttachment(
      {required final UniqueId invoiceAttachmentId,
      required final UniqueId invoiceId,
      required final UniqueId fileId}) = _$DetailedInvoiceAttachmentImpl;

  @override
  UniqueId get invoiceAttachmentId;
  @override
  UniqueId get invoiceId;
  @override
  UniqueId get fileId;
  @override
  @JsonKey(ignore: true)
  _$$DetailedInvoiceAttachmentImplCopyWith<_$DetailedInvoiceAttachmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
