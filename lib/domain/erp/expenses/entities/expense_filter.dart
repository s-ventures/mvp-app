import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_status.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_pagination_filter.dart';

part 'expense_filter.freezed.dart';

@freezed
class ExpenseFilter with _$ExpenseFilter implements IPaginationFilter {
  @Implements<IPaginationFilter>()
  const factory ExpenseFilter({
    UniqueId? id,
    UniqueId? stakeholderId,
    DateTime? createdDateFrom,
    DateTime? createdDateTo,
    DateTime? issueDateFrom,
    DateTime? issueDateTo,
    double? totalAmountFrom,
    double? totalAmountTo,
    String? query,
    ExpenseStatus? status,
  }) = _ExpenseFilter;
}
