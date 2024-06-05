import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/failures/failure.dart';

extension FutureErrorExt<T> on Future<Either<Failure, T>> {
  /// Simplify work with [Either]
  /// return result if [Either] has right value
  /// else returns null
  ///```dart
  /// final result = await repository.getFirstResult().resultOrNull();
  /// if(result == null) {
  ///   return;
  /// }
  /// ```
  Future<T?> resultOrNull() {
    return fold(
      (left) => null,
      (T result) => result,
    );
  }
}

extension FutureEither<L, R> on Future<Either<L, R>> {
  /// Fold [Left] and [Right] into the value of one type
  Future<T> fold<T>(
    FutureOr<T> Function(L left) fnL,
    FutureOr<T> Function(R right) fnR,
  ) {
    return then((either) => either.fold(fnL, fnR));
  }
}
