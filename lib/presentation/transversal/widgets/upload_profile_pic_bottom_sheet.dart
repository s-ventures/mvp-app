import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class UploadProfilePicBottomSheet {
  static Future<T?> show<T>({
    required BuildContext context,
    required VoidCallback handleCamera,
    required VoidCallback handleGallery,
  }) {
    final pageIndexNotifier = ValueNotifier(0);

    return WoltModalSheet.show(
      context: context,
      useRootNavigator: true,
      pageIndexNotifier: pageIndexNotifier,
      modalTypeBuilder: (context) => WoltModalType.bottomSheet,
      minPageHeight: 0,
      maxPageHeight: 0.99,
      pageListBuilder: (modalSheetContext) => [
        _buildFilters(modalSheetContext, handleCamera, handleGallery),
      ],
    );
  }

  static SliverWoltModalSheetPage _buildFilters(
    BuildContext context,
    VoidCallback handleCamera,
    VoidCallback handleGallery,
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
                  OutlinedList(
                    children: [
                      Splash(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        onPressed: () async {
                          handleCamera.call();
                          Navigator.of(context).pop();
                        },
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.s4,
                            vertical: AppSpacing.s3,
                          ),
                          leading: IconWithContainer(
                            icon: IconAssets.camera,
                            backgroundColor: context.color.neutralLight100,
                          ),
                          title: Text(
                            'Fotos',
                            style: context.textStyle.bodySmallRegular,
                          ),
                          trailing: IconSvg.small(
                            IconAssets.chevronRight,
                          ),
                        ),
                      ),
                      Splash(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        onPressed: () async {
                          handleGallery.call();
                          Navigator.of(context).pop();
                        },
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.s4,
                            vertical: AppSpacing.s3,
                          ),
                          leading: IconWithContainer(
                            icon: IconAssets.image,
                            backgroundColor: context.color.neutralLight100,
                          ),
                          title: Text(
                            'Galería',
                            style: context.textStyle.bodySmallRegular,
                          ),
                          trailing: IconSvg.small(
                            IconAssets.chevronRight,
                          ),
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
