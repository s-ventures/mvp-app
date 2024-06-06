// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedCard {
  UniqueId get id => throw _privateConstructorUsedError;
  String get cardName => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime? get dueDate => throw _privateConstructorUsedError;
  String get cvv => throw _privateConstructorUsedError;
  String get cardNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedCardCopyWith<DetailedCard> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedCardCopyWith<$Res> {
  factory $DetailedCardCopyWith(DetailedCard value, $Res Function(DetailedCard) then) =
      _$DetailedCardCopyWithImpl<$Res, DetailedCard>;
  @useResult
  $Res call(
      {UniqueId id,
      String cardName,
      @DateConverter() DateTime? dueDate,
      String cvv,
      String cardNumber});
}

/// @nodoc
class _$DetailedCardCopyWithImpl<$Res, $Val extends DetailedCard>
    implements $DetailedCardCopyWith<$Res> {
  _$DetailedCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardName = null,
    Object? dueDate = freezed,
    Object? cvv = null,
    Object? cardNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedCardImplCopyWith<$Res> implements $DetailedCardCopyWith<$Res> {
  factory _$$DetailedCardImplCopyWith(
          _$DetailedCardImpl value, $Res Function(_$DetailedCardImpl) then) =
      __$$DetailedCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      String cardName,
      @DateConverter() DateTime? dueDate,
      String cvv,
      String cardNumber});
}

/// @nodoc
class __$$DetailedCardImplCopyWithImpl<$Res>
    extends _$DetailedCardCopyWithImpl<$Res, _$DetailedCardImpl>
    implements _$$DetailedCardImplCopyWith<$Res> {
  __$$DetailedCardImplCopyWithImpl(
      _$DetailedCardImpl _value, $Res Function(_$DetailedCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardName = null,
    Object? dueDate = freezed,
    Object? cvv = null,
    Object? cardNumber = null,
  }) {
    return _then(_$DetailedCardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailedCardImpl implements _DetailedCard {
  const _$DetailedCardImpl(
      {required this.id,
      required this.cardName,
      @DateConverter() required this.dueDate,
      required this.cvv,
      required this.cardNumber});

  @override
  final UniqueId id;
  @override
  final String cardName;
  @override
  @DateConverter()
  final DateTime? dueDate;
  @override
  final String cvv;
  @override
  final String cardNumber;

  @override
  String toString() {
    return 'DetailedCard(id: $id, cardName: $cardName, dueDate: $dueDate, cvv: $cvv, cardNumber: $cardNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardName, cardName) || other.cardName == cardName) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, cardName, dueDate, cvv, cardNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedCardImplCopyWith<_$DetailedCardImpl> get copyWith =>
      __$$DetailedCardImplCopyWithImpl<_$DetailedCardImpl>(this, _$identity);
}

abstract class _DetailedCard implements DetailedCard {
  const factory _DetailedCard(
      {required final UniqueId id,
      required final String cardName,
      @DateConverter() required final DateTime? dueDate,
      required final String cvv,
      required final String cardNumber}) = _$DetailedCardImpl;

  @override
  UniqueId get id;
  @override
  String get cardName;
  @override
  @DateConverter()
  DateTime? get dueDate;
  @override
  String get cvv;
  @override
  String get cardNumber;
  @override
  @JsonKey(ignore: true)
  _$$DetailedCardImplCopyWith<_$DetailedCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
