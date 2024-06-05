import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/card_with_options.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_dropdown_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/text_input_into_container.dart';
import 'package:ui_kit/ui_kit.dart';

class CommerceInsuranceCalculatePriceDataValidationEditPage extends StatefulWidget {
  const CommerceInsuranceCalculatePriceDataValidationEditPage({super.key});

  @override
  State<CommerceInsuranceCalculatePriceDataValidationEditPage> createState() =>
      _CommerceInsuranceCalculatePriceDataValidationEditPageState();
}

class _CommerceInsuranceCalculatePriceDataValidationEditPageState
    extends State<CommerceInsuranceCalculatePriceDataValidationEditPage> {
  bool _groupValue = false;
  String _localProperty = 'propietario';
  String _urbanCore = 'Núcleo urbano';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Calcular precio',
              leading: Button(
                icon: IconAssets.chevronLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.save,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async => context.pop(),
                ),
              ],
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            CustomDropdownListTile(
              leading: IconWithContainer(
                icon: IconAssets.marker,
                foreground: context.color.textLight600,
                backgroundColor: context.color.neutralLight100,
              ),
              title: 'Dirección local',
              radius: CustomDropdownListTileRadius.hard,
              initialState: CustomDropdownListTileInitialState.collapsed,
              dropdownItems: [
                CustomCard.outlined(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CardWithBoolOptions(
                        inner: true,
                        title: '¿El riesgo está en la calle Velazquez 100 bajo 2?',
                        initialValue: _groupValue,
                        onChanged: (value) => setState(() {
                          _groupValue = value;
                        }),
                      ),
                      if (!_groupValue) ...[
                        AppSpacing.vertical.s5,
                        const CustomDivider(),
                        AppSpacing.vertical.s5,
                        const TextInput(
                          labelText: 'Dirección',
                          hintText: 'Calle Marqués Monteagudo, 27, 3A',
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            CustomDropdownListTile(
              leading: IconWithContainer(
                icon: IconAssets.document,
                foreground: context.color.textLight600,
                backgroundColor: context.color.neutralLight100,
              ),
              title: 'Datos local',
              radius: CustomDropdownListTileRadius.hard,
              initialState: CustomDropdownListTileInitialState.collapsed,
              dropdownItems: [
                CustomCard.outlined(
                  radius: context.radius.hard,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const TextInput(
                        labelText: 'Superficie',
                        hintText: '245 m²',
                      ),
                      AppSpacing.vertical.s5,
                      const CustomDatePickerListTile(
                        title: 'Año de rehabilitación del local',
                        onChanged: print,
                      ),
                      AppSpacing.vertical.s5,
                      const CustomDatePickerListTile(
                        title: 'Año de construcción del edificio',
                        onChanged: print,
                      ),
                      AppSpacing.vertical.s5,
                      const CustomDivider(),
                      AppSpacing.vertical.s5,
                      OutlinedList(
                        children: [
                          CustomRadioListTile(
                            title: 'Propietario',
                            value: 'propietario',
                            groupValue: _localProperty,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                context.radius.soft,
                              ),
                              topRight: Radius.circular(
                                context.radius.soft,
                              ),
                            ),
                            onChanged: (value) => setState(() {
                              _localProperty = value as String;
                            }),
                          ),
                          CustomRadioListTile(
                            title: 'Inquilino',
                            value: 'inquilino',
                            groupValue: _localProperty,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(
                                context.radius.soft,
                              ),
                              bottomRight: Radius.circular(
                                context.radius.soft,
                              ),
                            ),
                            onChanged: (value) => setState(() {
                              _localProperty = value as String;
                            }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                AppSpacing.vertical.s5,
                const CardWithBoolOptions(
                  title:
                      'Construcción en el local asegurando con materiales combustibles en menos del 25%',
                  initialValue: false,
                  onChanged: print,
                ),
                AppSpacing.vertical.s5,
                const CardWithBoolOptions(
                  title: 'Actividad / almacenamiento en sótano o semisótano',
                  initialValue: false,
                  onChanged: print,
                ),
                AppSpacing.vertical.s5,
                const CardWithBoolOptions(
                  title: '¿El local tiene terraza?',
                  initialValue: false,
                  onChanged: print,
                ),
                AppSpacing.vertical.s5,
                const CardWithBoolOptions(
                  title: '¿El local dispone de algún hueco sin medida de protección?',
                  initialValue: false,
                  onChanged: print,
                ),
                AppSpacing.vertical.s5,
                const CardWithBoolOptions(
                  title: '¿El local está situado en centro comercial?',
                  initialValue: false,
                  onChanged: print,
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            CustomDropdownListTile(
              title: 'Ubicación local',
              subtitle: _urbanCore,
              radius: CustomDropdownListTileRadius.hard,
              initialState: CustomDropdownListTileInitialState.collapsed,
              dropdownItems: [
                OutlinedList(
                  children: [
                    CustomRadioListTile(
                      title: 'Núcleo urbano',
                      value: 'Núcleo urbano',
                      groupValue: _urbanCore,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          context.radius.soft,
                        ),
                        topRight: Radius.circular(
                          context.radius.soft,
                        ),
                      ),
                      onChanged: (value) => setState(() {
                        _urbanCore = value as String;
                      }),
                    ),
                    CustomRadioListTile(
                      title: 'Polígono Industrial',
                      value: 'Polígono Industrial',
                      groupValue: _urbanCore,
                      onChanged: (value) => setState(() {
                        _urbanCore = value as String;
                      }),
                    ),
                    CustomRadioListTile(
                      title: '> 1km del núcleo urbano',
                      value: '> 1km del núcleo urbano',
                      groupValue: _urbanCore,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          context.radius.soft,
                        ),
                        bottomRight: Radius.circular(
                          context.radius.soft,
                        ),
                      ),
                      onChanged: (value) => setState(() {
                        _urbanCore = value as String;
                      }),
                    ),
                  ],
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            CustomDropdownListTile(
              leading: IconWithContainer(
                icon: IconAssets.euro,
                foreground: context.color.textLight600,
                backgroundColor: context.color.neutralLight100,
              ),
              title: 'Datos Capitales',
              radius: CustomDropdownListTileRadius.hard,
              dropdownItems: [
                CustomCard.outlined(
                  radius: context.radius.hard,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const TextInput(
                        labelText: 'RC Básica',
                        hintText: '-',
                      ),
                      AppSpacing.vertical.s5,
                      const TextInput(
                        labelText: 'Daños estéticos',
                        hintText: '-',
                      ),
                      AppSpacing.vertical.s5,
                      const TextInputIntoContainer(
                        title: 'Pérdida de beneficios',
                        initialValue: '20',
                        suffixText: 'días',
                      ),
                      AppSpacing.vertical.s5,
                      const TextInputIntoContainer(
                        title: 'Pérdida de beneficios',
                        initialValue: '12',
                        suffixText: '€ / día',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            AppSpacing.vertical.s6,
            const HelpWithTheQuotation(),
            AppSpacing.vertical.s8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  title: 'Volver',
                  size: ButtonSize.small,
                  type: ButtonType.text,
                  onPressed: () async => context.pop(),
                ),
                Button(
                  title: 'Siguiente',
                  size: ButtonSize.small,
                  onPressed: () async => context.pop(),
                ),
              ],
            ),
            AppSpacing.vertical.s6,
          ],
        ),
      ),
    );
  }
}
