import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/async/stream_extensions.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/filtered_pagination_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/pagination_filter.dart';
import 'package:rxdart/rxdart.dart';

mixin FilteredPaginationLoadingProvider<T, F extends PaginationFilter> {
  final CompositeSubscription _subscriptions = CompositeSubscription();
  final PublishSubject<void> _loadNextPageSubject = PublishSubject();

  FilteredPaginationRepository<T, F>? _source;
  F? _filter;

  int get page => _source?.page ?? 0;

  void initPagination(
    FilteredPaginationRepository<T, F> source, {
    required void Function(AsyncValue<T>) onDataLoaded,
    void Function({required bool isDataLoaded})? onNextPageLoaded,
    void Function(Object)? onDataLoadingError,
    void Function()? onDataLoading,
    F? initialFilter,
  }) {
    _source = source;
    _filter = initialFilter;

    source
        .observe()
        .doOnError((error, stack) {
          onDataLoadingError?.call(error);
        })
        .toAsyncValue()
        .listenSafe(
          _subscriptions,
          onData: (data) {
            if (data.value != null) {
              onDataLoaded(data);
            }
          },
        );

    _loadNextPageSubject.exhaustMap((_) {
      onDataLoading?.call();
      return source.loadNextPage(filter: _filter).asStream();
    }).doOnData((dataLoaded) {
      onNextPageLoaded?.call(isDataLoaded: dataLoaded);
    }).listenSafe(_subscriptions);
  }

  Future<void> refresh() {
    return _source?.refresh() ?? Future.value();
  }

  void loadNextPage() {
    _loadNextPageSubject.add(null);
  }

  Future<void>? disposePagination() {
    return _subscriptions.dispose();
  }

  Future<void> updateFilter(F filter) async {
    _filter = filter;
    await refresh();
  }
}
