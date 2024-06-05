import 'package:manifiesto_mvp_app/infrastructure/core/dtos/overview_segment_period_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/invoices/invoices_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/detailed_invoice_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/invoice_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/invoice_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/overview_invoices_dto.dart';

class InvoicesRemoteDataSource {
  InvoicesRemoteDataSource(this._restClient);

  final InvoicesRestClient _restClient;

  Future<PaginatedResponse<InvoiceDto>> getInvoices({
    required InvoiceFilterDto filterDto,
    required int erpContractId,
  }) {
    try {
      return _restClient.getInvoices(
        filter: filterDto,
        erpContractId: erpContractId,
      );
    } catch (_) {
      rethrow;
    }
  }

  Future<DetailedInvoiceDto> getDetailedInvoice({
    required int contractId,
    required int id,
  }) async {
    try {
      final response = await _restClient.getDetailedInvoice(
        contractId: contractId,
        id: id,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }

  Future<OverviewInvoicesDto> getOverviewInvoices({
    required int erpContractId,
    required OverviewSegmentPeriodDto segmentPeriod,
  }) async {
    try {
      final response = await _restClient.getOverviewInvoices(
        erpContractId: erpContractId,
        segmentPeriod: segmentPeriod,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }
}
