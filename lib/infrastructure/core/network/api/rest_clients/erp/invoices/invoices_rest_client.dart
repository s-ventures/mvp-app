import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/detailed_invoice_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'invoices_rest_client.g.dart';

final invoicesRestClientProvider = Provider<InvoicesRestClient>(
  (ref) => InvoicesRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class InvoicesRestClient {
  factory InvoicesRestClient(Dio dio) = _InvoicesRestClient;

  @GET('/erp/invoices/v1/{erpContractId}/{invoicesId}')
  Future<DetailedInvoiceDto> getDetailedInvoice({
    @Path('erpContractId') required int erpContractId,
    @Path('invoiceId') required int invoiceId,
  });
}
