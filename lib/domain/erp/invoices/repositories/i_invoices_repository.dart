import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/erp/Invoices/failures/detailed_invoice_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice.dart';

// ignore: one_member_abstracts
abstract class IInvoicesRepository {
  Future<Either<DetailedInvoiceFailure, DetailedInvoice>> getDetailedInvoice({
    required int contractId,
    required int id,
  });
}
