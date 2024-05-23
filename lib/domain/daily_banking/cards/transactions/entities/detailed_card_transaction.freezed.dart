// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_card_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedCardTransaction {
  UniqueId get id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  DateTime get postingDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get placeId => throw _privateConstructorUsedError;
  String get merchantName => throw _privateConstructorUsedError;
  String get concept => throw _privateConstructorUsedError;
  String get cardEncryptedNumber => throw _privateConstructorUsedError;
  List<FileAttachment> get attachments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedCardTransactionCopyWith<DetailedCardTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedCardTransactionCopyWith<$Res> {
  factory $DetailedCardTransactionCopyWith(
          DetailedCardTransaction value, $Res Function(DetailedCardTransaction) then) =
      _$DetailedCardTransactionCopyWithImpl<$Res, DetailedCardTransaction>;
  @useResult
  $Res call(
      {UniqueId id,
      double amount,
      DateTime postingDate,
      String? description,
      String? placeId,
      String merchantName,
      String concept,
      String cardEncryptedNumber,
      List<FileAttachment> attachments});
}

/// @nodoc
class _$DetailedCardTransactionCopyWithImpl<$Res, $Val extends DetailedCardTransaction>
    implements $DetailedCardTransactionCopyWith<$Res> {
  _$DetailedCardTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? postingDate = null,
    Object? description = freezed,
    Object? placeId = freezed,
    Object? merchantName = null,
    Object? concept = null,
    Object? cardEncryptedNumber = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      postingDate: null == postingDate
          ? _value.postingDate
          : postingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: null == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
      concept: null == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as String,
      cardEncryptedNumber: null == cardEncryptedNumber
          ? _value.cardEncryptedNumber
          : cardEncryptedNumber // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedCardTransactionImplCopyWith<$Res>
    implements $DetailedCardTransactionCopyWith<$Res> {
  factory _$$DetailedCardTransactionImplCopyWith(
          _$DetailedCardTransactionImpl value, $Res Function(_$DetailedCardTransactionImpl) then) =
      __$$DetailedCardTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      double amount,
      DateTime postingDate,
      String? description,
      String? placeId,
      String merchantName,
      String concept,
      String cardEncryptedNumber,
      List<FileAttachment> attachments});
}

/// @nodoc
class __$$DetailedCardTransactionImplCopyWithImpl<$Res>
    extends _$DetailedCardTransactionCopyWithImpl<$Res, _$DetailedCardTransactionImpl>
    implements _$$DetailedCardTransactionImplCopyWith<$Res> {
  __$$DetailedCardTransactionImplCopyWithImpl(
      _$DetailedCardTransactionImpl _value, $Res Function(_$DetailedCardTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? postingDate = null,
    Object? description = freezed,
    Object? placeId = freezed,
    Object? merchantName = null,
    Object? concept = null,
    Object? cardEncryptedNumber = null,
    Object? attachments = null,
  }) {
    return _then(_$DetailedCardTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      postingDate: null == postingDate
          ? _value.postingDate
          : postingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: null == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
      concept: null == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as String,
      cardEncryptedNumber: null == cardEncryptedNumber
          ? _value.cardEncryptedNumber
          : cardEncryptedNumber // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachment>,
    ));
  }
}

/// @nodoc

class _$DetailedCardTransactionImpl implements _DetailedCardTransaction {
  const _$DetailedCardTransactionImpl(
      {required this.id,
      required this.amount,
      required this.postingDate,
      required this.description,
      required this.placeId,
      required this.merchantName,
      required this.concept,
      required this.cardEncryptedNumber,
      final List<FileAttachment> attachments = const []})
      : _attachments = attachments;

  @override
  final UniqueId id;
  @override
  final double amount;
  @override
  final DateTime postingDate;
  @override
  final String? description;
  @override
  final String? placeId;
  @override
  final String merchantName;
  @override
  final String concept;
  @override
  final String cardEncryptedNumber;
  final List<FileAttachment> _attachments;
  @override
  @JsonKey()
  List<FileAttachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'DetailedCardTransaction(id: $id, amount: $amount, postingDate: $postingDate, description: $description, placeId: $placeId, merchantName: $merchantName, concept: $concept, cardEncryptedNumber: $cardEncryptedNumber, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedCardTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.postingDate, postingDate) || other.postingDate == postingDate) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.merchantName, merchantName) || other.merchantName == merchantName) &&
            (identical(other.concept, concept) || other.concept == concept) &&
            (identical(other.cardEncryptedNumber, cardEncryptedNumber) ||
                other.cardEncryptedNumber == cardEncryptedNumber) &&
            const DeepCollectionEquality().equals(other._attachments, _attachments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      amount,
      postingDate,
      description,
      placeId,
      merchantName,
      concept,
      cardEncryptedNumber,
      const DeepCollectionEquality().hash(_attachments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedCardTransactionImplCopyWith<_$DetailedCardTransactionImpl> get copyWith =>
      __$$DetailedCardTransactionImplCopyWithImpl<_$DetailedCardTransactionImpl>(this, _$identity);
}

abstract class _DetailedCardTransaction implements DetailedCardTransaction {
  const factory _DetailedCardTransaction(
      {required final UniqueId id,
      required final double amount,
      required final DateTime postingDate,
      required final String? description,
      required final String? placeId,
      required final String merchantName,
      required final String concept,
      required final String cardEncryptedNumber,
      final List<FileAttachment> attachments}) = _$DetailedCardTransactionImpl;

  @override
  UniqueId get id;
  @override
  double get amount;
  @override
  DateTime get postingDate;
  @override
  String? get description;
  @override
  String? get placeId;
  @override
  String get merchantName;
  @override
  String get concept;
  @override
  String get cardEncryptedNumber;
  @override
  List<FileAttachment> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$DetailedCardTransactionImplCopyWith<_$DetailedCardTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
