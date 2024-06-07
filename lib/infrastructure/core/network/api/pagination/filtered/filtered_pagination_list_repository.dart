import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/filtered_pagination_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/pagination_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_data.dart';
import 'package:rxdart/rxdart.dart';

abstract class FilteredPaginationListRepository<T, F extends PaginationFilter>
    extends FilteredPaginationRepository<List<T>, F> {
  FilteredPaginationListRepository({
    super.pageSize,
  }) : subject = BehaviorSubject.seeded(
          PaginationListData(
            page: 0,
            pageSize: pageSize,
            data: null,
          ),
        );

  @protected
  @visibleForTesting
  final BehaviorSubject<PaginationListData<T>> subject;

  @override
  int get page => subject.value.page;

  @override
  Future<bool> loadNextPage({F? filter}) => _loadPage(
        page: subject.value.page + 1,
        filter: filter,
      );

  @protected
  @visibleForTesting
  Future<List<T>?> fetchPage({
    required int page,
    required int pageSize,
    F? filter,
  });

  @override
  Future<void> refresh({F? filter}) {
    subject.add(
      PaginationListData(
        page: 0,
        pageSize: pageSize,
        data: null,
      ),
    );
    return _loadPage(filter: filter);
  }

  @override
  Stream<List<T>> observe({F? filter}) async* {
    if (subject.value.data == null) {
      _loadPage(filter: filter).ignore();
    }
    yield* subject.stream
        .where((pagination) => pagination.data != null)
        .map((pagination) => pagination.data!)
        .distinct();
  }

  /// Loads the page for the page index [page] and appends the new items
  ///
  /// Returns false if no more items were loaded. True if it loaded more items
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
      return false;
    }

    final hasLoadedMoreItems = newItems.isNotEmpty;

    subject.add(
      PaginationListData(
        page: page,
        data: appendNewItems(newItems),
        pageSize: pagination.pageSize,
        isComplete: !hasLoadedMoreItems,
      ),
    );

    return hasLoadedMoreItems;
  }

  List<T> appendNewItems(List<T> newItems) {
    final currentItems = subject.value.data ?? <T>[];
    return List.of(currentItems)..addAll(newItems);
  }

  @override
  void reset() {
    subject.add(
      PaginationListData(
        page: 0,
        pageSize: super.pageSize,
        data: null,
      ),
    );
  }
}
