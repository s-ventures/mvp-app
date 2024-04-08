import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_data.dart';

class PaginationMapData<K, V> extends PaginationData {
  PaginationMapData({
    required super.page,
    required super.pageSize,
    required super.totalElements,
    required super.totalPages,
    required this.data,
  });

  final Map<K, V>? data;
}
