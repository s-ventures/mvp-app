// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpenseDto _$ExpenseDtoFromJson(Map<String, dynamic> json) {
  return _ExpenseDto.fromJson(json);
}

/// @nodoc
mixin _$ExpenseDto {
  int get erpContractId => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  int get stakeholderId => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  double? get totalAmount => throw _privateConstructorUsedError;
  String? get currencyCode => throw _privateConstructorUsedError;
  double? get withholdingTaxesPercentage => throw _privateConstructorUsedError;
  int? get fileId => throw _privateConstructorUsedError;
  String? get additionalInfo => throw _privateConstructorUsedError;
  DateTime? get statusDate => throw _privateConstructorUsedError;
  double? get withHoldingTaxesAmount => throw _privateConstructorUsedError;
  double? get totalWithoutTaxes => throw _privateConstructorUsedError;
  int get expenseId => throw _privateConstructorUsedError;
  DateTime? get issuedDate => throw _privateConstructorUsedError;
  double? get vatAmount => throw _privateConstructorUsedError;
  double? get vatPercentage => throw _privateConstructorUsedError;
  ExpenseStatusDto get status => throw _privateConstructorUsedError;
  String? get accountingTypeCode => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  DocumentTypeCodeDto get documentTypeCode =>
      throw _privateConstructorUsedError;
  String get documentNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseDtoCopyWith<ExpenseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseDtoCopyWith<$Res> {
  factory $ExpenseDtoCopyWith(
          ExpenseDto value, $Res Function(ExpenseDto) then) =
      _$ExpenseDtoCopyWithImpl<$Res, ExpenseDto>;
  @useResult
  $Res call(
      {int erpContractId,
      String? number,
      int stakeholderId,
      DateTime? dueDate,
      DateTime createdDate,
      double? totalAmount,
      String? currencyCode,
      double? withholdingTaxesPercentage,
      int? fileId,
      String? additionalInfo,
      DateTime? statusDate,
      double? withHoldingTaxesAmount,
      double? totalWithoutTaxes,
      int expenseId,
      DateTime? issuedDate,
      double? vatAmount,
      double? vatPercentage,
      ExpenseStatusDto status,
      String? accountingTypeCode,
      String fullName,
      DocumentTypeCodeDto documentTypeCode,
      String documentNumber});
}

/// @nodoc
class _$ExpenseDtoCopyWithImpl<$Res, $Val extends ExpenseDto>
    implements $ExpenseDtoCopyWith<$Res> {
  _$ExpenseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? erpContractId = null,
    Object? number = freezed,
    Object? stakeholderId = null,
    Object? dueDate = freezed,
    Object? createdDate = null,
    Object? totalAmount = freezed,
    Object? currencyCode = freezed,
    Object? withholdingTaxesPercentage = freezed,
    Object? fileId = freezed,
    Object? additionalInfo = freezed,
    Object? statusDate = freezed,
    Object? withHoldingTaxesAmount = freezed,
    Object? totalWithoutTaxes = freezed,
    Object? expenseId = null,
    Object? issuedDate = freezed,
    Object? vatAmount = freezed,
    Object? vatPercentage = freezed,
    Object? status = null,
    Object? accountingTypeCode = freezed,
    Object? fullName = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
  }) {
    return _then(_value.copyWith(
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      stakeholderId: null == stakeholderId
          ? _value.stakeholderId
          : stakeholderId // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      withholdingTaxesPercentage: freezed == withholdingTaxesPercentage
          ? _value.withholdingTaxesPercentage
          : withholdingTaxesPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      withHoldingTaxesAmount: freezed == withHoldingTaxesAmount
          ? _value.withHoldingTaxesAmount
          : withHoldingTaxesAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalWithoutTaxes: freezed == totalWithoutTaxes
          ? _value.totalWithoutTaxes
          : totalWithoutTaxes // ignore: cast_nullable_to_non_nullable
              as double?,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
      issuedDate: freezed == issuedDate
          ? _value.issuedDate
          : issuedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vatAmount: freezed == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vatPercentage: freezed == vatPercentage
          ? _value.vatPercentage
          : vatPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatusDto,
      accountingTypeCode: freezed == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      documentTypeCode: null == documentTypeCode
          ? _value.documentTypeCode
          : documentTypeCode // ignore: cast_nullable_to_non_nullable
              as DocumentTypeCodeDto,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseDtoImplCopyWith<$Res>
    implements $ExpenseDtoCopyWith<$Res> {
  factory _$$ExpenseDtoImplCopyWith(
          _$ExpenseDtoImpl value, $Res Function(_$ExpenseDtoImpl) then) =
      __$$ExpenseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int erpContractId,
      String? number,
      int stakeholderId,
      DateTime? dueDate,
      DateTime createdDate,
      double? totalAmount,
      String? currencyCode,
      double? withholdingTaxesPercentage,
      int? fileId,
      String? additionalInfo,
      DateTime? statusDate,
      double? withHoldingTaxesAmount,
      double? totalWithoutTaxes,
      int expenseId,
      DateTime? issuedDate,
      double? vatAmount,
      double? vatPercentage,
      ExpenseStatusDto status,
      String? accountingTypeCode,
      String fullName,
      DocumentTypeCodeDto documentTypeCode,
      String documentNumber});
}

/// @nodoc
class __$$ExpenseDtoImplCopyWithImpl<$Res>
    extends _$ExpenseDtoCopyWithImpl<$Res, _$ExpenseDtoImpl>
    implements _$$ExpenseDtoImplCopyWith<$Res> {
  __$$ExpenseDtoImplCopyWithImpl(
      _$ExpenseDtoImpl _value, $Res Function(_$ExpenseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? erpContractId = null,
    Object? number = freezed,
    Object? stakeholderId = null,
    Object? dueDate = freezed,
    Object? createdDate = null,
    Object? totalAmount = freezed,
    Object? currencyCode = freezed,
    Object? withholdingTaxesPercentage = freezed,
    Object? fileId = freezed,
    Object? additionalInfo = freezed,
    Object? statusDate = freezed,
    Object? withHoldingTaxesAmount = freezed,
    Object? totalWithoutTaxes = freezed,
    Object? expenseId = null,
    Object? issuedDate = freezed,
    Object? vatAmount = freezed,
    Object? vatPercentage = freezed,
    Object? status = null,
    Object? accountingTypeCode = freezed,
    Object? fullName = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
  }) {
    return _then(_$ExpenseDtoImpl(
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      stakeholderId: null == stakeholderId
          ? _value.stakeholderId
          : stakeholderId // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      withholdingTaxesPercentage: freezed == withholdingTaxesPercentage
          ? _value.withholdingTaxesPercentage
          : withholdingTaxesPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      withHoldingTaxesAmount: freezed == withHoldingTaxesAmount
          ? _value.withHoldingTaxesAmount
          : withHoldingTaxesAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalWithoutTaxes: freezed == totalWithoutTaxes
          ? _value.totalWithoutTaxes
          : totalWithoutTaxes // ignore: cast_nullable_to_non_nullable
              as double?,
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
      issuedDate: freezed == issuedDate
          ? _value.issuedDate
          : issuedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vatAmount: freezed == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vatPercentage: freezed == vatPercentage
          ? _value.vatPercentage
          : vatPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatusDto,
      accountingTypeCode: freezed == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      documentTypeCode: null == documentTypeCode
          ? _value.documentTypeCode
          : documentTypeCode // ignore: cast_nullable_to_non_nullable
              as DocumentTypeCodeDto,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseDtoImpl implements _ExpenseDto {
  const _$ExpenseDtoImpl(
      {required this.erpContractId,
      required this.number,
      required this.stakeholderId,
      required this.dueDate,
      required this.createdDate,
      required this.totalAmount,
      required this.currencyCode,
      required this.withholdingTaxesPercentage,
      required this.fileId,
      required this.additionalInfo,
      required this.statusDate,
      required this.withHoldingTaxesAmount,
      required this.totalWithoutTaxes,
      required this.expenseId,
      required this.issuedDate,
      required this.vatAmount,
      required this.vatPercentage,
      required this.status,
      required this.accountingTypeCode,
      required this.fullName,
      required this.documentTypeCode,
      required this.documentNumber});

  factory _$ExpenseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseDtoImplFromJson(json);

  @override
  final int erpContractId;
  @override
  final String? number;
  @override
  final int stakeholderId;
  @override
  final DateTime? dueDate;
  @override
  final DateTime createdDate;
  @override
  final double? totalAmount;
  @override
  final String? currencyCode;
  @override
  final double? withholdingTaxesPercentage;
  @override
  final int? fileId;
  @override
  final String? additionalInfo;
  @override
  final DateTime? statusDate;
  @override
  final double? withHoldingTaxesAmount;
  @override
  final double? totalWithoutTaxes;
  @override
  final int expenseId;
  @override
  final DateTime? issuedDate;
  @override
  final double? vatAmount;
  @override
  final double? vatPercentage;
  @override
  final ExpenseStatusDto status;
  @override
  final String? accountingTypeCode;
  @override
  final String fullName;
  @override
  final DocumentTypeCodeDto documentTypeCode;
  @override
  final String documentNumber;

  @override
  String toString() {
    return 'ExpenseDto(erpContractId: $erpContractId, number: $number, stakeholderId: $stakeholderId, dueDate: $dueDate, createdDate: $createdDate, totalAmount: $totalAmount, currencyCode: $currencyCode, withholdingTaxesPercentage: $withholdingTaxesPercentage, fileId: $fileId, additionalInfo: $additionalInfo, statusDate: $statusDate, withHoldingTaxesAmount: $withHoldingTaxesAmount, totalWithoutTaxes: $totalWithoutTaxes, expenseId: $expenseId, issuedDate: $issuedDate, vatAmount: $vatAmount, vatPercentage: $vatPercentage, status: $status, accountingTypeCode: $accountingTypeCode, fullName: $fullName, documentTypeCode: $documentTypeCode, documentNumber: $documentNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseDtoImpl &&
            (identical(other.erpContractId, erpContractId) ||
                other.erpContractId == erpContractId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.stakeholderId, stakeholderId) ||
                other.stakeholderId == stakeholderId) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.withholdingTaxesPercentage,
                    withholdingTaxesPercentage) ||
                other.withholdingTaxesPercentage ==
                    withholdingTaxesPercentage) &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate) &&
            (identical(other.withHoldingTaxesAmount, withHoldingTaxesAmount) ||
                other.withHoldingTaxesAmount == withHoldingTaxesAmount) &&
            (identical(other.totalWithoutTaxes, totalWithoutTaxes) ||
                other.totalWithoutTaxes == totalWithoutTaxes) &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId) &&
            (identical(other.issuedDate, issuedDate) ||
                other.issuedDate == issuedDate) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.vatPercentage, vatPercentage) ||
                other.vatPercentage == vatPercentage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.accountingTypeCode, accountingTypeCode) ||
                other.accountingTypeCode == accountingTypeCode) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.documentTypeCode, documentTypeCode) ||
                other.documentTypeCode == documentTypeCode) &&
            (identical(other.documentNumber, documentNumber) ||
                other.documentNumber == documentNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        erpContractId,
        number,
        stakeholderId,
        dueDate,
        createdDate,
        totalAmount,
        currencyCode,
        withholdingTaxesPercentage,
        fileId,
        additionalInfo,
        statusDate,
        withHoldingTaxesAmount,
        totalWithoutTaxes,
        expenseId,
        issuedDate,
        vatAmount,
        vatPercentage,
        status,
        accountingTypeCode,
        fullName,
        documentTypeCode,
        documentNumber
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseDtoImplCopyWith<_$ExpenseDtoImpl> get copyWith =>
      __$$ExpenseDtoImplCopyWithImpl<_$ExpenseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseDtoImplToJson(
      this,
    );
  }
}

