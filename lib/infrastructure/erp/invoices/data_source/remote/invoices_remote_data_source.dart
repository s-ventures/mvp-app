import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/invoices/invoices_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/detailed_invoice_dto.dart';

class InvoicesRemoteDataSource {
  InvoicesRemoteDataSource(this._restClient);

  final InvoicesRestClient _restClient;

  Future<DetailedInvoiceDto> getDetailedInvoice({
    required int erpContractId,
    required int invoiceId,
  }) async {
    try {
      final response = await _restClient.getDetailedInvoice(
        erpContractId: erpContractId,
        invoiceId: invoiceId,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }
}
