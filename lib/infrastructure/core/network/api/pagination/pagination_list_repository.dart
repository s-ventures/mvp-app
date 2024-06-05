import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_data.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_repository.dart';
import 'package:rxdart/rxdart.dart';

abstract class PaginationListRepository<T> extends PaginationRepository<List<T>> {
  PaginationListRepository({
    super.pageSize,
  }) : subject = BehaviorSubject.seeded(
          PaginationListData(
            page: 0,
            pageSize: pageSize,
            data: null,
          ),
        );

  @protected
  final BehaviorSubject<PaginationListData<T>> subject;

  @override
  int get page => subject.value.page;

  @override
  Future<bool> loadNextPage() => _loadPage(page: subject.value.page + 1);

  /// Retrieves a page from the data source
  @protected
  Future<List<T>?> fetchPage({
    required int page,
    required int pageSize,
  });

  @override
  Future<void> refresh() {
    subject.add(
      PaginationListData(
        page: 0,
        pageSize: pageSize,
        data: null,
      ),
    );
    return _loadPage();
  }

  @override
  Stream<List<T>> observe() async* {
    if (subject.value.data == null) {
      _loadPage().ignore();
    }
    yield* subject.stream
        .where((pagination) => pagination.data != null)
        .map((pagination) => pagination.data!)
        .distinct();
  }

  /// Loads the page for the page index [page] and appends the new items
  ///
  /// Returns false if no more items were loaded. True if it loaded more items
  Future<bool> _loadPage({int page = 0}) async {
    final pagination = subject.value;

    if (pagination.isComplete) {
      return false;
    }

    final newItems = await fetchPage(
      page: page,
      pageSize: pageSize,
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
}
