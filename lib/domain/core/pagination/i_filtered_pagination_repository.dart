import 'package:manifiesto_mvp_app/domain/core/pagination/i_pagination_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/pagination_filter.dart';

abstract class IFilteredPaginationRepository<T, F extends PaginationFilter>
    extends IPaginationRepository<T> {
  IFilteredPaginationRepository({
    super.pageSize = 10,
  });

  @override
  Future<bool> loadNextPage({F? filter});

  @override
  Stream<T> observe({F? filter});

  @override
  Future<void> refresh({F? filter});

  /// Resets the pagination to the initial state
  void reset();
}
