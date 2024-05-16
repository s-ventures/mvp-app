import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/national_transfers/widgets/schedule_repeat_options_list.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class ScheduleTransferBottomSheet {
  static Future<T?> show<T>({
    required BuildContext context,
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
        _buildDetails(modalSheetContext, pageIndexNotifier),
        _buildRepeats(modalSheetContext, pageIndexNotifier),
      ],
    );
  }

  static SliverWoltModalSheetPage _buildDetails(
    BuildContext context,
    ValueNotifier<int> pageIndexNotifier,
  ) {
    return SliverWoltModalSheetPage(
      hasSabGradient: false,
      backgroundColor: context.color.bottomSheetBackground,
      sabGradientColor: context.color.bottomSheetBackground,
      leadingNavBarWidget: Transform.translate(
        offset: const Offset(16, 24),
        child: Text(
          context.loc.dailyBankingNationalTransfersScheduledModalTitle,
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
          padding: const EdgeInsets.all(
            AppSpacing.s5,
          ),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  decoration: BoxDecoration(
                    color: context.color.backgroundLight0,
                    borderRadius: BorderRadius.circular(context.radius.soft),
                    border: Border.all(
                      color: context.color.strokeLigth100,
                    ),
                  ),
                  child: Splash(
                    child: ListTile(
                      dense: true,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(context.radius.soft),
                      ),
                      title: Text(
                        context.loc
                            .dailyBankingNationalTransfersScheduledModalStartDate,
                        style: context.textStyle.bodySmallSemiBold.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      subtitle: Text(
                        '12 Enero 2024',
                        style: context.textStyle.bodyMediumRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      trailing: IconSvg.medium(IconAssets.calendar),
                      onTap: () async {
                        await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime.now(),
                        );
                      },
                    ),
                  ),
                ),
                AppSpacing.vertical.s5,
                Container(
                  decoration: BoxDecoration(
                    color: context.color.backgroundLight0,
                    borderRadius: BorderRadius.circular(context.radius.soft),
                    border: Border.all(
                      color: context.color.strokeLigth100,
                    ),
                  ),
                  child: Splash(
                    child: ListTile(
                      dense: true,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(context.radius.soft),
                      ),
                      title: Text(
                        context.loc
                            .dailyBankingNationalTransfersScheduledModalRepeat,
                        style: context.textStyle.bodySmallSemiBold.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      subtitle: Text(
                        'Nunca',
                        style: context.textStyle.bodyMediumRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      trailing: IconSvg.medium(IconAssets.chevronRight),
                      onTap: () async {
                        pageIndexNotifier.value = 1;
                      },
                    ),
                  ),
                ),
                AppSpacing.vertical.s5,
                Button(
                  title: context
                      .loc.dailyBankingNationalTransfersScheduledModalButton,
                  size: ButtonSize.small,
                  expand: true,
                  onPressed: () async {
                    context.pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static const List<Map<String, dynamic>> repeatOptions = [
    {
      'title': 'Nunca',
      'value': 'Nunca',
    },
    {
      'title': 'Diariamente',
      'value': 'Diariamente',
    },
    {
      'title': 'Semanalmente',
      'value': 'Semanalmente',
    },
    {
      'title': 'Cada 2 semanas',
      'value': 'Cada 2 semanas',
    },
    {
      'title': 'Mensualmente',
      'value': 'Mensualmente',
    },
  ];

  static SliverWoltModalSheetPage _buildRepeats(
    BuildContext context,
    ValueNotifier<int> pageIndexNotifier,
  ) {
    return SliverWoltModalSheetPage(
      hasSabGradient: false,
      backgroundColor: context.color.bottomSheetBackground,
      sabGradientColor: context.color.bottomSheetBackground,
      leadingNavBarWidget: IconButton(
        onPressed: () {
          pageIndexNotifier.value = 0;
        },
        icon: IconSvg.small(
          IconAssets.chevronLeft,
          color: context.color.iconLight900,
        ),
      ),
      topBarTitle: Text(
        'Repetir',
        style: context.textStyle.h6,
      ),
      isTopBarLayerAlwaysVisible: true,
      trailingNavBarWidget: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
          pageIndexNotifier.value = 0;
        },
        icon: IconSvg.small(
          IconAssets.xMark,
          color: context.color.iconLight900,
        ),
      ),
      mainContentSlivers: [
        SliverPadding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 80),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                ScheduleRepeatOptionList(
                  options: repeatOptions,
                  groupValue: 'Nunca',
                  onPressed: (value) => pageIndexNotifier.value = 0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
