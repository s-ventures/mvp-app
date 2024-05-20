import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholder.dart';

part 'favorite_stakeholders_state.freezed.dart';

@freezed
class FavoriteStakeholdersState with _$FavoriteStakeholdersState {
  const factory FavoriteStakeholdersState({
    @Default(AsyncLoading<List<Stakeholder>>())
    AsyncValue<List<Stakeholder>> favoriteStakeholders,
  }) = _FavoriteStakeholdersState;
}
