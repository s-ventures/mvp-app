import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/overview_segment_period_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/invoice_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/invoice_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/overview_invoices_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'invoices_rest_client.g.dart';

final invoicesRestClientProvider = Provider<InvoicesRestClient>((ref) {
  return InvoicesRestClient(ref.watch(dioProvider));
});

@RestApi()
abstract class InvoicesRestClient {
  factory InvoicesRestClient(Dio dio) = _InvoicesRestClient;

  @GET('/erp/invoices/v1/{erpContractId}/query')
  Future<PaginatedResponse<InvoiceDto>> getInvoices({
    @Path('erpContractId') required int erpContractId,
    @Query('') required InvoiceFilterDto filter,
  });

  @GET('erp/invoices/v1/overview')
  Future<OverviewInvoicesDto> getOverviewInvoices({
    @Path('erpContractId') required int erpContractId,
    @Query('segmentPeriod') required OverviewSegmentPeriodDto segmentPeriod,
  });
}
