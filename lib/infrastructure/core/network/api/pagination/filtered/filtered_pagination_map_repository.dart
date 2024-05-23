import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/filtered_pagination_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/pagination_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_map_data.dart';
import 'package:rxdart/rxdart.dart';

abstract class FilteredPaginationMapRepository<K, V, F extends PaginationFilter>
    extends FilteredPaginationRepository<Map<K, V>, F> {
  FilteredPaginationMapRepository({
    super.pageSize,
  }) : subject = BehaviorSubject.seeded(
          PaginationMapData(
            page: 0,
            pageSize: pageSize,
            data: null,
          ),
        );

  @protected
  @visibleForTesting
  final BehaviorSubject<PaginationMapData<K, V>> subject;

  @override
  int get page => subject.value.page;

  @protected
  @visibleForTesting
  Future<Map<K, V>?> fetchPage({
    required int page,
    required int pageSize,
    F? filter,
  });

  @override
  Future<bool> loadNextPage({F? filter}) => _loadPage(
        page: subject.value.page + 1,
        filter: filter,
      );

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
      ),
    );
    return _loadPage();
  }

  Future<bool> _loadPage({int page = 0, F? filter}) async {
    final pagination = subject.value;

    if (pagination.isComplete) {
      return false;
    }

    final newItems = await fetchPage(
      page: page,
      pageSize: pageSize,
      filter: filter,
    );

    if (newItems == null) {
      // subject.addError(const AppError());
      return false;
    }

    final hasLoadedMoreItems = newItems.isNotEmpty;

    subject.add(
      PaginationMapData(
        page: page,
        data: appendNewItems(newItems),
        pageSize: pagination.pageSize,
        isComplete: !hasLoadedMoreItems,
      ),
    );

    return hasLoadedMoreItems;
  }

  Map<K, V> appendNewItems(Map<K, V> newItems) {
    final currentItems = subject.value.data ?? <K, V>{};
    return Map.of(currentItems)..addAll(newItems);
  }
}
