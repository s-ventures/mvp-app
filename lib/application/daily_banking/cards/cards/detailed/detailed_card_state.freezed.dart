// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedCardState {
  AsyncValue<DetailedCard> get card => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedCardStateCopyWith<DetailedCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedCardStateCopyWith<$Res> {
  factory $DetailedCardStateCopyWith(
          DetailedCardState value, $Res Function(DetailedCardState) then) =
      _$DetailedCardStateCopyWithImpl<$Res, DetailedCardState>;
  @useResult
  $Res call({AsyncValue<DetailedCard> card});
}

/// @nodoc
class _$DetailedCardStateCopyWithImpl<$Res, $Val extends DetailedCardState>
    implements $DetailedCardStateCopyWith<$Res> {
  _$DetailedCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = null,
  }) {
    return _then(_value.copyWith(
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedCard>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedCardStateImplCopyWith<$Res>
    implements $DetailedCardStateCopyWith<$Res> {
  factory _$$DetailedCardStateImplCopyWith(_$DetailedCardStateImpl value,
          $Res Function(_$DetailedCardStateImpl) then) =
      __$$DetailedCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<DetailedCard> card});
}

/// @nodoc
class __$$DetailedCardStateImplCopyWithImpl<$Res>
    extends _$DetailedCardStateCopyWithImpl<$Res, _$DetailedCardStateImpl>
    implements _$$DetailedCardStateImplCopyWith<$Res> {
  __$$DetailedCardStateImplCopyWithImpl(_$DetailedCardStateImpl _value,
      $Res Function(_$DetailedCardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = null,
  }) {
    return _then(_$DetailedCardStateImpl(
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedCard>,
    ));
  }
}

/// @nodoc

class _$DetailedCardStateImpl implements _DetailedCardState {
  const _$DetailedCardStateImpl(
      {this.card = const AsyncLoading<DetailedCard>()});

  @override
  @JsonKey()
  final AsyncValue<DetailedCard> card;

  @override
  String toString() {
    return 'DetailedCardState(card: $card)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedCardStateImpl &&
            (identical(other.card, card) || other.card == card));
  }

  @override
  int get hashCode => Object.hash(runtimeType, card);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedCardStateImplCopyWith<_$DetailedCardStateImpl> get copyWith =>
      __$$DetailedCardStateImplCopyWithImpl<_$DetailedCardStateImpl>(
          this, _$identity);
}

abstract class _DetailedCardState implements DetailedCardState {
  const factory _DetailedCardState({final AsyncValue<DetailedCard> card}) =
      _$DetailedCardStateImpl;

  @override
  AsyncValue<DetailedCard> get card;
  @override
  @JsonKey(ignore: true)
  _$$DetailedCardStateImplCopyWith<_$DetailedCardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
