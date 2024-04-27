import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class FilterClaimsBottomSheet {
  static Future<void> show({required BuildContext context}) {
    final pageIndexNotifier = ValueNotifier(0);

    return WoltModalSheet.show(
      context: context,
      useRootNavigator: true,
      pageIndexNotifier: pageIndexNotifier,
      modalTypeBuilder: (context) => WoltModalType.bottomSheet,
      useSafeArea: false,
      minPageHeight: 0,
      maxPageHeight: 0.99,
      onModalDismissedWithBarrierTap: () => context.pop(),
      pageListBuilder: (modalSheetContext) => [
        _buildFilters(modalSheetContext, pageIndexNotifier),
        _buildCategories(modalSheetContext, pageIndexNotifier),
      ],
    );
  }

  static SliverWoltModalSheetPage _buildFilters(
    BuildContext context,
    ValueNotifier<int> pageIndexNotifier,
  ) =>
      SliverWoltModalSheetPage(
        hasSabGradient: false,
        stickyActionBar: Padding(
          padding: const EdgeInsets.only(
            top: AppSpacing.s5,
            left: AppSpacing.s5,
            right: AppSpacing.s5,
            bottom: AppSpacing.s7,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                title: 'Descartar filtros',
                type: ButtonType.text,
                size: ButtonSize.small,
                onPressed: () async {},
              ),
              Button(
                title: 'Aplicar',
                size: ButtonSize.small,
                onPressed: () async => context.pushNamed(
                  AppRoute.dailyBankingInsuranceClaimsList.name,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: context.color.bottomSheetBackground,
        sabGradientColor: context.color.bottomSheetBackground,
        topBarTitle: Text(
          'Filtrar',
          style: context.textStyle.h6,
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
            padding: const EdgeInsets.only(
              left: AppSpacing.s5,
              right: AppSpacing.s5,
              top: AppSpacing.s5,
              bottom: 96,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fecha',
                        style: context.textStyle.bodyMediumSemiBold.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      AppSpacing.vertical.s2,
                      DateRangeListTile(
                        startDate: DateFormat('dd/MM/yyyy').format(
                          DateTime.now().subtract(
                            const Duration(days: 30),
                          ),
                        ),
                        endDate: DateFormat('dd/MM/yyyy').format(
                          DateTime.now(),
                        ),
                      ),
                      AppSpacing.vertical.s5,
                    ],
                  ),
                  Text(
                    'Ramo',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  OutlinedList(
                    borderColor: context.color.strokeLigth200,
                    children: [
                      CategoryListTile(
                        leadingEmoji: '⚡️',
                        leadingBackgroundColor: const Color(0xFFFFF2E0),
                        borderRadius: BorderRadius.circular(
                          context.radius.soft,
                        ),
                        title: 'Energía',
                        trailing: IconSvg.small(
                          IconAssets.chevronRight,
                          color: context.color.iconLight600,
                        ),
                        onTap: () {
                          pageIndexNotifier.value = 1;
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  static SliverWoltModalSheetPage _buildCategories(
    BuildContext context,
    ValueNotifier<int> pageIndexNotifier,
  ) =>
      SliverWoltModalSheetPage(
        hasSabGradient: false,
        stickyActionBar: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                title: 'Cancelar',
                type: ButtonType.text,
                size: ButtonSize.small,
                onPressed: () async {},
              ),
              Button(
                title: 'Seleccionar',
                size: ButtonSize.small,
                onPressed: () async {
                  pageIndexNotifier.value = 0;
                },
              ),
            ],
          ),
        ),
        leadingNavBarWidget: IconButton(
          onPressed: () {
            pageIndexNotifier.value = 0;
          },
          icon: IconSvg.small(
            IconAssets.chevronLeft,
            color: context.color.iconLight900,
          ),
        ),
        backgroundColor: context.color.bottomSheetBackground,
        sabGradientColor: context.color.bottomSheetBackground,
        topBarTitle: Text(
          'Categoría',
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
            padding: const EdgeInsets.only(
              left: AppSpacing.s5,
              right: AppSpacing.s5,
              top: AppSpacing.s5,
              bottom: 80,
            ),
            sliver: SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: context.color.backgroundLight0,
                  borderRadius: BorderRadius.circular(context.radius.soft),
                  border: Border.all(
                    color: context.color.strokeLigth100,
                  ),
                ),
                child: OutlinedList(
                  borderColor: context.color.strokeLigth200,
                  children: [
                    CategoryListTile(
                      leadingEmoji: '🎮',
                      leadingBackgroundColor: const Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(context.radius.soft),
                        topRight: Radius.circular(context.radius.soft),
                      ),
                      title: 'Entretenimiento',
                      onTap: () {},
                    ),
                    CategoryListTile(
                      leadingEmoji: '🍔',
                      leadingBackgroundColor: const Color(0xFFFFF2E0),
                      title: 'Comida',
                      onTap: () {},
                    ),
                    CategoryListTile(
                      leadingEmoji: '🚗',
                      leadingBackgroundColor: const Color(0xFFFEC5C4),
                      title: 'Transporte',
                      onTap: () {},
                    ),
                    CategoryListTile(
                      leadingEmoji: '🏠',
                      leadingBackgroundColor: const Color(0xFFF8EEDD),
                      title: 'Hogar',
                      onTap: () {},
                    ),
                    CategoryListTile(
                      leadingEmoji: '🎉',
                      leadingBackgroundColor: const Color(0xFFDDEBFC),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(context.radius.soft),
                        bottomRight: Radius.circular(context.radius.soft),
                      ),
                      title: 'Fiesta',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}
