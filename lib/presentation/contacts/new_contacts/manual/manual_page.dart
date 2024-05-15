import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class NewContactManualPage extends StatelessWidget {
  const NewContactManualPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Nuevo contacto',
              leading: Button(
                icon: IconAssets.chevronLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            OutlinedList(
              children: [
                CustomCheckboxListTile(
                  title: 'Cliente',
                  value: true,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(context.radius.checkboxSmall),
                    topRight: Radius.circular(context.radius.checkboxSmall),
                  ),
                  onPressed: print,
                ),
                CustomCheckboxListTile(
                  title: 'Proveedor',
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(context.radius.checkboxSmall),
                    bottomRight: Radius.circular(context.radius.checkboxSmall),
                  ),
                  onPressed: print,
                ),
              ],
            ),
            AppSpacing.vertical.s6,
            Text(
              'Información fiscal',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: 'Nombre o Razón social',
              controller: TextEditingController(
                text: 'Alberto Rodriguez',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: 'CIF/NIF',
              controller: TextEditingController(
                text: '12345678A',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: 'Dirección',
              controller: TextEditingController(
                text: 'C/Guzmán el Bueno, 56',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: 'Piso, puerta, nº casa',
              controller: TextEditingController(text: '2C'),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: 'Código postal',
              controller: TextEditingController(text: '28015'),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: 'Ciudad',
              controller: TextEditingController(
                text: 'Madrid',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: 'País',
              controller: TextEditingController(
                text: 'España',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s6,
            Text(
              'Información del contacto',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: 'Email',
              controller: TextEditingController(
                text: 'alberto.rodriguez@gmail.com',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: 'Teléfono',
              controller: TextEditingController(
                text: '+34 654 789 654',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: 'Notas',
              controller: TextEditingController(
                text: 'Notas',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s6,
            Text(
              'Información bancaria',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: 'IBAN',
              controller: TextEditingController(
                text: 'ES12 1234 1234 12 1234567890',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s3,
            TextInput(
              labelText: 'SWIFT/BIC',
              controller: TextEditingController(
                text: 'UCJAES2M',
              ),
              keyboardType: TextInputType.text,
            ),
            AppSpacing.vertical.s6,
            Text(
              'Preferencia de comunicación',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            OutlinedList(
              children: [
                CustomCheckboxListTile(
                  title: 'Teléfono',
                  value: true,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(context.radius.checkboxSmall),
                    topRight: Radius.circular(context.radius.checkboxSmall),
                  ),
                  onPressed: print,
                ),
                CustomCheckboxListTile(
                  title: 'SMS',
                  value: true,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(context.radius.checkboxSmall),
                    bottomRight: Radius.circular(context.radius.checkboxSmall),
                  ),
                  onPressed: print,
                ),
                CustomCheckboxListTile(
                  title: 'Mail',
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(context.radius.checkboxSmall),
                    bottomRight: Radius.circular(context.radius.checkboxSmall),
                  ),
                  onPressed: print,
                ),
                CustomCheckboxListTile(
                  title: 'Whatsapp',
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
            title: 'Crear',
            size: ButtonSize.small,
            onPressed: () => context.pushNamed(AppRoute.contactDetails.name),
          ),
        ),
      ),
    );
  }
}
