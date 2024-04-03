import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/local_storage/failures/local_storage_read_failure.dart';
import 'package:manifiesto_mvp_app/domain/local_storage/failures/local_storage_write_failure.dart';
import 'package:manifiesto_mvp_app/domain/local_storage/repositories/i_local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesLocalStorageProvider = Provider<SharedPreferencesLocalStorage>(
  (ref) => throw Exception('Override the dependency in the ProviderScope'),
);

class SharedPreferencesLocalStorage implements ILocalStorage {
  SharedPreferencesLocalStorage(this._storage);

  final SharedPreferences _storage;

  @override
  Future<Either<LocalStorageWriteFailure, Unit>> writeInt(String key, int? value) async {
    try {
      if (value == null) {
        await _storage.remove(key);
        return right(unit);
      }

      await _storage.setInt(key, value);
      return right(unit);
    } catch (e) {
      return left(LocalStorageWriteFailure());
    }
  }

  @override
  Either<LocalStorageReadFailure, int> readInt(String key) {
    try {
      final value = _storage.getInt(key);
      if (value == null) {
        return left(const LocalStorageReadFailure.valueNotFound());
      }
      return right(value);
      // ignore: avoid_catching_errors
    } on TypeError {
      return left(const LocalStorageReadFailure.typeMissmatch());
    } catch (e) {
      return left(const LocalStorageReadFailure.unknown());
    }
  }

  @override
  int? readIntOrNull(String key) {
    return _storage.getInt(key);
  }
}
