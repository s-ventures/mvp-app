import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/erp/Invoices/failures/detailed_invoice_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/repositories/i_invoices_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/invoices/invoices_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/data_source/remote/invoices_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/detailed_invoice_dto.dart';

final invoicesRepositoryProvider = Provider<InvoicesRepository>(
  (ref) => InvoicesRepository(
    remoteDataSource: InvoicesRemoteDataSource(
      ref.watch(
        invoicesRestClientProvider,
      ),
    ),
  ),
);

class InvoicesRepository implements IInvoicesRepository {
  InvoicesRepository({
    required InvoicesRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final InvoicesRemoteDataSource _remoteDataSource;

  @override
  Future<Either<DetailedInvoiceFailure, DetailedInvoice>> getDetailedInvoice({
    required int contractId,
    required int id,
  }) async {
    try {
      final response = await _remoteDataSource.getDetailedInvoice(
        contractId: contractId,
        id: id,
      );

      final invoice = response.toDomain();
      return right(invoice);
    } catch (_) {
      return left(const DetailedInvoiceFailure.unexpected());
    }
  }
}
