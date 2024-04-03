import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/cards/detailed/detailed_card_controller.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:ui_kit/ui_kit.dart';

class CardDetails extends ConsumerStatefulWidget {
  const CardDetails(this.cardId, {super.key});

  final UniqueId cardId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CardDetailsState();
}

class _CardDetailsState extends ConsumerState<CardDetails> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(ref.read(detailedCardControllerProvider.notifier).init(widget.cardId));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final card = ref.watch(detailedCardControllerProvider).card;

    return card.when(
      data: (card) => CustomCard(
        child: Column(
          children: [
            Row(
              children: [
                IconWithContainer(
                  icon: IconAssets.user,
                  foreground: context.color.iconLight900,
                  backgroundColor: context.color.neutralLight100,
                ),
                AppSpacing.horizontal.s5,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombre del titular',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    Text(
                      card.cardName,
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            Row(
              children: [
                IconWithContainer(
                  icon: IconAssets.wallet,
                  foreground: context.color.iconLight900,
                  backgroundColor: context.color.neutralLight100,
                ),
                AppSpacing.horizontal.s5,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Número de tarjeta',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    Text(
                      ''.padLeft(3, '**** '),
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            Row(
              children: [
                IconWithContainer(
                  icon: IconAssets.calendar,
                  foreground: context.color.iconLight900,
                  backgroundColor: context.color.neutralLight100,
                ),
                AppSpacing.horizontal.s5,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fecha de caducidad',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    Text(
                      card.dueDate?.toString() ?? '',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            Row(
              children: [
                IconWithContainer(
                  icon: IconAssets.security,
                  foreground: context.color.iconLight900,
                  backgroundColor: context.color.neutralLight100,
                ),
                AppSpacing.horizontal.s5,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CVV',
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    Text(
                      card.cardEncryptedNumber,
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      error: (error, _) => Center(
        child: Text(
          error.toString(),
          style: context.textStyle.bodySmallRegular.copyWith(
            color: context.color.error,
          ),
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
