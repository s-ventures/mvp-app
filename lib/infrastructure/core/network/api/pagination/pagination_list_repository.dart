import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_data.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_repository.dart';
import 'package:rxdart/rxdart.dart';

abstract class PaginationListRepository<T>
    extends PaginationRepository<List<T>> {
  PaginationListRepository({
    super.pageSize,
  }) : subject = BehaviorSubject.seeded(
          PaginationListData(
            page: 0,
            pageSize: pageSize,
            data: null,
            totalElements: 0,
            totalPages: 0,
          ),
        );

  @protected
  final BehaviorSubject<PaginationListData<T>> subject;

  @override
  int get page => subject.value.page;

  @override
  Future<bool> loadNextPage() => _loadPage(page: subject.value.page + 1);

  @protected
  Future<List<T>?> fetchPage({required int page, required int pageSize});

  @override
  Future<void> refresh() {
    subject.add(
      PaginationListData(
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
      PaginationListData(
        totalElements: totalElements,
        totalPages: totalPages,
        page: pagination.page,
        pageSize: pagination.pageSize,
        data: pagination.data,
      ),
    );
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
      PaginationListData(
        page: page,
        data: _appendNewItems(newItems),
        pageSize: pagination.pageSize,
        totalElements: pagination.totalElements,
        totalPages: pagination.totalPages,
      ),
    );

    return hasLoadedMoreItems;
  }

  List<T> _appendNewItems(List<T> newItems) {
    final currentItems = subject.value.data ?? <T>[];
    return List.of(currentItems)..addAll(newItems);
  }
}
