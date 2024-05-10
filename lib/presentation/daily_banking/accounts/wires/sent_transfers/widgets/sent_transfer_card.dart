import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/simplified_sent_transfer.dart';
import 'package:manifiesto_mvp_app/presentation/routing/params.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class SentTransferCard extends StatelessWidget {
  const SentTransferCard({
    required this.sentTransfer,
    super.key,
  });

  final SimplifiedSentTransfer sentTransfer;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      contentPadding: const EdgeInsets.only(left: AppSpacing.s5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(context.radius.soft),
        ),
      ),
      leading: IconWithContainer(
        text: sentTransfer.beneficiaryName.initials,
        foreground: context.color.textLight900,
        backgroundColor: context.color.neutralLight100,
        subIcon: IconAssets.soon,
        textStyle: context.textStyle.bodyMediumRegular,
      ),
      title: Text(
        sentTransfer.beneficiaryName,
        style: context.textStyle.bodySmallRegular,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        sentTransfer.concept,
        style: context.textStyle.buttonTabBar
            .copyWith(color: context.color.textLight600),
      ),
      trailing: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Text(
          // TODO(georgeta): Check with BFMF if the amount should be returned as negative
          (sentTransfer.settlementAmount * -1).toCurrency(),
          style: context.textStyle.bodySmallRegular.copyWith(
            color: context.color.textLight300,
          ),
        ),
      ),
      onTap: () => context.pushNamed(
        AppRoute.dailyBankingTransfersSentDetails.name,
        extra: TransferSentDetailsRouteParams(
          sentTransferId: sentTransfer.id.toInt(),
        ),
      ),
    );
  }
}
