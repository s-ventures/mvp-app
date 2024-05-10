import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/sent_transfers/simplified/simplified_sent_transfers_controller.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/sent_transfers/widgets/sent_transfer_card.dart';
import 'package:ui_kit/ui_kit.dart';

class SentTransfersPage extends ConsumerStatefulWidget {
  const SentTransfersPage({super.key});

  @override
  ConsumerState<SentTransfersPage> createState() => _SentTransfersPageState();
}

class _SentTransfersPageState extends ConsumerState<SentTransfersPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(simplifiedSentTransfersControllerProvider.notifier).init(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sentTransfers = ref.watch(
      simplifiedSentTransfersControllerProvider
          .select((value) => value.sentTransfers),
    );

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Últimas transferencias',
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s5,
          ),
          children: [
            AppSpacing.vertical.s3,
            const FakeSearchBar(),
            AppSpacing.vertical.s5,
            sentTransfers.when(
              data: (sentTransfers) {
                return ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: sentTransfers.length,
                  itemBuilder: (context, index) {
                    final sentTransfer = sentTransfers[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: AppSpacing.s4,
                      ),
                      child: SentTransferCard(
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
              loading: () =>
                  const Center(child: CircularProgressIndicator.adaptive()),
            ),
          ],
        ),
      ),
    );
  }
}
