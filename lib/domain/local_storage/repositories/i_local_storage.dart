import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/local_storage/failures/local_storage_read_failure.dart';
import 'package:manifiesto_mvp_app/domain/local_storage/failures/local_storage_write_failure.dart';

abstract class ILocalStorage {
  Future<Either<LocalStorageWriteFailure, Unit>> writeInt(String key, int? value);

  Either<LocalStorageReadFailure, int> readInt(String key);

  int? readIntOrNull(String key);
}
