import 'package:manifiesto_mvp_app/domain/core/pagination/i_pagination_data.dart';

class PaginationListData<T> extends IPaginationData {
  PaginationListData({
    required super.page,
    required super.pageSize,
    required this.data,
    super.isComplete,
  });

  final List<T>? data;
}