abstract class _ExpenseDto implements ExpenseDto {
  const factory _ExpenseDto(
      {required final int erpContractId,
      required final String? number,
      required final int stakeholderId,
      required final DateTime? dueDate,
      required final DateTime createdDate,
      required final double? totalAmount,
      required final String? currencyCode,
      required final double? withholdingTaxesPercentage,
      required final int? fileId,
      required final String? additionalInfo,
      required final DateTime? statusDate,
      required final double? withHoldingTaxesAmount,
      required final double? totalWithoutTaxes,
      required final int expenseId,
      required final DateTime? issuedDate,
      required final double? vatAmount,
      required final double? vatPercentage,
      required final ExpenseStatusDto status,
      required final String? accountingTypeCode,
      required final String fullName,
      required final DocumentTypeCodeDto documentTypeCode,
      required final String documentNumber}) = _$ExpenseDtoImpl;

  factory _ExpenseDto.fromJson(Map<String, dynamic> json) =
      _$ExpenseDtoImpl.fromJson;

  @override
  int get erpContractId;
  @override
  String? get number;
  @override
  int get stakeholderId;
  @override
  DateTime? get dueDate;
  @override
  DateTime get createdDate;
  @override
  double? get totalAmount;
  @override
  String? get currencyCode;
  @override
  double? get withholdingTaxesPercentage;
  @override
  int? get fileId;
  @override
  String? get additionalInfo;
  @override
  DateTime? get statusDate;
  @override
  double? get withHoldingTaxesAmount;
  @override
  double? get totalWithoutTaxes;
  @override
  int get expenseId;
  @override
  DateTime? get issuedDate;
  @override
  double? get vatAmount;
  @override
  double? get vatPercentage;
  @override
  ExpenseStatusDto get status;
  @override
  String? get accountingTypeCode;
  @override
  String get fullName;
  @override
  DocumentTypeCodeDto get documentTypeCode;
  @override
  String get documentNumber;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseDtoImplCopyWith<_$ExpenseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
