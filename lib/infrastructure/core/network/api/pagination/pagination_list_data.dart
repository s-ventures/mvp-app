import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_data.dart';

class PaginationListData<T> extends PaginationData {
  PaginationListData({
    required super.page,
    required super.pageSize,
    required this.data,
    this.isComplete = false,
  });

  final List<T>? data;
  final bool isComplete;
}
