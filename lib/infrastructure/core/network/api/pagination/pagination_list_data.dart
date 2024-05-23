import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_data.dart';

class PaginationListData<T> extends PaginationData {
  PaginationListData({
    required super.page,
    required super.pageSize,
    required this.data,
    super.isComplete,
  });

  final List<T>? data;
}
