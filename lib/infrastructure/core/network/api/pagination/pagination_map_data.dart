import 'package:manifiesto_mvp_app/domain/core/pagination/i_pagination_data.dart';

class PaginationMapData<K, V> extends IPaginationData {
  PaginationMapData({
    required super.page,
    required super.pageSize,
    required this.data,
    super.isComplete,
  });

  final Map<K, V>? data;
}
