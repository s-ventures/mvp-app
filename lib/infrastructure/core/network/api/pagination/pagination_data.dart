abstract class PaginationData {
  const PaginationData({
    required this.page,
    required this.pageSize,
    this.isComplete = false,
  });

  final int page;
  final int pageSize;
  final bool isComplete;
}
