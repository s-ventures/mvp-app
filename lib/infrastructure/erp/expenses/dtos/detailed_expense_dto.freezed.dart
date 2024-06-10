// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_expense_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailedExpenseDto _$DetailedExpenseDtoFromJson(Map<String, dynamic> json) {
  return _DetailedExpenseDto.fromJson(json);
}

/// @nodoc
mixin _$DetailedExpenseDto {
  int get expenseId => throw _privateConstructorUsedError;
  int get erpContractId => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  int get stakeholderId => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get dueDate => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get createdDate => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  double get withHoldingTaxesPercentage => throw _privateConstructorUsedError;
  int get fileId => throw _privateConstructorUsedError;
  String get additionalInfo => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get statusDate => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get issueDate => throw _privateConstructorUsedError;
  double get vatAmount => throw _privateConstructorUsedError;
  double get vatPercentage => throw _privateConstructorUsedError;
  String get accountingTypeCode => throw _privateConstructorUsedError;
  String get fullName =>
      throw _privateConstructorUsedError; // TODO(jesus): Change to DocumentTypeCodeDto
  String get documentTypeCode => throw _privateConstructorUsedError;
  String get documentNumber => throw _privateConstructorUsedError;
  ExpenseStatusDto get status => throw _privateConstructorUsedError;
  List<ExpenseItemDto> get items =>
      throw _privateConstructorUsedError; // TODO(jesus): Change to SubtotalVatAmountDto
  dynamic get subtotalVatAmount => throw _privateConstructorUsedError;
  SerialNumberDto get serialNumber => throw _privateConstructorUsedError;
  List<PaymentDto> get payments => throw _privateConstructorUsedError;
  List<FileAttachmentDto> get attachments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedExpenseDtoCopyWith<DetailedExpenseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedExpenseDtoCopyWith<$Res> {
  factory $DetailedExpenseDtoCopyWith(
          DetailedExpenseDto value, $Res Function(DetailedExpenseDto) then) =
      _$DetailedExpenseDtoCopyWithImpl<$Res, DetailedExpenseDto>;
  @useResult
  $Res call(
      {int expenseId,
      int erpContractId,
      String number,
      int stakeholderId,
      @DateConverter() DateTime dueDate,
      @DateConverter() DateTime createdDate,
      String currencyCode,
      double withHoldingTaxesPercentage,
      int fileId,
      String additionalInfo,
      @DateConverter() DateTime statusDate,
      @DateConverter() DateTime issueDate,
      double vatAmount,
      double vatPercentage,
      String accountingTypeCode,
      String fullName,
      String documentTypeCode,
      String documentNumber,
      ExpenseStatusDto status,
      List<ExpenseItemDto> items,
      dynamic subtotalVatAmount,
      SerialNumberDto serialNumber,
      List<PaymentDto> payments,
      List<FileAttachmentDto> attachments});

  $SerialNumberDtoCopyWith<$Res> get serialNumber;
}

/// @nodoc
class _$DetailedExpenseDtoCopyWithImpl<$Res, $Val extends DetailedExpenseDto>
    implements $DetailedExpenseDtoCopyWith<$Res> {
  _$DetailedExpenseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseId = null,
    Object? erpContractId = null,
    Object? number = null,
    Object? stakeholderId = null,
    Object? dueDate = null,
    Object? createdDate = null,
    Object? currencyCode = null,
    Object? withHoldingTaxesPercentage = null,
    Object? fileId = null,
    Object? additionalInfo = null,
    Object? statusDate = null,
    Object? issueDate = null,
    Object? vatAmount = null,
    Object? vatPercentage = null,
    Object? accountingTypeCode = null,
    Object? fullName = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
    Object? status = null,
    Object? items = null,
    Object? subtotalVatAmount = freezed,
    Object? serialNumber = null,
    Object? payments = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      stakeholderId: null == stakeholderId
          ? _value.stakeholderId
          : stakeholderId // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      withHoldingTaxesPercentage: null == withHoldingTaxesPercentage
          ? _value.withHoldingTaxesPercentage
          : withHoldingTaxesPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      statusDate: null == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      vatAmount: null == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double,
      vatPercentage: null == vatPercentage
          ? _value.vatPercentage
          : vatPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      accountingTypeCode: null == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      documentTypeCode: null == documentTypeCode
          ? _value.documentTypeCode
          : documentTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatusDto,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExpenseItemDto>,
      subtotalVatAmount: freezed == subtotalVatAmount
          ? _value.subtotalVatAmount
          : subtotalVatAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as SerialNumberDto,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentDto>,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachmentDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SerialNumberDtoCopyWith<$Res> get serialNumber {
    return $SerialNumberDtoCopyWith<$Res>(_value.serialNumber, (value) {
      return _then(_value.copyWith(serialNumber: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailedExpenseDtoImplCopyWith<$Res>
    implements $DetailedExpenseDtoCopyWith<$Res> {
  factory _$$DetailedExpenseDtoImplCopyWith(_$DetailedExpenseDtoImpl value,
          $Res Function(_$DetailedExpenseDtoImpl) then) =
      __$$DetailedExpenseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int expenseId,
      int erpContractId,
      String number,
      int stakeholderId,
      @DateConverter() DateTime dueDate,
      @DateConverter() DateTime createdDate,
      String currencyCode,
      double withHoldingTaxesPercentage,
      int fileId,
      String additionalInfo,
      @DateConverter() DateTime statusDate,
      @DateConverter() DateTime issueDate,
      double vatAmount,
      double vatPercentage,
      String accountingTypeCode,
      String fullName,
      String documentTypeCode,
      String documentNumber,
      ExpenseStatusDto status,
      List<ExpenseItemDto> items,
      dynamic subtotalVatAmount,
      SerialNumberDto serialNumber,
      List<PaymentDto> payments,
      List<FileAttachmentDto> attachments});

  @override
  $SerialNumberDtoCopyWith<$Res> get serialNumber;
}

/// @nodoc
class __$$DetailedExpenseDtoImplCopyWithImpl<$Res>
    extends _$DetailedExpenseDtoCopyWithImpl<$Res, _$DetailedExpenseDtoImpl>
    implements _$$DetailedExpenseDtoImplCopyWith<$Res> {
  __$$DetailedExpenseDtoImplCopyWithImpl(_$DetailedExpenseDtoImpl _value,
      $Res Function(_$DetailedExpenseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseId = null,
    Object? erpContractId = null,
    Object? number = null,
    Object? stakeholderId = null,
    Object? dueDate = null,
    Object? createdDate = null,
    Object? currencyCode = null,
    Object? withHoldingTaxesPercentage = null,
    Object? fileId = null,
    Object? additionalInfo = null,
    Object? statusDate = null,
    Object? issueDate = null,
    Object? vatAmount = null,
    Object? vatPercentage = null,
    Object? accountingTypeCode = null,
    Object? fullName = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
    Object? status = null,
    Object? items = null,
    Object? subtotalVatAmount = freezed,
    Object? serialNumber = null,
    Object? payments = null,
    Object? attachments = null,
  }) {
    return _then(_$DetailedExpenseDtoImpl(
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      stakeholderId: null == stakeholderId
          ? _value.stakeholderId
          : stakeholderId // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      withHoldingTaxesPercentage: null == withHoldingTaxesPercentage
          ? _value.withHoldingTaxesPercentage
          : withHoldingTaxesPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      statusDate: null == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      vatAmount: null == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as double,
      vatPercentage: null == vatPercentage
          ? _value.vatPercentage
          : vatPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      accountingTypeCode: null == accountingTypeCode
          ? _value.accountingTypeCode
          : accountingTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      documentTypeCode: null == documentTypeCode
          ? _value.documentTypeCode
          : documentTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExpenseStatusDto,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExpenseItemDto>,
      subtotalVatAmount: freezed == subtotalVatAmount
          ? _value.subtotalVatAmount
          : subtotalVatAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as SerialNumberDto,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentDto>,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<FileAttachmentDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedExpenseDtoImpl implements _DetailedExpenseDto {
  const _$DetailedExpenseDtoImpl(
      {required this.expenseId,
      required this.erpContractId,
      required this.number,
      required this.stakeholderId,
      @DateConverter() required this.dueDate,
      @DateConverter() required this.createdDate,
      required this.currencyCode,
      required this.withHoldingTaxesPercentage,
      required this.fileId,
      required this.additionalInfo,
      @DateConverter() required this.statusDate,
      @DateConverter() required this.issueDate,
      required this.vatAmount,
      required this.vatPercentage,
      required this.accountingTypeCode,
      required this.fullName,
      required this.documentTypeCode,
      required this.documentNumber,
      required this.status,
      required final List<ExpenseItemDto> items,
      required this.subtotalVatAmount,
      required this.serialNumber,
      required final List<PaymentDto> payments,
      required final List<FileAttachmentDto> attachments})
      : _items = items,
        _payments = payments,
        _attachments = attachments;

  factory _$DetailedExpenseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedExpenseDtoImplFromJson(json);

  @override
  final int expenseId;
  @override
  final int erpContractId;
  @override
  final String number;
  @override
  final int stakeholderId;
  @override
  @DateConverter()
  final DateTime dueDate;
  @override
  @DateConverter()
  final DateTime createdDate;
  @override
  final String currencyCode;
  @override
  final double withHoldingTaxesPercentage;
  @override
  final int fileId;
  @override
  final String additionalInfo;
  @override
  @DateConverter()
  final DateTime statusDate;
  @override
  @DateConverter()
  final DateTime issueDate;
  @override
  final double vatAmount;
  @override
  final double vatPercentage;
  @override
  final String accountingTypeCode;
  @override
  final String fullName;
// TODO(jesus): Change to DocumentTypeCodeDto
  @override
  final String documentTypeCode;
  @override
  final String documentNumber;
  @override
  final ExpenseStatusDto status;
  final List<ExpenseItemDto> _items;
  @override
  List<ExpenseItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

// TODO(jesus): Change to SubtotalVatAmountDto
  @override
  final dynamic subtotalVatAmount;
  @override
  final SerialNumberDto serialNumber;
  final List<PaymentDto> _payments;
  @override
  List<PaymentDto> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  final List<FileAttachmentDto> _attachments;
  @override
  List<FileAttachmentDto> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'DetailedExpenseDto(expenseId: $expenseId, erpContractId: $erpContractId, number: $number, stakeholderId: $stakeholderId, dueDate: $dueDate, createdDate: $createdDate, currencyCode: $currencyCode, withHoldingTaxesPercentage: $withHoldingTaxesPercentage, fileId: $fileId, additionalInfo: $additionalInfo, statusDate: $statusDate, issueDate: $issueDate, vatAmount: $vatAmount, vatPercentage: $vatPercentage, accountingTypeCode: $accountingTypeCode, fullName: $fullName, documentTypeCode: $documentTypeCode, documentNumber: $documentNumber, status: $status, items: $items, subtotalVatAmount: $subtotalVatAmount, serialNumber: $serialNumber, payments: $payments, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedExpenseDtoImpl &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId) &&
            (identical(other.erpContractId, erpContractId) ||
                other.erpContractId == erpContractId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.stakeholderId, stakeholderId) ||
                other.stakeholderId == stakeholderId) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.withHoldingTaxesPercentage,
                    withHoldingTaxesPercentage) ||
                other.withHoldingTaxesPercentage ==
                    withHoldingTaxesPercentage) &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.vatPercentage, vatPercentage) ||
                other.vatPercentage == vatPercentage) &&
            (identical(other.accountingTypeCode, accountingTypeCode) ||
                other.accountingTypeCode == accountingTypeCode) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.documentTypeCode, documentTypeCode) ||
                other.documentTypeCode == documentTypeCode) &&
            (identical(other.documentNumber, documentNumber) ||
                other.documentNumber == documentNumber) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other.subtotalVatAmount, subtotalVatAmount) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        expenseId,
        erpContractId,
        number,
        stakeholderId,
        dueDate,
        createdDate,
        currencyCode,
        withHoldingTaxesPercentage,
        fileId,
        additionalInfo,
        statusDate,
        issueDate,
        vatAmount,
        vatPercentage,
        accountingTypeCode,
        fullName,
        documentTypeCode,
        documentNumber,
        status,
        const DeepCollectionEquality().hash(_items),
        const DeepCollectionEquality().hash(subtotalVatAmount),
        serialNumber,
        const DeepCollectionEquality().hash(_payments),
        const DeepCollectionEquality().hash(_attachments)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedExpenseDtoImplCopyWith<_$DetailedExpenseDtoImpl> get copyWith =>
      __$$DetailedExpenseDtoImplCopyWithImpl<_$DetailedExpenseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedExpenseDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailedExpenseDto implements DetailedExpenseDto {
  const factory _DetailedExpenseDto(
          {required final int expenseId,
          required final int erpContractId,
          required final String number,
          required final int stakeholderId,
          @DateConverter() required final DateTime dueDate,
          @DateConverter() required final DateTime createdDate,
          required final String currencyCode,
          required final double withHoldingTaxesPercentage,
          required final int fileId,
          required final String additionalInfo,
          @DateConverter() required final DateTime statusDate,
          @DateConverter() required final DateTime issueDate,
          required final double vatAmount,
          required final double vatPercentage,
          required final String accountingTypeCode,
          required final String fullName,
          required final String documentTypeCode,
          required final String documentNumber,
          required final ExpenseStatusDto status,
          required final List<ExpenseItemDto> items,
          required final dynamic subtotalVatAmount,
          required final SerialNumberDto serialNumber,
          required final List<PaymentDto> payments,
          required final List<FileAttachmentDto> attachments}) =
      _$DetailedExpenseDtoImpl;

  factory _DetailedExpenseDto.fromJson(Map<String, dynamic> json) =
      _$DetailedExpenseDtoImpl.fromJson;

  @override
  int get expenseId;
  @override
  int get erpContractId;
  @override
  String get number;
  @override
  int get stakeholderId;
  @override
  @DateConverter()
  DateTime get dueDate;
  @override
  @DateConverter()
  DateTime get createdDate;
  @override
  String get currencyCode;
  @override
  double get withHoldingTaxesPercentage;
  @override
  int get fileId;
  @override
  String get additionalInfo;
  @override
  @DateConverter()
  DateTime get statusDate;
  @override
  @DateConverter()
  DateTime get issueDate;
  @override
  double get vatAmount;
  @override
  double get vatPercentage;
  @override
  String get accountingTypeCode;
  @override
  String get fullName;
  @override // TODO(jesus): Change to DocumentTypeCodeDto
  String get documentTypeCode;
  @override
  String get documentNumber;
  @override
  ExpenseStatusDto get status;
  @override
  List<ExpenseItemDto> get items;
  @override // TODO(jesus): Change to SubtotalVatAmountDto
  dynamic get subtotalVatAmount;
  @override
  SerialNumberDto get serialNumber;
  @override
  List<PaymentDto> get payments;
  @override
  List<FileAttachmentDto> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$DetailedExpenseDtoImplCopyWith<_$DetailedExpenseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
