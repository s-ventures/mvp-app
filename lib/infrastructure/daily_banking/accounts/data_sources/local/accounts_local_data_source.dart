import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/local_storage/failures/local_storage_write_failure.dart';
import 'package:manifiesto_mvp_app/infrastructure/local_storage/repositories/shared_preferences_local_storage.dart';

class AccountsLocalDataSource {
  AccountsLocalDataSource(this._localStorage);

  static const _selectedAccountId = 'selected_account_id';

  final SharedPreferencesLocalStorage _localStorage;

  Future<Either<LocalStorageWriteFailure, Unit>> saveSelectedAccountId(
    int accountId,
  ) =>
      _localStorage.writeInt(_selectedAccountId, accountId);
}
