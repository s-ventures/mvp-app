import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class UploadContactBottomSheet {
  static void show({
    required BuildContext context,
    required VoidCallback onPressed,
  }) {
    showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      backgroundColor: context.color.backgroundLight200,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.only(
            top: AppSpacing.s5,
            left: AppSpacing.s5,
            right: AppSpacing.s5,
          ),
          decoration: ShapeDecoration(
            color: context.color.backgroundLight200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(context.radius.hard),
                topRight: Radius.circular(context.radius.hard),
              ),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                child: Container(
                  height: 5,
                  width: 80,
                  margin: const EdgeInsets.only(bottom: AppSpacing.s5),
                  decoration: ShapeDecoration(
                    color: context.color.neutralLight900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      context.loc.contactsUploadFilePageModalToSelectDocumentTitle,
                      style: context.textStyle.h6.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: IconSvg.medium(
                      IconAssets.xMark,
                      color: context.color.iconLight900,
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s5,
              const CustomDivider(),
              AppSpacing.vertical.s5,
              Container(
                decoration: ShapeDecoration(
                  color: context.color.backgroundLight0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.hard),
                    side: BorderSide(color: context.color.strokeLigth100),
                  ),
                ),
                child: Splash(
                  onPressed: () async => onPressed.call(),
                  borderRadius: BorderRadius.circular(context.radius.hard),
                  child: ListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: AppSpacing.s4,
                      horizontal: AppSpacing.s5,
                    ),
                    leading: IconWithContainer(
                      icon: IconAssets.file,
                      backgroundColor: context.color.backgroundLight200,
                      borderRadius: BorderRadius.circular(context.radius.soft),
                    ),
                    title: Text(
                      context.loc.commonDocument,
                      style: context.textStyle.bodySmallRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    trailing: IconSvg.small(
                      IconAssets.chevronRight,
                      color: context.color.iconLight900,
                    ),
                  ),
                ),
              ),
              AppSpacing.vertical.s8,
            ],
          ),
        );
      },
    );
  }
}
