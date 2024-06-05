import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ContactsDocumentListPage extends StatelessWidget {
  const ContactsDocumentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: context.loc.contactsUploadFilePageTitle,
              leading: Button(
                icon: IconAssets.chevronLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.user,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async {},
                ),
              ],
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            Text(
              context.loc.contactsUploadFilePageDescription,
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s6,
            Text(
              context.loc.contactsUploadFilePageTemplateImportingContacts,
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            Splash(
              borderRadius: BorderRadius.circular(
                context.radius.soft,
              ),
              child: ListTile(
                dense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.s4,
                  vertical: AppSpacing.s3,
                ),
                tileColor: context.color.backgroundLight0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    context.radius.soft,
                  ),
                ),
                title: Text(
                  context.loc.contactsUploadFilePageTemplate,
                  style: context.textStyle.bodySmallRegular,
                ),
                leading: IconWithContainer(
                  icon: IconAssets.document,
                  backgroundColor: context.color.backgroundLight200,
                ),
                trailing: IconSvg.small(
                  IconAssets.download,
                ),
              ),
            ),
            AppSpacing.vertical.s6,
            Text(
              context.loc.contactsUploadFilePageSelectedFile,
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            ListTile(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s5,
                vertical: AppSpacing.s1,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(context.radius.soft),
                side: BorderSide(
                  color: context.color.strokeLigth100,
                ),
              ),
              tileColor: context.color.backgroundLight0,
              leading: IconWithContainer(
                icon: IconAssets.user,
                backgroundColor: context.color.backgroundLight200,
              ),
              title: Text(
                'Plantilla.xlsx',
                style: context.textStyle.bodyMediumRegular,
              ),
              subtitle: Text(
                '28/11/23 - 100 KB',
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              trailing: IconSvg.small(IconAssets.xMark),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s5,
          ),
          child: Button(
            title: context.loc.contactsUploadFilePageUploadFileButton,
            size: ButtonSize.small,
            onPressed: () async => AlertBottomSheet.show(
              context: context,
              icon: IconAssets.check,
              title: context.loc.contactsUploadFilePageModalToSelectDocumentSuccessTitle,
              message: context.loc.contactsUploadFilePageModalToSelectDocumentSuccessDescription,
              buttonOkText: context.loc.commonContinue,
              onOkPressed: () => context.goNamed(AppRoute.contacts.name),
            ),
          ),
        ),
      ),
    );
  }
}
