import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/sent_transfers/simplified/simplified_sent_transfers_controller.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/sent_transfers/widgets/last_sent_transfer_card.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class LastSentTransfers extends ConsumerStatefulWidget {
  const LastSentTransfers({super.key});

  @override
  ConsumerState<LastSentTransfers> createState() => _LastSentTransfersState();
}

class _LastSentTransfersState extends ConsumerState<LastSentTransfers> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(simplifiedSentTransfersControllerProvider.notifier).initLastSentTransfers(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sentTransfers = ref.watch(
      simplifiedSentTransfersControllerProvider.select((value) => value.lastSentTransfers),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Últimas transferencias',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            Button(
              title: 'Ver todas',
              type: ButtonType.text,
              size: ButtonSize.small,
              outlineColor: context.color.tertiaryLight800,
              textColor: const Color(0xFF5494FF),
              horizontalPadding: 0,
              onPressed: () => context.pushNamed(AppRoute.dailyBankingTransfersSent.name),
            ),
          ],
        ),
        AppSpacing.vertical.s3,
        SizedBox(
          height: 128,
          child: sentTransfers.when(
            data: (lastSentTransfers) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: lastSentTransfers.length,
                itemBuilder: (context, index) {
                  final sentTransfer = lastSentTransfers[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: AppSpacing.s5),
                    child: LastSentTransferCard(
                      sentTransfer: sentTransfer,
                    ),
                  );
                },
              );
            },
            error: (error, _) => Center(
              child: Text(
                error.toString(),
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.error,
                ),
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator.adaptive()),
          ),
        ),
      ],
    );
  }
}
