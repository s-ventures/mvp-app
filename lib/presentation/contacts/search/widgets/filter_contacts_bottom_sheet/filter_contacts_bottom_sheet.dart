import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/search/widgets/favorite_contacts_list.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class FilterContactsBottomSheet {
  static Future<T?> show<T>({
    required BuildContext context,
    required Future<void> Function() onApply,
    required Future<void> Function() onReset,
  }) {
    final pageIndexNotifier = ValueNotifier(0);

    return WoltModalSheet.show(
      context: context,
      useRootNavigator: true,
      pageIndexNotifier: pageIndexNotifier,
      modalTypeBuilder: (context) => WoltModalType.bottomSheet,
      minPageHeight: 0,
      maxPageHeight: 0.99,
      onModalDismissedWithBarrierTap: () {
        onReset().then((_) => context.pop());
      },
      pageListBuilder: (modalSheetContext) => [
        _buildFilters(modalSheetContext, onApply, onReset),
      ],
    );
  }

  static SliverWoltModalSheetPage _buildFilters(
    BuildContext context,
    Future<void> Function() onApply,
    Future<void> Function() onReset,
  ) =>
      SliverWoltModalSheetPage(
        hasSabGradient: false,
        stickyActionBar: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                title: 'Descartar filtros',
                type: ButtonType.text,
                size: ButtonSize.small,
                onPressed: () async {
                  await onReset().then((_) => context.pop());
                },
              ),
              Button(
                title: 'Aplicar',
                size: ButtonSize.small,
                onPressed: () async {
                  await onApply().then((_) => context.pop());
                },
              ),
            ],
          ),
        ),
        backgroundColor: context.color.bottomSheetBackground,
        sabGradientColor: context.color.bottomSheetBackground,
        leadingNavBarWidget: Transform.translate(
          offset: const Offset(16, 24),
          child: Text(
            'Filtrar',
            style: context.textStyle.h6,
          ),
        ),
        isTopBarLayerAlwaysVisible: true,
        trailingNavBarWidget: IconButton(
          onPressed: () => context.pop(),
          icon: IconSvg.small(
            IconAssets.xMark,
            color: context.color.iconLight900,
          ),
        ),
        mainContentSlivers: [
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
              bottom: 80,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text(
                    'Nombre o razón social',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  const FakeSearchBar(),
                  AppSpacing.vertical.s5,
                  Text(
                    'Tipo',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  Row(
                    children: [
                      CustomChip(
                        title: Text(
                          'Cliente',
                          style: context.textStyle.bodySmallSemiBold.copyWith(
                            color: context.color.primaryLight300,
                          ),
                        ),
                        onSelected: print,
                      ),
                      AppSpacing.horizontal.s3,
                      CustomChip(
                        title: Text(
                          'Proveedor',
                          style: context.textStyle.bodySmallSemiBold.copyWith(
                            color: context.color.textLight0,
                          ),
                        ),
                        selected: true,
                        onSelected: print,
                      ),
                    ],
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Favoritos',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  const FakeSearchBar(),
                  AppSpacing.vertical.s3,
                  const FavoriteContactsList(
                    onPressed: print,
                    showTitle: false,
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Estado',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  Row(
                    children: [
                      CustomChip(
                        title: Text(
                          'Cobrado',
                          style: context.textStyle.bodySmallSemiBold.copyWith(
                            color: context.color.textLight0,
                          ),
                        ),
                        selected: true,
                        onSelected: print,
                      ),
                      AppSpacing.horizontal.s3,
                      CustomChip(
                        title: Text(
                          'Pendiente',
                          style: context.textStyle.bodySmallSemiBold.copyWith(
                            color: context.color.primaryLight300,
                          ),
                        ),
                        onSelected: print,
                      ),
                      AppSpacing.horizontal.s3,
                      CustomChip(
                        title: Text(
                          'Vencido',
                          style: context.textStyle.bodySmallSemiBold.copyWith(
                            color: context.color.primaryLight300,
                          ),
                        ),
                        onSelected: print,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
