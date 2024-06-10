// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_contract_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardContractDto _$CardContractDtoFromJson(Map<String, dynamic> json) {
  return _CardContractDto.fromJson(json);
}

/// @nodoc
mixin _$CardContractDto {
  int get cardContractId => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get createDate => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime? get endDate => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  bool get aggregated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardContractDtoCopyWith<CardContractDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardContractDtoCopyWith<$Res> {
  factory $CardContractDtoCopyWith(
          CardContractDto value, $Res Function(CardContractDto) then) =
      _$CardContractDtoCopyWithImpl<$Res, CardContractDto>;
  @useResult
  $Res call(
      {int cardContractId,
      int accountId,
      @DateConverter() DateTime createDate,
      @DateConverter() DateTime? endDate,
      String currencyCode,
      bool aggregated});
}

/// @nodoc
class _$CardContractDtoCopyWithImpl<$Res, $Val extends CardContractDto>
    implements $CardContractDtoCopyWith<$Res> {
  _$CardContractDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardContractId = null,
    Object? accountId = null,
    Object? createDate = null,
    Object? endDate = freezed,
    Object? currencyCode = null,
    Object? aggregated = null,
  }) {
    return _then(_value.copyWith(
      cardContractId: null == cardContractId
          ? _value.cardContractId
          : cardContractId // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      aggregated: null == aggregated
          ? _value.aggregated
          : aggregated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardContractDtoImplCopyWith<$Res>
    implements $CardContractDtoCopyWith<$Res> {
  factory _$$CardContractDtoImplCopyWith(_$CardContractDtoImpl value,
          $Res Function(_$CardContractDtoImpl) then) =
      __$$CardContractDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int cardContractId,
      int accountId,
      @DateConverter() DateTime createDate,
      @DateConverter() DateTime? endDate,
      String currencyCode,
      bool aggregated});
}

/// @nodoc
class __$$CardContractDtoImplCopyWithImpl<$Res>
    extends _$CardContractDtoCopyWithImpl<$Res, _$CardContractDtoImpl>
    implements _$$CardContractDtoImplCopyWith<$Res> {
  __$$CardContractDtoImplCopyWithImpl(
      _$CardContractDtoImpl _value, $Res Function(_$CardContractDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardContractId = null,
    Object? accountId = null,
    Object? createDate = null,
    Object? endDate = freezed,
    Object? currencyCode = null,
    Object? aggregated = null,
  }) {
    return _then(_$CardContractDtoImpl(
      cardContractId: null == cardContractId
          ? _value.cardContractId
          : cardContractId // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      aggregated: null == aggregated
          ? _value.aggregated
          : aggregated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardContractDtoImpl implements _CardContractDto {
  const _$CardContractDtoImpl(
      {required this.cardContractId,
      required this.accountId,
      @DateConverter() required this.createDate,
      @DateConverter() required this.endDate,
      required this.currencyCode,
      required this.aggregated});

  factory _$CardContractDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardContractDtoImplFromJson(json);

  @override
  final int cardContractId;
  @override
  final int accountId;
  @override
  @DateConverter()
  final DateTime createDate;
  @override
  @DateConverter()
  final DateTime? endDate;
  @override
  final String currencyCode;
  @override
  final bool aggregated;

  @override
  String toString() {
    return 'CardContractDto(cardContractId: $cardContractId, accountId: $accountId, createDate: $createDate, endDate: $endDate, currencyCode: $currencyCode, aggregated: $aggregated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardContractDtoImpl &&
            (identical(other.cardContractId, cardContractId) ||
                other.cardContractId == cardContractId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.aggregated, aggregated) ||
                other.aggregated == aggregated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardContractId, accountId,
      createDate, endDate, currencyCode, aggregated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardContractDtoImplCopyWith<_$CardContractDtoImpl> get copyWith =>
      __$$CardContractDtoImplCopyWithImpl<_$CardContractDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardContractDtoImplToJson(
      this,
    );
  }
}

abstract class _CardContractDto implements CardContractDto {
  const factory _CardContractDto(
      {required final int cardContractId,
      required final int accountId,
      @DateConverter() required final DateTime createDate,
      @DateConverter() required final DateTime? endDate,
      required final String currencyCode,
      required final bool aggregated}) = _$CardContractDtoImpl;

  factory _CardContractDto.fromJson(Map<String, dynamic> json) =
      _$CardContractDtoImpl.fromJson;

  @override
  int get cardContractId;
  @override
  int get accountId;
  @override
  @DateConverter()
  DateTime get createDate;
  @override
  @DateConverter()
  DateTime? get endDate;
  @override
  String get currencyCode;
  @override
  bool get aggregated;
  @override
  @JsonKey(ignore: true)
  _$$CardContractDtoImplCopyWith<_$CardContractDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
