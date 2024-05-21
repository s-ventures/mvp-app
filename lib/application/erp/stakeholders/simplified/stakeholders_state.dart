import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholder.dart';

part 'stakeholders_state.freezed.dart';

@freezed
class StakeholdersState with _$StakeholdersState {
  const factory StakeholdersState({
    @Default(AsyncLoading<List<Stakeholder>>())
    AsyncValue<List<Stakeholder>> stakeholders,
  }) = _StakeholdersState;
}
