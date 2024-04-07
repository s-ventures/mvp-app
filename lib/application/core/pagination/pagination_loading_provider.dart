import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/stream_extensions.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_repository.dart';
import 'package:rxdart/rxdart.dart';

mixin PaginationLoadingProvider<T> {
  final CompositeSubscription _subscriptions = CompositeSubscription();
  final PublishSubject<void> _loadNextPageSubject = PublishSubject();

  PaginationRepository<T>? _source;

  int get page => _source?.page ?? 0;

  void initPagination(
    PaginationRepository<T> source, {
    required void Function(AsyncValue<T>) onDataLoaded,
    void Function({required bool isDataLoaded})? onNextPageLoaded,
    void Function(Object)? onDataLoadingError,
    void Function()? onDataLoading,
  }) {
    _source = source;

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
      return source.loadNextPage().asStream();
    }).doOnData((dataLoaded) {
      onNextPageLoaded?.call(isDataLoaded: dataLoaded);
    }).listenSafe(_subscriptions);
  }

  void loadNextPage() {
    _loadNextPageSubject.add(null);
  }

  Future<void> refresh() {
    return _source?.refresh() ?? Future.value();
  }

  Future<void>? disposePagination() {
    return _subscriptions.dispose();
  }
}
