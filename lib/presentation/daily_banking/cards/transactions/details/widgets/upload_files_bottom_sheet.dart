import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class CardUploadFilesBottomSheet {
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
      ],
    );
  }

  static SliverWoltModalSheetPage _buildFilters(
    BuildContext context,
    ValueNotifier<int> pageIndexNotifier,
  ) =>
      SliverWoltModalSheetPage(
        hasSabGradient: false,
        backgroundColor: context.color.bottomSheetBackground,
        sabGradientColor: context.color.bottomSheetBackground,
        leadingNavBarWidget: Transform.translate(
          offset: const Offset(16, 24),
          child: Text(
            'Subir archivos',
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
            padding: const EdgeInsets.only(
              left: AppSpacing.s5,
              right: AppSpacing.s5,
              top: AppSpacing.s5,
              bottom: AppSpacing.s8,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  OutlinedList(
                    children: [
                      Splash(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(context.radius.soft),
                          topRight: Radius.circular(context.radius.soft),
                        ),
                        child: ListTile(
                          title: const Text('Escanear'),
                          leading: IconWithContainer(
                            icon: IconAssets.scan,
                            backgroundColor: context.color.neutralLight100,
                          ),
                          trailing: IconSvg.small(IconAssets.chevronRight),
                        ),
                      ),
                      Splash(
                        child: ListTile(
                          title: const Text('Fotos'),
                          leading: IconWithContainer(
                            icon: IconAssets.camera,
                            backgroundColor: context.color.neutralLight100,
                          ),
                          trailing: IconSvg.small(IconAssets.chevronRight),
                        ),
                      ),
                      Splash(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(context.radius.soft),
                          bottomRight: Radius.circular(context.radius.soft),
                        ),
                        child: ListTile(
                          title: const Text('Documento'),
                          leading: IconWithContainer(
                            icon: IconAssets.document,
                            backgroundColor: context.color.neutralLight100,
                          ),
                          trailing: IconSvg.small(IconAssets.chevronRight),
                        ),
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
