import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/overview_segment_period.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/overview_invoices.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/failures/invoice_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/failures/overview_invoices_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/repositories/i_invoices_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/invoices/invoices_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/data_sources/invoices_remote_data_sources.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/invoice_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/invoice_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/overview_invoices_dto.dart';

final invoicesRepositoryProvider = Provider<InvoicesRepository>(
  (ref) => InvoicesRepository(
    remoteDataSource: InvoicesRemoteDataSource(
      ref.watch(invoicesRestClientProvider),
    ),
  ),
);

class InvoicesRepository implements IInvoicesRepository {
  InvoicesRepository({
    required InvoicesRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final InvoicesRemoteDataSource _remoteDataSource;

  @override
  Future<Either<InvoiceFailure, List<Invoice>>> getInvoices({
    required int erpContractId,
    required InvoiceFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  }) async {
    final filterDto = InvoiceFilterDto.fromDomain(
      filter: filter,
      pageSize: pageSize,
      pageNumber: page,
    );
    try {
      final response = await _remoteDataSource.getInvoices(
        filterDto: filterDto,
        erpContractId: erpContractId,
      );
      onPaginationInfo?.call(response.totalPages, response.totalElements);
      final invoices = response.data.map((e) => e.toDomain()).toList();
      return right(invoices);
    } catch (_) {
      return left(const InvoiceFailure.unexpected());
    }
  }

  @override
  Future<Either<OverviewInvoicesFailure, OverviewInvoices>> getOverviewInvoices({
    required int erpContractId,
    required OverviewSegmentPeriod segmentPeriod,
  }) async {
    try {
      final response = await _remoteDataSource.getOverviewInvoices(
        erpContractId: erpContractId,
        segmentPeriod: segmentPeriod.toDto(),
      );
      final overview = response.toDomain();
      return right(overview);
    } catch (_) {
      return left(const OverviewInvoicesFailure.unexpected());
    }
  }
}
