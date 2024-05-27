// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_transactions_rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _AccountTransactionsRestClient implements AccountTransactionsRestClient {
  _AccountTransactionsRestClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<PaginatedResponse<DateAccountTransactionsDto>>
      getSimplifiedAccountTransactions(
          {required AccountTransactionsFilterDto filter}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'': filter.toJson()};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PaginatedResponse<DateAccountTransactionsDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/accounts/v1/query/transactions',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = PaginatedResponse<DateAccountTransactionsDto>.fromJson(
      _result.data!,
      (json) =>
          DateAccountTransactionsDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DetailedAccountTransactionDto> getDetailedAccountTransaction({
    required String accountId,
    required String transactionId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DetailedAccountTransactionDto>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/accounts/v1/${accountId}/transactions/${transactionId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = DetailedAccountTransactionDto.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FileAttachmentDto> uploadFileAttachmentForTransaction({
    required String accountId,
    required String transactionId,
    required FileAttachmentUploadRequestDto body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<FileAttachmentDto>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/accounts/v1/${accountId}/transactions/${transactionId}/attachments',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = FileAttachmentDto.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> removeFileAttachmentFromTransaction({
    required String accountId,
    required String transactionId,
    required String fileId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/accounts/v1/${accountId}/transactions/${transactionId}/attachments/${fileId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
