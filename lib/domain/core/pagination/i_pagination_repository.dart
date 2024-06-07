abstract class IPaginationRepository<T> {
  IPaginationRepository({
    this.pageSize = 10,
  });

  /// Loads next page. If there are new items returns true, false otherwise
  Future<bool> loadNextPage();

  final int pageSize;

  int get page;

  Stream<T> observe();

  Future<void> refresh();
}
