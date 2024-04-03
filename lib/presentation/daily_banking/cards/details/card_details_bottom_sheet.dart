import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/cards/details/widgets/card_details.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class CardDetailsBottomSheet {
  static Future<T?> show<T>({
    required BuildContext context,
    required UniqueId cardId,
  }) {
    final pageIndexNotifier = ValueNotifier(0);

    return WoltModalSheet.show(
      context: context,
      useRootNavigator: true,
      pageIndexNotifier: pageIndexNotifier,
      modalTypeBuilder: (context) => WoltModalType.bottomSheet,
      minPageHeight: 0,
      maxPageHeight: 0.99,
      onModalDismissedWithBarrierTap: () => context.pop(),
      pageListBuilder: (modalSheetContext) => [
        _buildDetails(modalSheetContext, pageIndexNotifier, cardId),
      ],
    );
  }

  static SliverWoltModalSheetPage _buildDetails(
    BuildContext context,
    ValueNotifier<int> pageIndexNotifier,
    UniqueId cardId,
  ) {
    return SliverWoltModalSheetPage(
      hasSabGradient: false,
      backgroundColor: context.color.bottomSheetBackground,
      sabGradientColor: context.color.bottomSheetBackground,
      leadingNavBarWidget: Transform.translate(
        offset: const Offset(16, 24),
        child: Text(
          'Detalles de tarjeta',
          style: context.textStyle.h6,
        ),
      ),
      isTopBarLayerAlwaysVisible: true,
      trailingNavBarWidget: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: IconSvg.small(
          IconAssets.xMark,
          color: context.color.iconLight900,
        ),
      ),
      mainContentSlivers: [
        SliverPadding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 80),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                CardDetails(cardId),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
