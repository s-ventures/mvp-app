class PaginationData<T> {
  const PaginationData({
    required this.page,
    required this.pageSize,
    required this.totalElements,
    required this.totalPages,
    required this.data,
  });

  final List<T>? data;
  final int totalElements;
  final int totalPages;
  final int page;
  final int pageSize;
}
