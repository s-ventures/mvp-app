// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simplified_quotes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimplifiedQuotesState {
  AsyncValue<List<Quotation>> get quotes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimplifiedQuotesStateCopyWith<SimplifiedQuotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplifiedQuotesStateCopyWith<$Res> {
  factory $SimplifiedQuotesStateCopyWith(SimplifiedQuotesState value,
          $Res Function(SimplifiedQuotesState) then) =
      _$SimplifiedQuotesStateCopyWithImpl<$Res, SimplifiedQuotesState>;
  @useResult
  $Res call({AsyncValue<List<Quotation>> quotes});
}

/// @nodoc
class _$SimplifiedQuotesStateCopyWithImpl<$Res,
        $Val extends SimplifiedQuotesState>
    implements $SimplifiedQuotesStateCopyWith<$Res> {
  _$SimplifiedQuotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotes = null,
  }) {
    return _then(_value.copyWith(
      quotes: null == quotes
          ? _value.quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Quotation>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimplifiedQuotesStateImplCopyWith<$Res>
    implements $SimplifiedQuotesStateCopyWith<$Res> {
  factory _$$SimplifiedQuotesStateImplCopyWith(
          _$SimplifiedQuotesStateImpl value,
          $Res Function(_$SimplifiedQuotesStateImpl) then) =
      __$$SimplifiedQuotesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<Quotation>> quotes});
}

/// @nodoc
class __$$SimplifiedQuotesStateImplCopyWithImpl<$Res>
    extends _$SimplifiedQuotesStateCopyWithImpl<$Res,
        _$SimplifiedQuotesStateImpl>
    implements _$$SimplifiedQuotesStateImplCopyWith<$Res> {
  __$$SimplifiedQuotesStateImplCopyWithImpl(_$SimplifiedQuotesStateImpl _value,
      $Res Function(_$SimplifiedQuotesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotes = null,
  }) {
    return _then(_$SimplifiedQuotesStateImpl(
      quotes: null == quotes
          ? _value.quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Quotation>>,
    ));
  }
}

/// @nodoc

class _$SimplifiedQuotesStateImpl implements _SimplifiedQuotesState {
  const _$SimplifiedQuotesStateImpl(
      {this.quotes = const AsyncLoading<List<Quotation>>()});

  @override
  @JsonKey()
  final AsyncValue<List<Quotation>> quotes;

  @override
  String toString() {
    return 'SimplifiedQuotesState(quotes: $quotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplifiedQuotesStateImpl &&
            (identical(other.quotes, quotes) || other.quotes == quotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplifiedQuotesStateImplCopyWith<_$SimplifiedQuotesStateImpl>
      get copyWith => __$$SimplifiedQuotesStateImplCopyWithImpl<
          _$SimplifiedQuotesStateImpl>(this, _$identity);
}

abstract class _SimplifiedQuotesState implements SimplifiedQuotesState {
  const factory _SimplifiedQuotesState(
      {final AsyncValue<List<Quotation>> quotes}) = _$SimplifiedQuotesStateImpl;

  @override
  AsyncValue<List<Quotation>> get quotes;
  @override
  @JsonKey(ignore: true)
  _$$SimplifiedQuotesStateImplCopyWith<_$SimplifiedQuotesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
