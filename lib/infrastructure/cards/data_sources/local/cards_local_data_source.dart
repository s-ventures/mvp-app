import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/local_storage/failures/local_storage_write_failure.dart';
import 'package:manifiesto_mvp_app/infrastructure/local_storage/repositories/shared_preferences_local_storage.dart';

class CardsLocalDataSource {
  CardsLocalDataSource(this._localStorage);

  static const _selectedCardId = 'selected_card_id';

  final SharedPreferencesLocalStorage _localStorage;

  Future<Either<LocalStorageWriteFailure, Unit>> selectCard(int cardId) =>
      _localStorage.writeInt(_selectedCardId, cardId);
}
