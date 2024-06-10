abstract class IPaginationData {
  const IPaginationData({
    required this.page,
    required this.pageSize,
    this.isComplete = false,
  });

  final int page;
  final int pageSize;
  final bool isComplete;
}
