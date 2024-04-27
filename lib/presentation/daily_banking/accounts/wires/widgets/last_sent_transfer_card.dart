import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/simplified_sent_transfer.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class LastSentTransferCard extends StatelessWidget {
  const LastSentTransferCard({
    required this.sentTransfer,
    super.key,
  });

  final SimplifiedSentTransfer sentTransfer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.radius.soft),
        ),
      ),
      child: Splash(
        borderRadius: BorderRadius.circular(context.radius.soft),
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.s5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextAvatar(
                backgroundColor: context.color.neutralLight100,
                text: sentTransfer.beneficiaryName.initials,
                textStyle: context.textStyle.bodyMediumRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              AppSpacing.vertical.s5,
              Expanded(
                child: Text(
                  sentTransfer.beneficiaryName.secondWordInitial,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textStyle.bodySmallSemiBold.copyWith(
                    color: context.color.textLight900,
                  ),
                ),
              ),
              AppSpacing.vertical.s2,
              Expanded(
                child: Text(
                  sentTransfer.settlementAmount.toCurrency(plusSign: false),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
              ),
            ],
          ),
        ),
        onPressed: () => context.pushNamed(
          AppRoute.dailyBankingAccountTaxesDetails.name,
        ),
      ),
    );
  }
}
