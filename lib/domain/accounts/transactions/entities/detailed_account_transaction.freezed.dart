// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_account_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedAccountTransaction {
  UniqueId get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get amount =>
      throw _privateConstructorUsedError; // TODO(migalv): Hacer non-nullable, el back-end está enviando null
  double? get endBalance => throw _privateConstructorUsedError;
  DateTime get date =>
      throw _privateConstructorUsedError; // TODO(migalv): Hacer non-nullable, el back-end está enviando null
  String? get originBranch => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get detailFields => throw _privateConstructorUsedError;
  String get userComments => throw _privateConstructorUsedError;
  bool? get bankReceipt =>
      throw _privateConstructorUsedError; // TODO(migalv): Hacer required y non-nullable, el back-end está enviando null
  UniqueId? get accountId => throw _privateConstructorUsedError;
  List<FileAttachment> get attachments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedAccountTransactionCopyWith<DetailedAccountTransaction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedAccountTransactionCopyWith<$Res> {
  factory $DetailedAccountTransactionCopyWith(DetailedAccountTransaction value,
          $Res Function(DetailedAccountTransaction) then) =
      _$DetailedAccountTransactionCopyWithImpl<$Res,
          DetailedAccountTransaction>;
  @useResult
  $Res call(
      {UniqueId id,
      String description,
      double amount,
      double? endBalance,
      DateTime date,
      String? originBranch,
      String category,
      String detailFields,
      String userComments,
      bool? bankReceipt,
      UniqueId? accountId,
      List<FileAttachment> attachments});
}

/// @nodoc
class _$DetailedAccountTransactionCopyWithImpl<$Res,
        $Val extends DetailedAccountTransaction>
    implements $DetailedAccountTransactionCopyWith<$Res> {
  _$DetailedAccountTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? amount = null,
    Object? endBalance = freezed,
    Object? date = null,
    Object? originBranch = freezed,
    Object? category = null,
    Object? detailFields = null,
    Object? userComments = null,
    Object? bankReceipt = freezed,
    Object? accountId = freezed,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      endBalance: freezed == endBalance
          ? _value.endBalance
          : endBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      originBranch: freezed == originBranch
          ? _value.originBranch
          : originBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      detailFields: null == detailFields
          ? _value.detailFields
          : detailFields // ignore: cast_nullable_to_non_nullable
              as String,
      userComments: null == userComments
          ? _value.userComments
          : userComments // ignore: cast_nullable_to_non_nullable
              as String,
      bankReceipt: freezed == bankReceipt
          ? _value.bankReceipt
          : bankReceipt // ignore: cast_nullable_to_non_nullable
              as bool?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedAccountTransactionImplCopyWith<$Res>
    implements $DetailedAccountTransactionCopyWith<$Res> {
  factory _$$DetailedAccountTransactionImplCopyWith(
          _$DetailedAccountTransactionImpl value,
          $Res Function(_$DetailedAccountTransactionImpl) then) =
      __$$DetailedAccountTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      String description,
      double amount,
      double? endBalance,
      DateTime date,
      String? originBranch,
      String category,
      String detailFields,
      String userComments,
      bool? bankReceipt,
      UniqueId? accountId,
      List<FileAttachment> attachments});
}

/// @nodoc
class __$$DetailedAccountTransactionImplCopyWithImpl<$Res>
    extends _$DetailedAccountTransactionCopyWithImpl<$Res,
        _$DetailedAccountTransactionImpl>
    implements _$$DetailedAccountTransactionImplCopyWith<$Res> {
  __$$DetailedAccountTransactionImplCopyWithImpl(
      _$DetailedAccountTransactionImpl _value,
      $Res Function(_$DetailedAccountTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? amount = null,
    Object? endBalance = freezed,
    Object? date = null,
    Object? originBranch = freezed,
    Object? category = null,
    Object? detailFields = null,
    Object? userComments = null,
    Object? bankReceipt = freezed,
    Object? accountId = freezed,
    Object? attachments = null,
  }) {
    return _then(_$DetailedAccountTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      endBalance: freezed == endBalance
          ? _value.endBalance
          : endBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      originBranch: freezed == originBranch
          ? _value.originBranch
          : originBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      detailFields: null == detailFields
          ? _value.detailFields
          : detailFields // ignore: cast_nullable_to_non_nullable
              as String,
      userComments: null == userComments
          ? _value.userComments
          : userComments // ignore: cast_nullable_to_non_nullable
              as String,
      bankReceipt: freezed == bankReceipt
          ? _value.bankReceipt
          : bankReceipt // ignore: cast_nullable_to_non_nullable
              as bool?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachment>,
    ));
  }
}

