// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banking_aggregation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BankingAggregationState {
  AsyncValue<String> get aggregationServiceUrl =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BankingAggregationStateCopyWith<BankingAggregationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankingAggregationStateCopyWith<$Res> {
  factory $BankingAggregationStateCopyWith(BankingAggregationState value,
          $Res Function(BankingAggregationState) then) =
      _$BankingAggregationStateCopyWithImpl<$Res, BankingAggregationState>;
  @useResult
  $Res call({AsyncValue<String> aggregationServiceUrl});
}

/// @nodoc
class _$BankingAggregationStateCopyWithImpl<$Res,
        $Val extends BankingAggregationState>
    implements $BankingAggregationStateCopyWith<$Res> {
  _$BankingAggregationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aggregationServiceUrl = null,
  }) {
    return _then(_value.copyWith(
      aggregationServiceUrl: null == aggregationServiceUrl
          ? _value.aggregationServiceUrl
          : aggregationServiceUrl // ignore: cast_nullable_to_non_nullable
              as AsyncValue<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankingAggregationStateImplCopyWith<$Res>
    implements $BankingAggregationStateCopyWith<$Res> {
  factory _$$BankingAggregationStateImplCopyWith(
          _$BankingAggregationStateImpl value,
          $Res Function(_$BankingAggregationStateImpl) then) =
      __$$BankingAggregationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<String> aggregationServiceUrl});
}

/// @nodoc
class __$$BankingAggregationStateImplCopyWithImpl<$Res>
    extends _$BankingAggregationStateCopyWithImpl<$Res,
        _$BankingAggregationStateImpl>
    implements _$$BankingAggregationStateImplCopyWith<$Res> {
  __$$BankingAggregationStateImplCopyWithImpl(
      _$BankingAggregationStateImpl _value,
      $Res Function(_$BankingAggregationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aggregationServiceUrl = null,
  }) {
    return _then(_$BankingAggregationStateImpl(
      aggregationServiceUrl: null == aggregationServiceUrl
          ? _value.aggregationServiceUrl
          : aggregationServiceUrl // ignore: cast_nullable_to_non_nullable
              as AsyncValue<String>,
    ));
  }
}

/// @nodoc

class _$BankingAggregationStateImpl implements _BankingAggregationState {
  const _$BankingAggregationStateImpl(
      {this.aggregationServiceUrl = const AsyncLoading<String>()});

  @override
  @JsonKey()
  final AsyncValue<String> aggregationServiceUrl;

  @override
  String toString() {
    return 'BankingAggregationState(aggregationServiceUrl: $aggregationServiceUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankingAggregationStateImpl &&
            (identical(other.aggregationServiceUrl, aggregationServiceUrl) ||
                other.aggregationServiceUrl == aggregationServiceUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, aggregationServiceUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankingAggregationStateImplCopyWith<_$BankingAggregationStateImpl>
      get copyWith => __$$BankingAggregationStateImplCopyWithImpl<
          _$BankingAggregationStateImpl>(this, _$identity);
}

abstract class _BankingAggregationState implements BankingAggregationState {
  const factory _BankingAggregationState(
          {final AsyncValue<String> aggregationServiceUrl}) =
      _$BankingAggregationStateImpl;

  @override
  AsyncValue<String> get aggregationServiceUrl;
  @override
  @JsonKey(ignore: true)
  _$$BankingAggregationStateImplCopyWith<_$BankingAggregationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
