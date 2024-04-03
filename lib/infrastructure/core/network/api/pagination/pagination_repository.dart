import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_data.dart';
import 'package:rxdart/rxdart.dart';

abstract class PaginationRepository<T> {
  PaginationRepository({
    this.pageSize = 10,
  }) : subject = BehaviorSubject.seeded(
          PaginationData(
            page: 0,
            pageSize: pageSize,
            data: null,
            totalElements: 0,
            totalPages: 0,
          ),
        );

  @protected
  final BehaviorSubject<PaginationData<T>> subject;
  final int pageSize;

  int get page => subject.value.page;

  @protected
  Future<List<T>?> fetchPage({required int page, required int pageSize});

  Future<void> refresh() {
    subject.add(
      PaginationData(
        page: 0,
        pageSize: pageSize,
        data: null,
        totalElements: 0,
        totalPages: 0,
      ),
    );
    return loadPage();
  }

  void onPaginationInfo(int totalPages, int totalElements) {
    final pagination = subject.value;
    subject.add(
      PaginationData(
        totalElements: totalElements,
        totalPages: totalPages,
        page: pagination.page,
        pageSize: pagination.pageSize,
        data: pagination.data,
      ),
    );
  }

  Future<bool> loadPage({int page = 0}) async {
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
      PaginationData(
        page: page,
        data: appendNewItems(newItems),
        pageSize: pagination.pageSize,
        totalElements: pagination.totalElements,
        totalPages: pagination.totalPages,
      ),
    );

    return hasLoadedMoreItems;
  }

  Future<bool> loadNextPage() => loadPage(page: subject.value.page + 1);

  List<T> appendNewItems(List<T> newItems) {
    final currentItems = subject.value.data ?? <T>[];
    return List.of(currentItems)..addAll(newItems);
  }

  Stream<List<T>> observe() async* {
    if (subject.value.data == null) {
      loadPage().ignore();
    }
    yield* subject.stream
        .where((pagination) => pagination.data != null)
        .map((pagination) => pagination.data!)
        .distinct();
  }
}