/// @nodoc

class _$DetailedAccountTransactionImpl implements _DetailedAccountTransaction {
  const _$DetailedAccountTransactionImpl(
      {required this.id,
      required this.description,
      required this.amount,
      required this.endBalance,
      required this.date,
      required this.originBranch,
      required this.category,
      required this.detailFields,
      required this.userComments,
      required this.bankReceipt,
      this.accountId,
      final List<FileAttachment> attachments = const []})
      : _attachments = attachments;

  @override
  final UniqueId id;
  @override
  final String description;
  @override
  final double amount;
// TODO(migalv): Hacer non-nullable, el back-end está enviando null
  @override
  final double? endBalance;
  @override
  final DateTime date;
// TODO(migalv): Hacer non-nullable, el back-end está enviando null
  @override
  final String? originBranch;
  @override
  final String category;
  @override
  final String detailFields;
  @override
  final String userComments;
  @override
  final bool? bankReceipt;
// TODO(migalv): Hacer required y non-nullable, el back-end está enviando null
  @override
  final UniqueId? accountId;
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
    return 'DetailedAccountTransaction(id: $id, description: $description, amount: $amount, endBalance: $endBalance, date: $date, originBranch: $originBranch, category: $category, detailFields: $detailFields, userComments: $userComments, bankReceipt: $bankReceipt, accountId: $accountId, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedAccountTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.endBalance, endBalance) ||
                other.endBalance == endBalance) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.originBranch, originBranch) ||
                other.originBranch == originBranch) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.detailFields, detailFields) ||
                other.detailFields == detailFields) &&
            (identical(other.userComments, userComments) ||
                other.userComments == userComments) &&
            (identical(other.bankReceipt, bankReceipt) ||
                other.bankReceipt == bankReceipt) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      description,
      amount,
      endBalance,
      date,
      originBranch,
      category,
      detailFields,
      userComments,
      bankReceipt,
      accountId,
      const DeepCollectionEquality().hash(_attachments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedAccountTransactionImplCopyWith<_$DetailedAccountTransactionImpl>
      get copyWith => __$$DetailedAccountTransactionImplCopyWithImpl<
          _$DetailedAccountTransactionImpl>(this, _$identity);
}

abstract class _DetailedAccountTransaction
    implements DetailedAccountTransaction {
  const factory _DetailedAccountTransaction(
          {required final UniqueId id,
          required final String description,
          required final double amount,
          required final double? endBalance,
          required final DateTime date,
          required final String? originBranch,
          required final String category,
          required final String detailFields,
          required final String userComments,
          required final bool? bankReceipt,
          final UniqueId? accountId,
          final List<FileAttachment> attachments}) =
      _$DetailedAccountTransactionImpl;

  @override
  UniqueId get id;
  @override
  String get description;
  @override
  double get amount;
  @override // TODO(migalv): Hacer non-nullable, el back-end está enviando null
  double? get endBalance;
  @override
  DateTime get date;
  @override // TODO(migalv): Hacer non-nullable, el back-end está enviando null
  String? get originBranch;
  @override
  String get category;
  @override
  String get detailFields;
  @override
  String get userComments;
  @override
  bool? get bankReceipt;
  @override // TODO(migalv): Hacer required y non-nullable, el back-end está enviando null
  UniqueId? get accountId;
  @override
  List<FileAttachment> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$DetailedAccountTransactionImplCopyWith<_$DetailedAccountTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
