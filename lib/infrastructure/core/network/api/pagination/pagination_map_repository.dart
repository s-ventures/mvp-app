import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_map_data.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_repository.dart';
import 'package:rxdart/rxdart.dart';

abstract class PaginationMapRepository<K, V> extends PaginationRepository<Map<K, V>> {
  PaginationMapRepository({
    super.pageSize,
  }) : subject = BehaviorSubject.seeded(
          PaginationMapData(
            page: 0,
            pageSize: pageSize,
            data: null,
            totalElements: 0,
            totalPages: 0,
          ),
        );

  @protected
  final BehaviorSubject<PaginationMapData<K, V>> subject;

  @override
  int get page => subject.value.page;

  @protected
  Future<Map<K, V>?> fetchPage({required int page, required int pageSize});

  @override
  Future<bool> loadNextPage() => _loadPage(page: subject.value.page + 1);

  @override
  Stream<Map<K, V>> observe() async* {
    if (subject.value.data == null) {
      _loadPage().ignore();
    }
    yield* subject.stream
        .where((pagination) => pagination.data != null)
        .map((pagination) => pagination.data!)
        .distinct();
  }

  @override
  Future<void> refresh() {
    subject.add(
      PaginationMapData(
        page: 0,
        pageSize: pageSize,
        data: null,
        totalElements: 0,
        totalPages: 0,
      ),
    );
    return _loadPage();
  }

  @override
  void onPaginationInfo(int totalPages, int totalElements) {
    final pagination = subject.value;
    subject.add(
      PaginationMapData(
        totalElements: totalElements,
        totalPages: totalPages,
        page: pagination.page,
        pageSize: pagination.pageSize,
        data: pagination.data,
      ),
    );
  }

  Future<bool> _loadPage({int page = 0}) async {
    final pagination = subject.value;

    // if (pagination.isComplete) {
    //   return false;
    // }
    if (pagination.totalPages > 0 && page >= pagination.totalPages) {
      return false;
    }

    final newItems = await fetchPage(
      page: page,
      pageSize: pageSize,
    );

    if (newItems == null) {
      // subject.addError(const AppError());
      return false;
    }

    final hasLoadedMoreItems = newItems.isNotEmpty;

    subject.add(
      PaginationMapData(
        page: page,
        data: _appendNewItems(newItems),
        pageSize: pagination.pageSize,
        totalElements: pagination.totalElements,
        totalPages: pagination.totalPages,
      ),
    );

    return hasLoadedMoreItems;
  }

  Map<K, V> _appendNewItems(Map<K, V> newItems) {
    final currentItems = subject.value.data ?? <K, V>{};
    return Map.of(currentItems)..addAll(newItems);
  }
}
