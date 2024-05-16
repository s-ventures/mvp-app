import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/local_storage/failures/local_storage_write_failure.dart';
import 'package:manifiesto_mvp_app/infrastructure/local_storage/repositories/shared_preferences_local_storage.dart';

class ContractsLocalDataSource {
  ContractsLocalDataSource(this._localStorage);

  static const _selectedContractId = 'selected_contract_id';

  final SharedPreferencesLocalStorage _localStorage;

  Future<Either<LocalStorageWriteFailure, Unit>> saveSelectedContractId(
    int id,
  ) =>
      _localStorage.writeInt(_selectedContractId, id);
}
