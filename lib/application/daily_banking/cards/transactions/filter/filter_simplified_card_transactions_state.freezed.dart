// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_simplified_card_transactions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterSimplifiedCardTransactionsState {
  String get search => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterSimplifiedCardTransactionsStateCopyWith<
          FilterSimplifiedCardTransactionsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterSimplifiedCardTransactionsStateCopyWith<$Res> {
  factory $FilterSimplifiedCardTransactionsStateCopyWith(
          FilterSimplifiedCardTransactionsState value,
          $Res Function(FilterSimplifiedCardTransactionsState) then) =
      _$FilterSimplifiedCardTransactionsStateCopyWithImpl<$Res,
          FilterSimplifiedCardTransactionsState>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class _$FilterSimplifiedCardTransactionsStateCopyWithImpl<$Res,
        $Val extends FilterSimplifiedCardTransactionsState>
    implements $FilterSimplifiedCardTransactionsStateCopyWith<$Res> {
  _$FilterSimplifiedCardTransactionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_value.copyWith(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterSimplifiedCardTransactionsStateImplCopyWith<$Res>
    implements $FilterSimplifiedCardTransactionsStateCopyWith<$Res> {
  factory _$$FilterSimplifiedCardTransactionsStateImplCopyWith(
          _$FilterSimplifiedCardTransactionsStateImpl value,
          $Res Function(_$FilterSimplifiedCardTransactionsStateImpl) then) =
      __$$FilterSimplifiedCardTransactionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$FilterSimplifiedCardTransactionsStateImplCopyWithImpl<$Res>
    extends _$FilterSimplifiedCardTransactionsStateCopyWithImpl<$Res,
        _$FilterSimplifiedCardTransactionsStateImpl>
    implements _$$FilterSimplifiedCardTransactionsStateImplCopyWith<$Res> {
  __$$FilterSimplifiedCardTransactionsStateImplCopyWithImpl(
      _$FilterSimplifiedCardTransactionsStateImpl _value,
      $Res Function(_$FilterSimplifiedCardTransactionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$FilterSimplifiedCardTransactionsStateImpl(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterSimplifiedCardTransactionsStateImpl
    implements _FilterSimplifiedCardTransactionsState {
  const _$FilterSimplifiedCardTransactionsStateImpl({this.search = ''});

  @override
  @JsonKey()
  final String search;

  @override
  String toString() {
    return 'FilterSimplifiedCardTransactionsState(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterSimplifiedCardTransactionsStateImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterSimplifiedCardTransactionsStateImplCopyWith<
          _$FilterSimplifiedCardTransactionsStateImpl>
      get copyWith => __$$FilterSimplifiedCardTransactionsStateImplCopyWithImpl<
          _$FilterSimplifiedCardTransactionsStateImpl>(this, _$identity);
}

abstract class _FilterSimplifiedCardTransactionsState
    implements FilterSimplifiedCardTransactionsState {
  const factory _FilterSimplifiedCardTransactionsState({final String search}) =
      _$FilterSimplifiedCardTransactionsStateImpl;

  @override
  String get search;
  @override
  @JsonKey(ignore: true)
  _$$FilterSimplifiedCardTransactionsStateImplCopyWith<
          _$FilterSimplifiedCardTransactionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
