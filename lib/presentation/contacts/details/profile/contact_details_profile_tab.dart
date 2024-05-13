import 'package:flutter/material.dart';
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
              type: 'Cliente',
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
                title: 'Enviar email',
                type: ButtonType.outlined,
                size: ButtonSize.small,
                onPressed: () async {},
              ),
            ),
            AppSpacing.horizontal.s5,
            Expanded(
              child: Button(
                icon: IconAssets.phone,
                title: 'Editar',
                size: ButtonSize.small,
                onPressed: () async {},
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        CustomCheckboxListTile(
          title: 'Marcar como favorito',
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
          'Notas',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        TextInput(
          hintText: 'Ej: Llamar a Marta el sábado',
          maxLines: 4,
          onChanged: (value) {},
        ),
        AppSpacing.vertical.s5,
        OutlinedList(
          children: [
            ListTile(
              dense: true,
              title: Text(
                'Dirección',
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
                'Código postal',
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
                'Ciudad',
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
          'Información bancaria',
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
                'IBAN',
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
                'SWIFT/BIC',
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
          'Prefencias de comunicación',
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
                'Teléfono',
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
                'SMS',
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
                'WhatsApp',
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
