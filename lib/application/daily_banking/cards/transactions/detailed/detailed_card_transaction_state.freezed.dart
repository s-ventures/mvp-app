// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_card_transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedCardTransactionState {
  String? get cardContractId => throw _privateConstructorUsedError;
  AsyncValue<DetailedCardTransaction> get transaction => throw _privateConstructorUsedError;
  List<FileAttachment> get attachments => throw _privateConstructorUsedError;
  SingleAccessValue<UploadEvent> get uploadEvent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedCardTransactionStateCopyWith<DetailedCardTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedCardTransactionStateCopyWith<$Res> {
  factory $DetailedCardTransactionStateCopyWith(
          DetailedCardTransactionState value, $Res Function(DetailedCardTransactionState) then) =
      _$DetailedCardTransactionStateCopyWithImpl<$Res, DetailedCardTransactionState>;
  @useResult
  $Res call(
      {String? cardContractId,
      AsyncValue<DetailedCardTransaction> transaction,
      List<FileAttachment> attachments,
      SingleAccessValue<UploadEvent> uploadEvent});
}

/// @nodoc
class _$DetailedCardTransactionStateCopyWithImpl<$Res, $Val extends DetailedCardTransactionState>
    implements $DetailedCardTransactionStateCopyWith<$Res> {
  _$DetailedCardTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardContractId = freezed,
    Object? transaction = null,
    Object? attachments = null,
    Object? uploadEvent = null,
  }) {
    return _then(_value.copyWith(
      cardContractId: freezed == cardContractId
          ? _value.cardContractId
          : cardContractId // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedCardTransaction>,
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
abstract class _$$DetailedCardTransactionStateImplCopyWith<$Res>
    implements $DetailedCardTransactionStateCopyWith<$Res> {
  factory _$$DetailedCardTransactionStateImplCopyWith(_$DetailedCardTransactionStateImpl value,
          $Res Function(_$DetailedCardTransactionStateImpl) then) =
      __$$DetailedCardTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? cardContractId,
      AsyncValue<DetailedCardTransaction> transaction,
      List<FileAttachment> attachments,
      SingleAccessValue<UploadEvent> uploadEvent});
}

/// @nodoc
class __$$DetailedCardTransactionStateImplCopyWithImpl<$Res>
    extends _$DetailedCardTransactionStateCopyWithImpl<$Res, _$DetailedCardTransactionStateImpl>
    implements _$$DetailedCardTransactionStateImplCopyWith<$Res> {
  __$$DetailedCardTransactionStateImplCopyWithImpl(_$DetailedCardTransactionStateImpl _value,
      $Res Function(_$DetailedCardTransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardContractId = freezed,
    Object? transaction = null,
    Object? attachments = null,
    Object? uploadEvent = null,
  }) {
    return _then(_$DetailedCardTransactionStateImpl(
      cardContractId: freezed == cardContractId
          ? _value.cardContractId
          : cardContractId // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedCardTransaction>,
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

class _$DetailedCardTransactionStateImpl extends _DetailedCardTransactionState {
  const _$DetailedCardTransactionStateImpl(
      {this.cardContractId,
      this.transaction = const AsyncLoading<DetailedCardTransaction>(),
      final List<FileAttachment> attachments = const [],
      this.uploadEvent = const SingleAccessVoid<UploadEvent>()})
      : _attachments = attachments,
        super._();

  @override
  final String? cardContractId;
  @override
  @JsonKey()
  final AsyncValue<DetailedCardTransaction> transaction;
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
    return 'DetailedCardTransactionState(cardContractId: $cardContractId, transaction: $transaction, attachments: $attachments, uploadEvent: $uploadEvent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedCardTransactionStateImpl &&
            (identical(other.cardContractId, cardContractId) ||
                other.cardContractId == cardContractId) &&
            (identical(other.transaction, transaction) || other.transaction == transaction) &&
            const DeepCollectionEquality().equals(other._attachments, _attachments) &&
            (identical(other.uploadEvent, uploadEvent) || other.uploadEvent == uploadEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardContractId, transaction,
      const DeepCollectionEquality().hash(_attachments), uploadEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedCardTransactionStateImplCopyWith<_$DetailedCardTransactionStateImpl> get copyWith =>
      __$$DetailedCardTransactionStateImplCopyWithImpl<_$DetailedCardTransactionStateImpl>(
          this, _$identity);
}

abstract class _DetailedCardTransactionState extends DetailedCardTransactionState
    implements UploadAttachmentState {
  const factory _DetailedCardTransactionState(
      {final String? cardContractId,
      final AsyncValue<DetailedCardTransaction> transaction,
      final List<FileAttachment> attachments,
      final SingleAccessValue<UploadEvent> uploadEvent}) = _$DetailedCardTransactionStateImpl;
  const _DetailedCardTransactionState._() : super._();

  @override
  String? get cardContractId;
  @override
  AsyncValue<DetailedCardTransaction> get transaction;
  @override
  List<FileAttachment> get attachments;
  @override
  SingleAccessValue<UploadEvent> get uploadEvent;
  @override
  @JsonKey(ignore: true)
  _$$DetailedCardTransactionStateImplCopyWith<_$DetailedCardTransactionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
