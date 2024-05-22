import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class ContactDetailsProfileTab extends StatelessWidget {
  const ContactDetailsProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.s5),
      children: [
        OutlinedList(
          children: [
            ContactListTile(
              name: 'Juan Carlos',
              leading: IconWithContainer(
                text: 'JC',
                foreground: context.color.textLight900,
                backgroundColor: context.color.neutralLight100,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  context.radius.soft,
                ),
              ),
              nif: '12345678A',
              type: context.loc.commonClient,
              typeForegroundColor: context.color.customerForeground,
              typeBackgroundColor: context.color.customerBackground,
              onPressed: () {},
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Button(
                icon: IconAssets.mail,
                title: context.loc.contactsDetailsActionsSendEmail,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async {},
              ),
            ),
            AppSpacing.horizontal.s5,
            Expanded(
              child: Button(
                icon: IconAssets.phone,
                title: context.loc.contactsDetailsActionsCall,
                size: ButtonSize.extraSmall,
                onPressed: () async {},
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        CustomCheckboxListTile(
          title: context.loc.contactsDetailsMarkAsFavourite,
          value: true,
          checkboxIcon: IconAssets.star,
          dense: true,
          borderRadius: BorderRadius.circular(
            context.radius.hard,
          ),
          onPressed: (value) {},
          controlAffinity: ListTileControlAffinity.leading,
        ),
        AppSpacing.vertical.s5,
        Text(
          context.loc.contactsDetailsNotes,
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        TextInput(
          hintText: context.loc.contactsDetailsNotesHintText,
          maxLines: 4,
          onChanged: (value) {},
        ),
        AppSpacing.vertical.s5,
        OutlinedList(
          children: [
            ListTile(
              dense: true,
              title: Text(
                context.loc.commonAddress,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              subtitle: Text(
                'C/Guzmán el Bueno, 56, 2C',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              leading: IconWithContainer(
                icon: IconAssets.phone,
                backgroundColor: context.color.neutralLight100,
                foreground: context.color.textLight900,
              ),
            ),
            ListTile(
              dense: true,
              title: Text(
                context.loc.commonPostalCode,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              subtitle: Text(
                '28001',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              leading: IconWithContainer(
                icon: IconAssets.home,
                backgroundColor: context.color.neutralLight100,
                foreground: context.color.textLight900,
              ),
            ),
            ListTile(
              dense: true,
              title: Text(
                context.loc.commonCity,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              subtitle: Text(
                'Madrid, 28015, España',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              leading: IconWithContainer(
                icon: IconAssets.marker,
                backgroundColor: context.color.neutralLight100,
                foreground: context.color.textLight900,
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        Text(
          context.loc.commonBankingInformation,
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        OutlinedList(
          children: [
            ListTile(
              dense: true,
              title: Text(
                context.loc.commonIban,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              subtitle: Text(
                'ES12 1234 1234 12 1234567890',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
            ),
            ListTile(
              dense: true,
              title: Text(
                context.loc.commonBicSwift,
                style: context.textStyle.buttonTabBar.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              subtitle: Text(
                'UCJAES2M',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        Text(
          context.loc.contactsDetailsComunicationsPreferences,
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        OutlinedList(
          children: [
            ListTile(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s5,
              ),
              title: Text(
                context.loc.commonPhone,
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
            ),
            ListTile(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s5,
              ),
              title: Text(
                context.loc.commonSms,
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
            ),
            ListTile(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s5,
              ),
              title: Text(
                context.loc.commonWhatsapp,
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight900,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
