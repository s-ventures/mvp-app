// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_attachments_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UploadFileFailure failure) failure,
    required TResult Function() deleteFileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UploadFileFailure failure)? failure,
    TResult? Function()? deleteFileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UploadFileFailure failure)? failure,
    TResult Function()? deleteFileSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFailure value) failure,
    required TResult Function(_DeleteFileSuccess value) deleteFileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFailure value)? failure,
    TResult? Function(_DeleteFileSuccess value)? deleteFileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFailure value)? failure,
    TResult Function(_DeleteFileSuccess value)? deleteFileSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadEventCopyWith<$Res> {
  factory $UploadEventCopyWith(
          UploadEvent value, $Res Function(UploadEvent) then) =
      _$UploadEventCopyWithImpl<$Res, UploadEvent>;
}

/// @nodoc
class _$UploadEventCopyWithImpl<$Res, $Val extends UploadEvent>
    implements $UploadEventCopyWith<$Res> {
  _$UploadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadFailureImplCopyWith<$Res> {
  factory _$$UploadFailureImplCopyWith(
          _$UploadFailureImpl value, $Res Function(_$UploadFailureImpl) then) =
      __$$UploadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UploadFileFailure failure});

  $UploadFileFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$UploadFailureImplCopyWithImpl<$Res>
    extends _$UploadEventCopyWithImpl<$Res, _$UploadFailureImpl>
    implements _$$UploadFailureImplCopyWith<$Res> {
  __$$UploadFailureImplCopyWithImpl(
      _$UploadFailureImpl _value, $Res Function(_$UploadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$UploadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as UploadFileFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UploadFileFailureCopyWith<$Res> get failure {
    return $UploadFileFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$UploadFailureImpl implements _UploadFailure {
  const _$UploadFailureImpl(this.failure);

  @override
  final UploadFileFailure failure;

  @override
  String toString() {
    return 'UploadEvent.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFailureImplCopyWith<_$UploadFailureImpl> get copyWith =>
      __$$UploadFailureImplCopyWithImpl<_$UploadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UploadFileFailure failure) failure,
    required TResult Function() deleteFileSuccess,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UploadFileFailure failure)? failure,
    TResult? Function()? deleteFileSuccess,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UploadFileFailure failure)? failure,
    TResult Function()? deleteFileSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFailure value) failure,
    required TResult Function(_DeleteFileSuccess value) deleteFileSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFailure value)? failure,
    TResult? Function(_DeleteFileSuccess value)? deleteFileSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFailure value)? failure,
    TResult Function(_DeleteFileSuccess value)? deleteFileSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _UploadFailure implements UploadEvent {
  const factory _UploadFailure(final UploadFileFailure failure) =
      _$UploadFailureImpl;

  UploadFileFailure get failure;
  @JsonKey(ignore: true)
  _$$UploadFailureImplCopyWith<_$UploadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFileSuccessImplCopyWith<$Res> {
  factory _$$DeleteFileSuccessImplCopyWith(_$DeleteFileSuccessImpl value,
          $Res Function(_$DeleteFileSuccessImpl) then) =
      __$$DeleteFileSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteFileSuccessImplCopyWithImpl<$Res>
    extends _$UploadEventCopyWithImpl<$Res, _$DeleteFileSuccessImpl>
    implements _$$DeleteFileSuccessImplCopyWith<$Res> {
  __$$DeleteFileSuccessImplCopyWithImpl(_$DeleteFileSuccessImpl _value,
      $Res Function(_$DeleteFileSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteFileSuccessImpl implements _DeleteFileSuccess {
  const _$DeleteFileSuccessImpl();

  @override
  String toString() {
    return 'UploadEvent.deleteFileSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteFileSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UploadFileFailure failure) failure,
    required TResult Function() deleteFileSuccess,
  }) {
    return deleteFileSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UploadFileFailure failure)? failure,
    TResult? Function()? deleteFileSuccess,
  }) {
    return deleteFileSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UploadFileFailure failure)? failure,
    TResult Function()? deleteFileSuccess,
    required TResult orElse(),
  }) {
    if (deleteFileSuccess != null) {
      return deleteFileSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFailure value) failure,
    required TResult Function(_DeleteFileSuccess value) deleteFileSuccess,
  }) {
    return deleteFileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFailure value)? failure,
    TResult? Function(_DeleteFileSuccess value)? deleteFileSuccess,
  }) {
    return deleteFileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFailure value)? failure,
    TResult Function(_DeleteFileSuccess value)? deleteFileSuccess,
    required TResult orElse(),
  }) {
    if (deleteFileSuccess != null) {
      return deleteFileSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteFileSuccess implements UploadEvent {
  const factory _DeleteFileSuccess() = _$DeleteFileSuccessImpl;
}
