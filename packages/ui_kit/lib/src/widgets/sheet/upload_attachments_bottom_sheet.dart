import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ui_kit/src/widgets/dialog/camera_access_denied_dialog.dart';
import 'package:ui_kit/src/widgets/dialog/file_access_denied_dialog.dart';
import 'package:ui_kit/src/widgets/dialog/gallery_access_denied_dialog.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

enum UploadOption {
  camera,
  gallery,
  document,
}

class UploadAttachmentsBottomSheet {
  static Future<void> show({
    required BuildContext context,
    required void Function(File file) onFileSelected,
    List<String> allowedExtensions = const [
      'doc',
      'docx',
      'html',
      'htm',
      'xls',
      'xlsx',
      'pdf',
      'gif',
      'jpg',
      'jpeg',
      'png',
    ],
    List<UploadOption> availableOptions = UploadOption.values,
  }) {
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
        _buildBody(
          modalSheetContext,
          pageIndexNotifier,
          availableOptions: availableOptions,
          onFileSelected: onFileSelected,
          allowedExtensions: allowedExtensions,
        ),
      ],
    );
  }

  static SliverWoltModalSheetPage _buildBody(
    BuildContext context,
    ValueNotifier<int> pageIndexNotifier, {
    required List<UploadOption> availableOptions,
    required void Function(File file) onFileSelected,
    required List<String> allowedExtensions,
  }) {
    Future<void> pickImage(ImageSource source) async {
      try {
        final file = await ImagePicker().pickImage(source: source);
        if (file == null) {
          return;
        }

        onFileSelected(File(file.path));

        if (context.mounted) {
          context.pop();
        }
      } on PlatformException catch (e) {
        // ignore: use_build_context_synchronously
        return onPermissionsException(context, e);
      }
    }

    Future<void> pickFile() async {
      try {
        final file = await FilePicker.platform.pickFiles(
          allowedExtensions: allowedExtensions,
          type: FileType.custom,
        );
        final filePath = file?.paths.first;

        if (filePath == null) {
          return;
        }

        onFileSelected(File(filePath));

        if (context.mounted) {
          context.pop();
        }
      } on PlatformException catch (e) {
        // ignore: use_build_context_synchronously
        return onPermissionsException(context, e);
      }
    }

    return SliverWoltModalSheetPage(
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
                  children: availableOptions
                      .map(
                        (option) => switch (option) {
                          UploadOption.camera => Splash(
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
                                onTap: () => pickImage(ImageSource.camera),
                              ),
                            ),
                          UploadOption.gallery => Splash(
                              child: ListTile(
                                title: const Text('Fotos'),
                                leading: IconWithContainer(
                                  icon: IconAssets.camera,
                                  backgroundColor: context.color.neutralLight100,
                                ),
                                trailing: IconSvg.small(IconAssets.chevronRight),
                                onTap: () => pickImage(ImageSource.gallery),
                              ),
                            ),
                          UploadOption.document => Splash(
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
                                onTap: pickFile,
                              ),
                            ),
                        },
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static Future<void> onPermissionsException(BuildContext context, PlatformException e) async {
    if (!context.mounted) {
      return;
    }

    switch (e.code) {
      case 'camera_access_denied':
      case 'camera_unavailable':
        return CameraAccessDeniedDialog.show(context);
      case 'gallery_access_denied':
        return GalleryAccessDeniedDialog.show(context);
      case 'file_access_denied':
        return FileAccessDeniedDialog.show(context);
      default:
    }
  }
}
