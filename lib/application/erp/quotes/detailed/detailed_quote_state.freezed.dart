// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_quote_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedQuoteState {
  AsyncValue<DetailedQuote> get quote => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedQuoteStateCopyWith<DetailedQuoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedQuoteStateCopyWith<$Res> {
  factory $DetailedQuoteStateCopyWith(
          DetailedQuoteState value, $Res Function(DetailedQuoteState) then) =
      _$DetailedQuoteStateCopyWithImpl<$Res, DetailedQuoteState>;
  @useResult
  $Res call({AsyncValue<DetailedQuote> quote});
}

/// @nodoc
class _$DetailedQuoteStateCopyWithImpl<$Res, $Val extends DetailedQuoteState>
    implements $DetailedQuoteStateCopyWith<$Res> {
  _$DetailedQuoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quote = null,
  }) {
    return _then(_value.copyWith(
      quote: null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedQuote>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedQuoteStateImplCopyWith<$Res>
    implements $DetailedQuoteStateCopyWith<$Res> {
  factory _$$DetailedQuoteStateImplCopyWith(_$DetailedQuoteStateImpl value,
          $Res Function(_$DetailedQuoteStateImpl) then) =
      __$$DetailedQuoteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<DetailedQuote> quote});
}

/// @nodoc
class __$$DetailedQuoteStateImplCopyWithImpl<$Res>
    extends _$DetailedQuoteStateCopyWithImpl<$Res, _$DetailedQuoteStateImpl>
    implements _$$DetailedQuoteStateImplCopyWith<$Res> {
  __$$DetailedQuoteStateImplCopyWithImpl(_$DetailedQuoteStateImpl _value,
      $Res Function(_$DetailedQuoteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quote = null,
  }) {
    return _then(_$DetailedQuoteStateImpl(
      quote: null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as AsyncValue<DetailedQuote>,
    ));
  }
}

/// @nodoc

class _$DetailedQuoteStateImpl implements _DetailedQuoteState {
  const _$DetailedQuoteStateImpl(
      {this.quote = const AsyncLoading<DetailedQuote>()});

  @override
  @JsonKey()
  final AsyncValue<DetailedQuote> quote;

  @override
  String toString() {
    return 'DetailedQuoteState(quote: $quote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedQuoteStateImpl &&
            (identical(other.quote, quote) || other.quote == quote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedQuoteStateImplCopyWith<_$DetailedQuoteStateImpl> get copyWith =>
      __$$DetailedQuoteStateImplCopyWithImpl<_$DetailedQuoteStateImpl>(
          this, _$identity);
}

abstract class _DetailedQuoteState implements DetailedQuoteState {
  const factory _DetailedQuoteState({final AsyncValue<DetailedQuote> quote}) =
      _$DetailedQuoteStateImpl;

  @override
  AsyncValue<DetailedQuote> get quote;
  @override
  @JsonKey(ignore: true)
  _$$DetailedQuoteStateImplCopyWith<_$DetailedQuoteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
