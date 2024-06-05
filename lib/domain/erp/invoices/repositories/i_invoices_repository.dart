import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/overview_segment_period.dart';
import 'package:manifiesto_mvp_app/domain/erp/Invoices/failures/detailed_invoice_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/overview_invoices.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/failures/invoice_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/failures/overview_invoices_failure.dart';

abstract class IInvoicesRepository {
  Future<Either<InvoiceFailure, List<Invoice>>> getInvoices({
    required int erpContractId,
    required InvoiceFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });

  Future<Either<OverviewInvoicesFailure, OverviewInvoices>> getOverviewInvoices({
    required int erpContractId,
    required OverviewSegmentPeriod segmentPeriod,
  });

  Future<Either<DetailedInvoiceFailure, DetailedInvoice>> getDetailedInvoice({
    required int contractId,
    required int id,
  });
}
