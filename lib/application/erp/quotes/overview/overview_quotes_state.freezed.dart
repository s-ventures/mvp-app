// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_quotes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OverviewQuotesState {
  AsyncValue<OverviewQuotes> get overview => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OverviewQuotesStateCopyWith<OverviewQuotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewQuotesStateCopyWith<$Res> {
  factory $OverviewQuotesStateCopyWith(
          OverviewQuotesState value, $Res Function(OverviewQuotesState) then) =
      _$OverviewQuotesStateCopyWithImpl<$Res, OverviewQuotesState>;
  @useResult
  $Res call({AsyncValue<OverviewQuotes> overview});
}

/// @nodoc
class _$OverviewQuotesStateCopyWithImpl<$Res, $Val extends OverviewQuotesState>
    implements $OverviewQuotesStateCopyWith<$Res> {
  _$OverviewQuotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = null,
  }) {
    return _then(_value.copyWith(
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as AsyncValue<OverviewQuotes>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OverviewQuotesStateImplCopyWith<$Res>
    implements $OverviewQuotesStateCopyWith<$Res> {
  factory _$$OverviewQuotesStateImplCopyWith(_$OverviewQuotesStateImpl value,
          $Res Function(_$OverviewQuotesStateImpl) then) =
      __$$OverviewQuotesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<OverviewQuotes> overview});
}

/// @nodoc
class __$$OverviewQuotesStateImplCopyWithImpl<$Res>
    extends _$OverviewQuotesStateCopyWithImpl<$Res, _$OverviewQuotesStateImpl>
    implements _$$OverviewQuotesStateImplCopyWith<$Res> {
  __$$OverviewQuotesStateImplCopyWithImpl(_$OverviewQuotesStateImpl _value,
      $Res Function(_$OverviewQuotesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = null,
  }) {
    return _then(_$OverviewQuotesStateImpl(
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as AsyncValue<OverviewQuotes>,
    ));
  }
}

/// @nodoc

class _$OverviewQuotesStateImpl implements _OverviewQuotesState {
  const _$OverviewQuotesStateImpl(
      {this.overview = const AsyncLoading<OverviewQuotes>()});

  @override
  @JsonKey()
  final AsyncValue<OverviewQuotes> overview;

  @override
  String toString() {
    return 'OverviewQuotesState(overview: $overview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewQuotesStateImpl &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @override
  int get hashCode => Object.hash(runtimeType, overview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewQuotesStateImplCopyWith<_$OverviewQuotesStateImpl> get copyWith =>
      __$$OverviewQuotesStateImplCopyWithImpl<_$OverviewQuotesStateImpl>(
          this, _$identity);
}

abstract class _OverviewQuotesState implements OverviewQuotesState {
  const factory _OverviewQuotesState(
      {final AsyncValue<OverviewQuotes> overview}) = _$OverviewQuotesStateImpl;

  @override
  AsyncValue<OverviewQuotes> get overview;
  @override
  @JsonKey(ignore: true)
  _$$OverviewQuotesStateImplCopyWith<_$OverviewQuotesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
