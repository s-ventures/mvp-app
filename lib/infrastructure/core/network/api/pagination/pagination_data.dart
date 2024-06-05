abstract class PaginationData {
  const PaginationData({
    required this.page,
    required this.pageSize,
    required this.totalElements,
    required this.totalPages,
  });

  final int totalElements;
  final int totalPages;
  final int page;
  final int pageSize;
}
