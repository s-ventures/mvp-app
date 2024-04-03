import 'package:manifiesto_mvp_app/domain/core/failures/value_failure/value_failure.dart';

class InvalidPhotoUrl<T> extends ValueFailure<T> {
  InvalidPhotoUrl({required super.failedValue});
}
