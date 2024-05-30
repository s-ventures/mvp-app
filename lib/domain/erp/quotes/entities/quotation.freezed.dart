// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Quotation {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get erpContractId => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  DateTime? get sentDate => throw _privateConstructorUsedError;
  DateTime? get statusDate => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  QuotationStatus get status => throw _privateConstructorUsedError;
  DocumentTypeCode get documentTypeCode => throw _privateConstructorUsedError;
  String get documentNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuotationCopyWith<Quotation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationCopyWith<$Res> {
  factory $QuotationCopyWith(Quotation value, $Res Function(Quotation) then) =
      _$QuotationCopyWithImpl<$Res, Quotation>;
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId erpContractId,
      String number,
      double totalAmount,
      DateTime? dueDate,
      DateTime createdDate,
      DateTime? sentDate,
      DateTime? statusDate,
      String fullName,
      QuotationStatus status,
      DocumentTypeCode documentTypeCode,
      String documentNumber});
}

/// @nodoc
class _$QuotationCopyWithImpl<$Res, $Val extends Quotation>
    implements $QuotationCopyWith<$Res> {
  _$QuotationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? erpContractId = null,
    Object? number = null,
    Object? totalAmount = null,
    Object? dueDate = freezed,
    Object? createdDate = null,
    Object? sentDate = freezed,
    Object? statusDate = freezed,
    Object? fullName = null,
    Object? status = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentDate: freezed == sentDate
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuotationStatus,
      documentTypeCode: null == documentTypeCode
          ? _value.documentTypeCode
          : documentTypeCode // ignore: cast_nullable_to_non_nullable
              as DocumentTypeCode,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuotationImplCopyWith<$Res>
    implements $QuotationCopyWith<$Res> {
  factory _$$QuotationImplCopyWith(
          _$QuotationImpl value, $Res Function(_$QuotationImpl) then) =
      __$$QuotationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      UniqueId erpContractId,
      String number,
      double totalAmount,
      DateTime? dueDate,
      DateTime createdDate,
      DateTime? sentDate,
      DateTime? statusDate,
      String fullName,
      QuotationStatus status,
      DocumentTypeCode documentTypeCode,
      String documentNumber});
}

/// @nodoc
class __$$QuotationImplCopyWithImpl<$Res>
    extends _$QuotationCopyWithImpl<$Res, _$QuotationImpl>
    implements _$$QuotationImplCopyWith<$Res> {
  __$$QuotationImplCopyWithImpl(
      _$QuotationImpl _value, $Res Function(_$QuotationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? erpContractId = null,
    Object? number = null,
    Object? totalAmount = null,
    Object? dueDate = freezed,
    Object? createdDate = null,
    Object? sentDate = freezed,
    Object? statusDate = freezed,
    Object? fullName = null,
    Object? status = null,
    Object? documentTypeCode = null,
    Object? documentNumber = null,
  }) {
    return _then(_$QuotationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      erpContractId: null == erpContractId
          ? _value.erpContractId
          : erpContractId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentDate: freezed == sentDate
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuotationStatus,
      documentTypeCode: null == documentTypeCode
          ? _value.documentTypeCode
          : documentTypeCode // ignore: cast_nullable_to_non_nullable
              as DocumentTypeCode,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuotationImpl implements _Quotation {
  const _$QuotationImpl(
      {required this.id,
      required this.erpContractId,
      required this.number,
      required this.totalAmount,
      required this.dueDate,
      required this.createdDate,
      required this.sentDate,
      required this.statusDate,
      required this.fullName,
      required this.status,
      required this.documentTypeCode,
      required this.documentNumber});

  @override
  final UniqueId id;
  @override
  final UniqueId erpContractId;
  @override
  final String number;
  @override
  final double totalAmount;
  @override
  final DateTime? dueDate;
  @override
  final DateTime createdDate;
  @override
  final DateTime? sentDate;
  @override
  final DateTime? statusDate;
  @override
  final String fullName;
  @override
  final QuotationStatus status;
  @override
  final DocumentTypeCode documentTypeCode;
  @override
  final String documentNumber;

  @override
  String toString() {
    return 'Quotation(id: $id, erpContractId: $erpContractId, number: $number, totalAmount: $totalAmount, dueDate: $dueDate, createdDate: $createdDate, sentDate: $sentDate, statusDate: $statusDate, fullName: $fullName, status: $status, documentTypeCode: $documentTypeCode, documentNumber: $documentNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.erpContractId, erpContractId) ||
                other.erpContractId == erpContractId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.sentDate, sentDate) ||
                other.sentDate == sentDate) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.documentTypeCode, documentTypeCode) ||
                other.documentTypeCode == documentTypeCode) &&
            (identical(other.documentNumber, documentNumber) ||
                other.documentNumber == documentNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      erpContractId,
      number,
      totalAmount,
      dueDate,
      createdDate,
      sentDate,
      statusDate,
      fullName,
      status,
      documentTypeCode,
      documentNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotationImplCopyWith<_$QuotationImpl> get copyWith =>
      __$$QuotationImplCopyWithImpl<_$QuotationImpl>(this, _$identity);
}

abstract class _Quotation implements Quotation {
  const factory _Quotation(
      {required final UniqueId id,
      required final UniqueId erpContractId,
      required final String number,
      required final double totalAmount,
      required final DateTime? dueDate,
      required final DateTime createdDate,
      required final DateTime? sentDate,
      required final DateTime? statusDate,
      required final String fullName,
      required final QuotationStatus status,
      required final DocumentTypeCode documentTypeCode,
      required final String documentNumber}) = _$QuotationImpl;

  @override
  UniqueId get id;
  @override
  UniqueId get erpContractId;
  @override
  String get number;
  @override
  double get totalAmount;
  @override
  DateTime? get dueDate;
  @override
  DateTime get createdDate;
  @override
  DateTime? get sentDate;
  @override
  DateTime? get statusDate;
  @override
  String get fullName;
  @override
  QuotationStatus get status;
  @override
  DocumentTypeCode get documentTypeCode;
  @override
  String get documentNumber;
  @override
  @JsonKey(ignore: true)
  _$$QuotationImplCopyWith<_$QuotationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
