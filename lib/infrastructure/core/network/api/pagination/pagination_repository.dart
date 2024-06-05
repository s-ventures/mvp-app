abstract class PaginationRepository<T> {
  PaginationRepository({
    this.pageSize = 10,
  });

  Future<bool> loadNextPage();

  final int pageSize;

  int get page;

  Stream<T> observe();

  Future<void> refresh();

  void onPaginationInfo(int totalPages, int totalElements);
}
