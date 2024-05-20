// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_account_transaction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailedAccountTransactionDto _$DetailedAccountTransactionDtoFromJson(Map<String, dynamic> json) {
  return _DetailedAccountTransactionDto.fromJson(json);
}

/// @nodoc
mixin _$DetailedAccountTransactionDto {
  int get movementId => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get postingDate => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get valueDate => throw _privateConstructorUsedError;
  AccountTransactionTypeDto get type => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get analyticsCategory => throw _privateConstructorUsedError;
  String? get userComments => throw _privateConstructorUsedError;
  String? get userCategory => throw _privateConstructorUsedError;
  String? get placeId =>
      throw _privateConstructorUsedError; // TODO(migalv): Hacer non-nullable de nuevo, el back-end está enviando null
  int? get accountId =>
      throw _privateConstructorUsedError; // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  double? get endBalance => throw _privateConstructorUsedError;
  String? get detailFields => throw _privateConstructorUsedError;
  bool? get visible =>
      throw _privateConstructorUsedError; // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  bool? get bankReceipt =>
      throw _privateConstructorUsedError; // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  String? get originBranch =>
      throw _privateConstructorUsedError; // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  double? get originalAmount =>
      throw _privateConstructorUsedError; // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  String? get originalCurrencyCode =>
      throw _privateConstructorUsedError; // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  @DateConverter()
  DateTime? get assignmentDate => throw _privateConstructorUsedError;
  List<FileAttachmentInfoDto>? get attachments => throw _privateConstructorUsedError;
  @ExtendedDetailsConverter()
  ExtendedDetailsDto? get extendedDetails => throw _privateConstructorUsedError;
  ProductTypeDto get productType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedAccountTransactionDtoCopyWith<DetailedAccountTransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedAccountTransactionDtoCopyWith<$Res> {
  factory $DetailedAccountTransactionDtoCopyWith(
          DetailedAccountTransactionDto value, $Res Function(DetailedAccountTransactionDto) then) =
      _$DetailedAccountTransactionDtoCopyWithImpl<$Res, DetailedAccountTransactionDto>;
  @useResult
  $Res call(
      {int movementId,
      @DateConverter() DateTime postingDate,
      @DateConverter() DateTime valueDate,
      AccountTransactionTypeDto type,
      double amount,
      String currencyCode,
      String description,
      String? analyticsCategory,
      String? userComments,
      String? userCategory,
      String? placeId,
      int? accountId,
      double? endBalance,
      String? detailFields,
      bool? visible,
      bool? bankReceipt,
      String? originBranch,
      double? originalAmount,
      String? originalCurrencyCode,
      @DateConverter() DateTime? assignmentDate,
      List<FileAttachmentInfoDto>? attachments,
      @ExtendedDetailsConverter() ExtendedDetailsDto? extendedDetails,
      ProductTypeDto productType});
}

/// @nodoc
class _$DetailedAccountTransactionDtoCopyWithImpl<$Res, $Val extends DetailedAccountTransactionDto>
    implements $DetailedAccountTransactionDtoCopyWith<$Res> {
  _$DetailedAccountTransactionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movementId = null,
    Object? postingDate = null,
    Object? valueDate = null,
    Object? type = null,
    Object? amount = null,
    Object? currencyCode = null,
    Object? description = null,
    Object? analyticsCategory = freezed,
    Object? userComments = freezed,
    Object? userCategory = freezed,
    Object? placeId = freezed,
    Object? accountId = freezed,
    Object? endBalance = freezed,
    Object? detailFields = freezed,
    Object? visible = freezed,
    Object? bankReceipt = freezed,
    Object? originBranch = freezed,
    Object? originalAmount = freezed,
    Object? originalCurrencyCode = freezed,
    Object? assignmentDate = freezed,
    Object? attachments = freezed,
    Object? extendedDetails = freezed,
    Object? productType = null,
  }) {
    return _then(_value.copyWith(
      movementId: null == movementId
          ? _value.movementId
          : movementId // ignore: cast_nullable_to_non_nullable
              as int,
      postingDate: null == postingDate
          ? _value.postingDate
          : postingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueDate: null == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountTransactionTypeDto,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      analyticsCategory: freezed == analyticsCategory
          ? _value.analyticsCategory
          : analyticsCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      userComments: freezed == userComments
          ? _value.userComments
          : userComments // ignore: cast_nullable_to_non_nullable
              as String?,
      userCategory: freezed == userCategory
          ? _value.userCategory
          : userCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      endBalance: freezed == endBalance
          ? _value.endBalance
          : endBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      detailFields: freezed == detailFields
          ? _value.detailFields
          : detailFields // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      bankReceipt: freezed == bankReceipt
          ? _value.bankReceipt
          : bankReceipt // ignore: cast_nullable_to_non_nullable
              as bool?,
      originBranch: freezed == originBranch
          ? _value.originBranch
          : originBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      originalCurrencyCode: freezed == originalCurrencyCode
          ? _value.originalCurrencyCode
          : originalCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      assignmentDate: freezed == assignmentDate
          ? _value.assignmentDate
          : assignmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachmentInfoDto>?,
      extendedDetails: freezed == extendedDetails
          ? _value.extendedDetails
          : extendedDetails // ignore: cast_nullable_to_non_nullable
              as ExtendedDetailsDto?,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductTypeDto,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedAccountTransactionDtoImplCopyWith<$Res>
    implements $DetailedAccountTransactionDtoCopyWith<$Res> {
  factory _$$DetailedAccountTransactionDtoImplCopyWith(_$DetailedAccountTransactionDtoImpl value,
          $Res Function(_$DetailedAccountTransactionDtoImpl) then) =
      __$$DetailedAccountTransactionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int movementId,
      @DateConverter() DateTime postingDate,
      @DateConverter() DateTime valueDate,
      AccountTransactionTypeDto type,
      double amount,
      String currencyCode,
      String description,
      String? analyticsCategory,
      String? userComments,
      String? userCategory,
      String? placeId,
      int? accountId,
      double? endBalance,
      String? detailFields,
      bool? visible,
      bool? bankReceipt,
      String? originBranch,
      double? originalAmount,
      String? originalCurrencyCode,
      @DateConverter() DateTime? assignmentDate,
      List<FileAttachmentInfoDto>? attachments,
      @ExtendedDetailsConverter() ExtendedDetailsDto? extendedDetails,
      ProductTypeDto productType});
}

/// @nodoc
class __$$DetailedAccountTransactionDtoImplCopyWithImpl<$Res>
    extends _$DetailedAccountTransactionDtoCopyWithImpl<$Res, _$DetailedAccountTransactionDtoImpl>
    implements _$$DetailedAccountTransactionDtoImplCopyWith<$Res> {
  __$$DetailedAccountTransactionDtoImplCopyWithImpl(_$DetailedAccountTransactionDtoImpl _value,
      $Res Function(_$DetailedAccountTransactionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movementId = null,
    Object? postingDate = null,
    Object? valueDate = null,
    Object? type = null,
    Object? amount = null,
    Object? currencyCode = null,
    Object? description = null,
    Object? analyticsCategory = freezed,
    Object? userComments = freezed,
    Object? userCategory = freezed,
    Object? placeId = freezed,
    Object? accountId = freezed,
    Object? endBalance = freezed,
    Object? detailFields = freezed,
    Object? visible = freezed,
    Object? bankReceipt = freezed,
    Object? originBranch = freezed,
    Object? originalAmount = freezed,
    Object? originalCurrencyCode = freezed,
    Object? assignmentDate = freezed,
    Object? attachments = freezed,
    Object? extendedDetails = freezed,
    Object? productType = null,
  }) {
    return _then(_$DetailedAccountTransactionDtoImpl(
      movementId: null == movementId
          ? _value.movementId
          : movementId // ignore: cast_nullable_to_non_nullable
              as int,
      postingDate: null == postingDate
          ? _value.postingDate
          : postingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueDate: null == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AccountTransactionTypeDto,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      analyticsCategory: freezed == analyticsCategory
          ? _value.analyticsCategory
          : analyticsCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      userComments: freezed == userComments
          ? _value.userComments
          : userComments // ignore: cast_nullable_to_non_nullable
              as String?,
      userCategory: freezed == userCategory
          ? _value.userCategory
          : userCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      endBalance: freezed == endBalance
          ? _value.endBalance
          : endBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      detailFields: freezed == detailFields
          ? _value.detailFields
          : detailFields // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      bankReceipt: freezed == bankReceipt
          ? _value.bankReceipt
          : bankReceipt // ignore: cast_nullable_to_non_nullable
              as bool?,
      originBranch: freezed == originBranch
          ? _value.originBranch
          : originBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      originalAmount: freezed == originalAmount
          ? _value.originalAmount
          : originalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      originalCurrencyCode: freezed == originalCurrencyCode
          ? _value.originalCurrencyCode
          : originalCurrencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      assignmentDate: freezed == assignmentDate
          ? _value.assignmentDate
          : assignmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachmentInfoDto>?,
      extendedDetails: freezed == extendedDetails
          ? _value.extendedDetails
          : extendedDetails // ignore: cast_nullable_to_non_nullable
              as ExtendedDetailsDto?,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductTypeDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedAccountTransactionDtoImpl implements _DetailedAccountTransactionDto {
  const _$DetailedAccountTransactionDtoImpl(
      {required this.movementId,
      @DateConverter() required this.postingDate,
      @DateConverter() required this.valueDate,
      required this.type,
      required this.amount,
      required this.currencyCode,
      required this.description,
      required this.analyticsCategory,
      required this.userComments,
      required this.userCategory,
      required this.placeId,
      required this.accountId,
      required this.endBalance,
      required this.detailFields,
      required this.visible,
      required this.bankReceipt,
      required this.originBranch,
      required this.originalAmount,
      required this.originalCurrencyCode,
      @DateConverter() required this.assignmentDate,
      required final List<FileAttachmentInfoDto>? attachments,
      @ExtendedDetailsConverter() required this.extendedDetails,
      required this.productType})
      : _attachments = attachments;

  factory _$DetailedAccountTransactionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedAccountTransactionDtoImplFromJson(json);

  @override
  final int movementId;
  @override
  @DateConverter()
  final DateTime postingDate;
  @override
  @DateConverter()
  final DateTime valueDate;
  @override
  final AccountTransactionTypeDto type;
  @override
  final double amount;
  @override
  final String currencyCode;
  @override
  final String description;
  @override
  final String? analyticsCategory;
  @override
  final String? userComments;
  @override
  final String? userCategory;
  @override
  final String? placeId;
// TODO(migalv): Hacer non-nullable de nuevo, el back-end está enviando null
  @override
  final int? accountId;
// TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  @override
  final double? endBalance;
  @override
  final String? detailFields;
  @override
  final bool? visible;
// TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  @override
  final bool? bankReceipt;
// TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  @override
  final String? originBranch;
// TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  @override
  final double? originalAmount;
// TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  @override
  final String? originalCurrencyCode;
// TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  @override
  @DateConverter()
  final DateTime? assignmentDate;
  final List<FileAttachmentInfoDto>? _attachments;
  @override
  List<FileAttachmentInfoDto>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @ExtendedDetailsConverter()
  final ExtendedDetailsDto? extendedDetails;
  @override
  final ProductTypeDto productType;

  @override
  String toString() {
    return 'DetailedAccountTransactionDto(movementId: $movementId, postingDate: $postingDate, valueDate: $valueDate, type: $type, amount: $amount, currencyCode: $currencyCode, description: $description, analyticsCategory: $analyticsCategory, userComments: $userComments, userCategory: $userCategory, placeId: $placeId, accountId: $accountId, endBalance: $endBalance, detailFields: $detailFields, visible: $visible, bankReceipt: $bankReceipt, originBranch: $originBranch, originalAmount: $originalAmount, originalCurrencyCode: $originalCurrencyCode, assignmentDate: $assignmentDate, attachments: $attachments, extendedDetails: $extendedDetails, productType: $productType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedAccountTransactionDtoImpl &&
            (identical(other.movementId, movementId) || other.movementId == movementId) &&
            (identical(other.postingDate, postingDate) || other.postingDate == postingDate) &&
            (identical(other.valueDate, valueDate) || other.valueDate == valueDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.analyticsCategory, analyticsCategory) ||
                other.analyticsCategory == analyticsCategory) &&
            (identical(other.userComments, userComments) || other.userComments == userComments) &&
            (identical(other.userCategory, userCategory) || other.userCategory == userCategory) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.accountId, accountId) || other.accountId == accountId) &&
            (identical(other.endBalance, endBalance) || other.endBalance == endBalance) &&
            (identical(other.detailFields, detailFields) || other.detailFields == detailFields) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.bankReceipt, bankReceipt) || other.bankReceipt == bankReceipt) &&
            (identical(other.originBranch, originBranch) || other.originBranch == originBranch) &&
            (identical(other.originalAmount, originalAmount) ||
                other.originalAmount == originalAmount) &&
            (identical(other.originalCurrencyCode, originalCurrencyCode) ||
                other.originalCurrencyCode == originalCurrencyCode) &&
            (identical(other.assignmentDate, assignmentDate) ||
                other.assignmentDate == assignmentDate) &&
            const DeepCollectionEquality().equals(other._attachments, _attachments) &&
            (identical(other.extendedDetails, extendedDetails) ||
                other.extendedDetails == extendedDetails) &&
            (identical(other.productType, productType) || other.productType == productType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        movementId,
        postingDate,
        valueDate,
        type,
        amount,
        currencyCode,
        description,
        analyticsCategory,
        userComments,
        userCategory,
        placeId,
        accountId,
        endBalance,
        detailFields,
        visible,
        bankReceipt,
        originBranch,
        originalAmount,
        originalCurrencyCode,
        assignmentDate,
        const DeepCollectionEquality().hash(_attachments),
        extendedDetails,
        productType
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedAccountTransactionDtoImplCopyWith<_$DetailedAccountTransactionDtoImpl> get copyWith =>
      __$$DetailedAccountTransactionDtoImplCopyWithImpl<_$DetailedAccountTransactionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedAccountTransactionDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailedAccountTransactionDto implements DetailedAccountTransactionDto {
  const factory _DetailedAccountTransactionDto(
      {required final int movementId,
      @DateConverter() required final DateTime postingDate,
      @DateConverter() required final DateTime valueDate,
      required final AccountTransactionTypeDto type,
      required final double amount,
      required final String currencyCode,
      required final String description,
      required final String? analyticsCategory,
      required final String? userComments,
      required final String? userCategory,
      required final String? placeId,
      required final int? accountId,
      required final double? endBalance,
      required final String? detailFields,
      required final bool? visible,
      required final bool? bankReceipt,
      required final String? originBranch,
      required final double? originalAmount,
      required final String? originalCurrencyCode,
      @DateConverter() required final DateTime? assignmentDate,
      required final List<FileAttachmentInfoDto>? attachments,
      @ExtendedDetailsConverter() required final ExtendedDetailsDto? extendedDetails,
      required final ProductTypeDto productType}) = _$DetailedAccountTransactionDtoImpl;

  factory _DetailedAccountTransactionDto.fromJson(Map<String, dynamic> json) =
      _$DetailedAccountTransactionDtoImpl.fromJson;

  @override
  int get movementId;
  @override
  @DateConverter()
  DateTime get postingDate;
  @override
  @DateConverter()
  DateTime get valueDate;
  @override
  AccountTransactionTypeDto get type;
  @override
  double get amount;
  @override
  String get currencyCode;
  @override
  String get description;
  @override
  String? get analyticsCategory;
  @override
  String? get userComments;
  @override
  String? get userCategory;
  @override
  String? get placeId;
  @override // TODO(migalv): Hacer non-nullable de nuevo, el back-end está enviando null
  int? get accountId;
  @override // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  double? get endBalance;
  @override
  String? get detailFields;
  @override
  bool? get visible;
  @override // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  bool? get bankReceipt;
  @override // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  String? get originBranch;
  @override // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  double? get originalAmount;
  @override // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  String? get originalCurrencyCode;
  @override // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
  @DateConverter()
  DateTime? get assignmentDate;
  @override
  List<FileAttachmentInfoDto>? get attachments;
  @override
  @ExtendedDetailsConverter()
  ExtendedDetailsDto? get extendedDetails;
  @override
  ProductTypeDto get productType;
  @override
  @JsonKey(ignore: true)
  _$$DetailedAccountTransactionDtoImplCopyWith<_$DetailedAccountTransactionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
