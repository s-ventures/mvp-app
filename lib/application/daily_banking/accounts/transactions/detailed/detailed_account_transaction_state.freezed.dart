// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_account_transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedAccountTransactionState {
  AsyncValue<DetailedAccountTransaction> get transaction =>
      throw _privateConstructorUsedError;
  List<FileAttachment> get attachments => throw _privateConstructorUsedError;
  SingleAccessValue<UploadEvent> get uploadEvent =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedAccountTransactionStateCopyWith<DetailedAccountTransactionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedAccountTransactionStateCopyWith<$Res> {
  factory $DetailedAccountTransactionStateCopyWith(
          DetailedAccountTransactionState value,
          $Res Function(DetailedAccountTransactionState) then) =
      _$DetailedAccountTransactionStateCopyWithImpl<$Res,
          DetailedAccountTransactionState>;
  @useResult
  $Res call(
      {AsyncValue<DetailedAccountTransaction> transaction,
      List<FileAttachment> attachments,
      SingleAccessValue<UploadEvent> uploadEvent});
}

/// @nodoc
class _$DetailedAccountTransactionStateCopyWithImpl<$Res,
        $Val extends DetailedAccountTransactionState>
    implements $DetailedAccountTransactionStateCopyWith<$Res> {
  _$DetailedAccountTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? attachments = null,
    Object? uploadEvent = null,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedAccountTransaction>,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachment>,
      uploadEvent: null == uploadEvent
          ? _value.uploadEvent
          : uploadEvent // ignore: cast_nullable_to_non_nullable
              as SingleAccessValue<UploadEvent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedAccountTransactionStateImplCopyWith<$Res>
    implements $DetailedAccountTransactionStateCopyWith<$Res> {
  factory _$$DetailedAccountTransactionStateImplCopyWith(
          _$DetailedAccountTransactionStateImpl value,
          $Res Function(_$DetailedAccountTransactionStateImpl) then) =
      __$$DetailedAccountTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<DetailedAccountTransaction> transaction,
      List<FileAttachment> attachments,
      SingleAccessValue<UploadEvent> uploadEvent});
}

/// @nodoc
class __$$DetailedAccountTransactionStateImplCopyWithImpl<$Res>
    extends _$DetailedAccountTransactionStateCopyWithImpl<$Res,
        _$DetailedAccountTransactionStateImpl>
    implements _$$DetailedAccountTransactionStateImplCopyWith<$Res> {
  __$$DetailedAccountTransactionStateImplCopyWithImpl(
      _$DetailedAccountTransactionStateImpl _value,
      $Res Function(_$DetailedAccountTransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? attachments = null,
    Object? uploadEvent = null,
  }) {
    return _then(_$DetailedAccountTransactionStateImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedAccountTransaction>,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachment>,
      uploadEvent: null == uploadEvent
          ? _value.uploadEvent
          : uploadEvent // ignore: cast_nullable_to_non_nullable
              as SingleAccessValue<UploadEvent>,
    ));
  }
}

/// @nodoc

class _$DetailedAccountTransactionStateImpl
    extends _DetailedAccountTransactionState {
  const _$DetailedAccountTransactionStateImpl(
      {this.transaction = const AsyncLoading<DetailedAccountTransaction>(),
      final List<FileAttachment> attachments = const [],
      this.uploadEvent = const SingleAccessVoid<UploadEvent>()})
      : _attachments = attachments,
        super._();

  @override
  @JsonKey()
  final AsyncValue<DetailedAccountTransaction> transaction;
  final List<FileAttachment> _attachments;
  @override
  @JsonKey()
  List<FileAttachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  @JsonKey()
  final SingleAccessValue<UploadEvent> uploadEvent;

  @override
  String toString() {
    return 'DetailedAccountTransactionState(transaction: $transaction, attachments: $attachments, uploadEvent: $uploadEvent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedAccountTransactionStateImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.uploadEvent, uploadEvent) ||
                other.uploadEvent == uploadEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction,
      const DeepCollectionEquality().hash(_attachments), uploadEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedAccountTransactionStateImplCopyWith<
          _$DetailedAccountTransactionStateImpl>
      get copyWith => __$$DetailedAccountTransactionStateImplCopyWithImpl<
          _$DetailedAccountTransactionStateImpl>(this, _$identity);
}

abstract class _DetailedAccountTransactionState
    extends DetailedAccountTransactionState implements UploadAttachmentState {
  const factory _DetailedAccountTransactionState(
          {final AsyncValue<DetailedAccountTransaction> transaction,
          final List<FileAttachment> attachments,
          final SingleAccessValue<UploadEvent> uploadEvent}) =
      _$DetailedAccountTransactionStateImpl;
  const _DetailedAccountTransactionState._() : super._();

  @override
  AsyncValue<DetailedAccountTransaction> get transaction;
  @override
  List<FileAttachment> get attachments;
  @override
  SingleAccessValue<UploadEvent> get uploadEvent;
  @override
  @JsonKey(ignore: true)
  _$$DetailedAccountTransactionStateImplCopyWith<
          _$DetailedAccountTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
