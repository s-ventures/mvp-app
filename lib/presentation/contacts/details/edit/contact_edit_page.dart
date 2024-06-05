import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ContactEdit extends StatelessWidget {
  const ContactEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: context.loc.contactsEditPageTitle,
              leading: Button(
                icon: IconAssets.chevronLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.save,
                  size: ButtonSize.extraSmall,
                  onPressed: () async => context.goNamed(
                    AppRoute.contactDetails.name,
                  ),
                ),
              ],
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomChip(
                    title: Text(
                      context.loc.commonClient,
                      style: context.textStyle.bodySmallSemiBold.copyWith(
                        color: context.color.primaryLight300,
                      ),
                    ),
                    onSelected: print,
                    isExpanded: true,
                  ),
                ),
                AppSpacing.horizontal.s3,
                Expanded(
                  child: CustomChip(
                    title: Text(
                      context.loc.commonSupplier,
                      style: context.textStyle.bodySmallSemiBold.copyWith(
                        color: context.color.textLight0,
                      ),
                    ),
                    selected: true,
                    onSelected: print,
                    isExpanded: true,
                  ),
                ),
              ],
            ),
            AppSpacing.vertical.s6,
            Text(
              context.loc.commonTaxInformation,
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: context.loc.commonNameOrCompanyName,
              controller: TextEditingController(
                text: 'Alberto Rodriguez',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: context.loc.commonCifOrNif,
              controller: TextEditingController(
                text: '12345678A',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: context.loc.commonAddress,
              controller: TextEditingController(
                text: 'C/Guzmán el Bueno, 56',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: context.loc.commonAddressExtraInfo,
              controller: TextEditingController(text: '2C'),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: context.loc.commonPostalCode,
              controller: TextEditingController(text: '28015'),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: context.loc.commonCity,
              controller: TextEditingController(
                text: 'Madrid',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: context.loc.commonCountry,
              controller: TextEditingController(
                text: 'España',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s6,
            Text(
              context.loc.contactsEditPageContactInfo,
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: context.loc.commonEmail,
              controller: TextEditingController(
                text: 'alberto.rodriguez@gmail.com',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: context.loc.commonPhone,
              controller: TextEditingController(
                text: '+34 654 789 654',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: context.loc.commonNotes,
              controller: TextEditingController(
                text: 'Notas',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s6,
            Text(
              context.loc.commonBankingInformation,
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: context.loc.commonIban,
              controller: TextEditingController(
                text: 'ES12 1234 1234 12 1234567890',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: context.loc.commonBicSwift,
              controller: TextEditingController(
                text: 'UCJAES2M',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s6,
            Text(
              context.loc.commonCommunicationPreferences,
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            OutlinedList(
              children: [
                CustomCheckboxListTile(
                  title: context.loc.commonPhone,
                  value: true,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(context.radius.checkboxSmall),
                    topRight: Radius.circular(context.radius.checkboxSmall),
                  ),
                  onPressed: print,
                ),
                CustomCheckboxListTile(
                  title: context.loc.commonSms,
                  value: true,
                  onPressed: print,
                ),
                CustomCheckboxListTile(
                  title: context.loc.commonEmail,
                  onPressed: print,
                ),
                CustomCheckboxListTile(
                  title: context.loc.commonWhatsapp,
                  value: true,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(context.radius.checkboxSmall),
                    bottomRight: Radius.circular(context.radius.checkboxSmall),
                  ),
                  onPressed: print,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.s5),
          child: Button(
            title: context.loc.contactsDetailsDeleteContactButton,
            size: ButtonSize.small,
            foreground: context.color.statusError,
            background: context.color.statusError.withOpacity(.1),
            onPressed: () async => AlertBottomSheet.show(
              context: context,
              icon: IconAssets.trash,
              title: context.loc.contactsDetailsDeleteContactModalTitle,
              message: context.loc.contactsDetailsDeleteContactModalDescription,
              buttonOkText: context.loc.contactsDetailsDeleteContactButton,
              buttonOkBackground: context.color.statusError.withOpacity(.1),
              buttonOkForeground: context.color.statusError,
              onOkPressed: () async {
                context.goNamed(AppRoute.contacts.name);
              },
              buttonCancelText: context.loc.commonCancel,
              buttonCancelType: ButtonType.text,
              onCancelPressed: () => context.pop(),
              buttonsOrientation: AlertButtonsOrientation.vertical,
            ),
          ),
        ),
      ),
    );
  }
}
