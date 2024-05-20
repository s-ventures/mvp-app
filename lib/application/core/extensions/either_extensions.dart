import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

extension EitherX<L extends Object, R> on Either<L, R> {
  AsyncValue<R> toAsyncValue() => fold(
        (error) => AsyncError(error, StackTrace.current),
        AsyncData.new,
      );
}
