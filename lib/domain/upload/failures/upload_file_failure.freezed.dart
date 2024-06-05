// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadFileFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uploadFailed,
    required TResult Function(double maxSize) fileExceedsMaxSize,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uploadFailed,
    TResult? Function(double maxSize)? fileExceedsMaxSize,
    TResult? Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uploadFailed,
    TResult Function(double maxSize)? fileExceedsMaxSize,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFailed value) uploadFailed,
    required TResult Function(_FileExceedsMaxSize value) fileExceedsMaxSize,
    required TResult Function(_Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFailed value)? uploadFailed,
    TResult? Function(_FileExceedsMaxSize value)? fileExceedsMaxSize,
    TResult? Function(_Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFailed value)? uploadFailed,
    TResult Function(_FileExceedsMaxSize value)? fileExceedsMaxSize,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileFailureCopyWith<$Res> {
  factory $UploadFileFailureCopyWith(
          UploadFileFailure value, $Res Function(UploadFileFailure) then) =
      _$UploadFileFailureCopyWithImpl<$Res, UploadFileFailure>;
}

/// @nodoc
class _$UploadFileFailureCopyWithImpl<$Res, $Val extends UploadFileFailure>
    implements $UploadFileFailureCopyWith<$Res> {
  _$UploadFileFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadFailedImplCopyWith<$Res> {
  factory _$$UploadFailedImplCopyWith(
          _$UploadFailedImpl value, $Res Function(_$UploadFailedImpl) then) =
      __$$UploadFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadFailedImplCopyWithImpl<$Res>
    extends _$UploadFileFailureCopyWithImpl<$Res, _$UploadFailedImpl>
    implements _$$UploadFailedImplCopyWith<$Res> {
  __$$UploadFailedImplCopyWithImpl(
      _$UploadFailedImpl _value, $Res Function(_$UploadFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadFailedImpl implements _UploadFailed {
  const _$UploadFailedImpl();

  @override
  String toString() {
    return 'UploadFileFailure.uploadFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uploadFailed,
    required TResult Function(double maxSize) fileExceedsMaxSize,
    required TResult Function() unexpected,
  }) {
    return uploadFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uploadFailed,
    TResult? Function(double maxSize)? fileExceedsMaxSize,
    TResult? Function()? unexpected,
  }) {
    return uploadFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uploadFailed,
    TResult Function(double maxSize)? fileExceedsMaxSize,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (uploadFailed != null) {
      return uploadFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFailed value) uploadFailed,
    required TResult Function(_FileExceedsMaxSize value) fileExceedsMaxSize,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return uploadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFailed value)? uploadFailed,
    TResult? Function(_FileExceedsMaxSize value)? fileExceedsMaxSize,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return uploadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFailed value)? uploadFailed,
    TResult Function(_FileExceedsMaxSize value)? fileExceedsMaxSize,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (uploadFailed != null) {
      return uploadFailed(this);
    }
    return orElse();
  }
}

abstract class _UploadFailed implements UploadFileFailure {
  const factory _UploadFailed() = _$UploadFailedImpl;
}

/// @nodoc
abstract class _$$FileExceedsMaxSizeImplCopyWith<$Res> {
  factory _$$FileExceedsMaxSizeImplCopyWith(_$FileExceedsMaxSizeImpl value,
          $Res Function(_$FileExceedsMaxSizeImpl) then) =
      __$$FileExceedsMaxSizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double maxSize});
}

/// @nodoc
class __$$FileExceedsMaxSizeImplCopyWithImpl<$Res>
    extends _$UploadFileFailureCopyWithImpl<$Res, _$FileExceedsMaxSizeImpl>
    implements _$$FileExceedsMaxSizeImplCopyWith<$Res> {
  __$$FileExceedsMaxSizeImplCopyWithImpl(_$FileExceedsMaxSizeImpl _value,
      $Res Function(_$FileExceedsMaxSizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxSize = null,
  }) {
    return _then(_$FileExceedsMaxSizeImpl(
      null == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$FileExceedsMaxSizeImpl implements _FileExceedsMaxSize {
  const _$FileExceedsMaxSizeImpl(this.maxSize);

  @override
  final double maxSize;

  @override
  String toString() {
    return 'UploadFileFailure.fileExceedsMaxSize(maxSize: $maxSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileExceedsMaxSizeImpl &&
            (identical(other.maxSize, maxSize) || other.maxSize == maxSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maxSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileExceedsMaxSizeImplCopyWith<_$FileExceedsMaxSizeImpl> get copyWith =>
      __$$FileExceedsMaxSizeImplCopyWithImpl<_$FileExceedsMaxSizeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uploadFailed,
    required TResult Function(double maxSize) fileExceedsMaxSize,
    required TResult Function() unexpected,
  }) {
    return fileExceedsMaxSize(maxSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uploadFailed,
    TResult? Function(double maxSize)? fileExceedsMaxSize,
    TResult? Function()? unexpected,
  }) {
    return fileExceedsMaxSize?.call(maxSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uploadFailed,
    TResult Function(double maxSize)? fileExceedsMaxSize,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (fileExceedsMaxSize != null) {
      return fileExceedsMaxSize(maxSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFailed value) uploadFailed,
    required TResult Function(_FileExceedsMaxSize value) fileExceedsMaxSize,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return fileExceedsMaxSize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFailed value)? uploadFailed,
    TResult? Function(_FileExceedsMaxSize value)? fileExceedsMaxSize,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return fileExceedsMaxSize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFailed value)? uploadFailed,
    TResult Function(_FileExceedsMaxSize value)? fileExceedsMaxSize,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (fileExceedsMaxSize != null) {
      return fileExceedsMaxSize(this);
    }
    return orElse();
  }
}

abstract class _FileExceedsMaxSize implements UploadFileFailure {
  const factory _FileExceedsMaxSize(final double maxSize) =
      _$FileExceedsMaxSizeImpl;

  double get maxSize;
  @JsonKey(ignore: true)
  _$$FileExceedsMaxSizeImplCopyWith<_$FileExceedsMaxSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl value, $Res Function(_$UnexpectedImpl) then) =
      __$$UnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$UploadFileFailureCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl _value, $Res Function(_$UnexpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnexpectedImpl implements _Unexpected {
  const _$UnexpectedImpl();

  @override
  String toString() {
    return 'UploadFileFailure.unexpected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uploadFailed,
    required TResult Function(double maxSize) fileExceedsMaxSize,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uploadFailed,
    TResult? Function(double maxSize)? fileExceedsMaxSize,
    TResult? Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uploadFailed,
    TResult Function(double maxSize)? fileExceedsMaxSize,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadFailed value) uploadFailed,
    required TResult Function(_FileExceedsMaxSize value) fileExceedsMaxSize,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadFailed value)? uploadFailed,
    TResult? Function(_FileExceedsMaxSize value)? fileExceedsMaxSize,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadFailed value)? uploadFailed,
    TResult Function(_FileExceedsMaxSize value)? fileExceedsMaxSize,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements UploadFileFailure {
  const factory _Unexpected() = _$UnexpectedImpl;
}
