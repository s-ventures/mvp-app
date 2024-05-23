import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/pagination_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_repository.dart';

abstract class FilteredPaginationRepository<T, F extends PaginationFilter>
    extends PaginationRepository<T> {
  FilteredPaginationRepository({
    super.pageSize = 10,
  });

  @override
  Future<bool> loadNextPage({F? filter});

  @override
  Stream<T> observe({F? filter});

  @override
  Future<void> refresh({F? filter});
}
