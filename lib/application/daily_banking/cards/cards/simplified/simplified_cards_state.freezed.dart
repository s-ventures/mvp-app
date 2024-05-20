// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_cards_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedCardsState {
  AsyncValue<List<SimplifiedCard>> get cards => throw _privateConstructorUsedError;
  int get selectedCardIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedCardsStateCopyWith<SimplifiedCardsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedCardsStateCopyWith<$Res> {
  factory $SimplifiedCardsStateCopyWith(
          SimplifiedCardsState value, $Res Function(SimplifiedCardsState) then) =
      _$SimplifiedCardsStateCopyWithImpl<$Res, SimplifiedCardsState>;
  @useResult
  $Res call({AsyncValue<List<SimplifiedCard>> cards, int selectedCardIndex});
}

/// @nodoc
class _$SimplifiedCardsStateCopyWithImpl<$Res, $Val extends SimplifiedCardsState>
    implements $SimplifiedCardsStateCopyWith<$Res> {
  _$SimplifiedCardsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? selectedCardIndex = null,
  }) {
    return _then(_value.copyWith(
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedCard>>,
      selectedCardIndex: null == selectedCardIndex
          ? _value.selectedCardIndex
          : selectedCardIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedCardsStateImplCopyWith<$Res>
    implements $SimplifiedCardsStateCopyWith<$Res> {
  factory _$$SimplifiedCardsStateImplCopyWith(
          _$SimplifiedCardsStateImpl value, $Res Function(_$SimplifiedCardsStateImpl) then) =
      __$$SimplifiedCardsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<SimplifiedCard>> cards, int selectedCardIndex});
}

/// @nodoc
class __$$SimplifiedCardsStateImplCopyWithImpl<$Res>
    extends _$SimplifiedCardsStateCopyWithImpl<$Res, _$SimplifiedCardsStateImpl>
    implements _$$SimplifiedCardsStateImplCopyWith<$Res> {
  __$$SimplifiedCardsStateImplCopyWithImpl(
      _$SimplifiedCardsStateImpl _value, $Res Function(_$SimplifiedCardsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? selectedCardIndex = null,
  }) {
    return _then(_$SimplifiedCardsStateImpl(
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SimplifiedCard>>,
      selectedCardIndex: null == selectedCardIndex
          ? _value.selectedCardIndex
          : selectedCardIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SimplifiedCardsStateImpl implements _SimplifiedCardsState {
  const _$SimplifiedCardsStateImpl(
      {this.cards = const AsyncLoading<List<SimplifiedCard>>(), this.selectedCardIndex = 0});

  @override
  @JsonKey()
  final AsyncValue<List<SimplifiedCard>> cards;
  @override
  @JsonKey()
  final int selectedCardIndex;

  @override
  String toString() {
    return 'SimplifiedCardsState(cards: $cards, selectedCardIndex: $selectedCardIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedCardsStateImpl &&
            (identical(other.cards, cards) || other.cards == cards) &&
            (identical(other.selectedCardIndex, selectedCardIndex) ||
                other.selectedCardIndex == selectedCardIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cards, selectedCardIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedCardsStateImplCopyWith<_$SimplifiedCardsStateImpl> get copyWith =>
      __$$SimplifiedCardsStateImplCopyWithImpl<_$SimplifiedCardsStateImpl>(this, _$identity);
}

abstract class _SimplifiedCardsState implements SimplifiedCardsState {
  const factory _SimplifiedCardsState(
      {final AsyncValue<List<SimplifiedCard>> cards,
      final int selectedCardIndex}) = _$SimplifiedCardsStateImpl;

  @override
  AsyncValue<List<SimplifiedCard>> get cards;
  @override
  int get selectedCardIndex;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedCardsStateImplCopyWith<_$SimplifiedCardsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
