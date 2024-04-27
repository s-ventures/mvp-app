// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aggregation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AggregationState {
  AsyncValue<String> get aggregationServiceUrl =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AggregationStateCopyWith<AggregationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AggregationStateCopyWith<$Res> {
  factory $AggregationStateCopyWith(
          AggregationState value, $Res Function(AggregationState) then) =
      _$AggregationStateCopyWithImpl<$Res, AggregationState>;
  @useResult
  $Res call({AsyncValue<String> aggregationServiceUrl});
}

/// @nodoc
class _$AggregationStateCopyWithImpl<$Res, $Val extends AggregationState>
    implements $AggregationStateCopyWith<$Res> {
  _$AggregationStateCopyWithImpl(this._value, this._then);

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
abstract class _$$AggregationStateImplCopyWith<$Res>
    implements $AggregationStateCopyWith<$Res> {
  factory _$$AggregationStateImplCopyWith(_$AggregationStateImpl value,
          $Res Function(_$AggregationStateImpl) then) =
      __$$AggregationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<String> aggregationServiceUrl});
}

/// @nodoc
class __$$AggregationStateImplCopyWithImpl<$Res>
    extends _$AggregationStateCopyWithImpl<$Res, _$AggregationStateImpl>
    implements _$$AggregationStateImplCopyWith<$Res> {
  __$$AggregationStateImplCopyWithImpl(_$AggregationStateImpl _value,
      $Res Function(_$AggregationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aggregationServiceUrl = null,
  }) {
    return _then(_$AggregationStateImpl(
      aggregationServiceUrl: null == aggregationServiceUrl
          ? _value.aggregationServiceUrl
          : aggregationServiceUrl // ignore: cast_nullable_to_non_nullable
              as AsyncValue<String>,
    ));
  }
}

/// @nodoc

class _$AggregationStateImpl implements _AggregationState {
  const _$AggregationStateImpl(
      {this.aggregationServiceUrl = const AsyncLoading<String>()});

  @override
  @JsonKey()
  final AsyncValue<String> aggregationServiceUrl;

  @override
  String toString() {
    return 'AggregationState(aggregationServiceUrl: $aggregationServiceUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AggregationStateImpl &&
            (identical(other.aggregationServiceUrl, aggregationServiceUrl) ||
                other.aggregationServiceUrl == aggregationServiceUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, aggregationServiceUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AggregationStateImplCopyWith<_$AggregationStateImpl> get copyWith =>
      __$$AggregationStateImplCopyWithImpl<_$AggregationStateImpl>(
          this, _$identity);
}

abstract class _AggregationState implements AggregationState {
  const factory _AggregationState(
          {final AsyncValue<String> aggregationServiceUrl}) =
      _$AggregationStateImpl;

  @override
  AsyncValue<String> get aggregationServiceUrl;
  @override
  @JsonKey(ignore: true)
  _$$AggregationStateImplCopyWith<_$AggregationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
