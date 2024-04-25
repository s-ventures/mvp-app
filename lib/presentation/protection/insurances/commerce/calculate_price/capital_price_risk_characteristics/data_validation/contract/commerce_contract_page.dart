import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/card_with_options.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_dropdown_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/icon_title_info.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/text_input_into_container.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class InsuranceCommerceContractPage extends StatefulWidget {
  const InsuranceCommerceContractPage({super.key});

  @override
  State<InsuranceCommerceContractPage> createState() =>
      _InsuranceCommerceContractPageState();
}

class _InsuranceCommerceContractPageState
    extends State<InsuranceCommerceContractPage> {
  bool _groupValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Contratar',
              leading: Button(
                icon: IconAssets.chevronLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.headPhones,
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
            const IconTitleInfoMessage(
              icon: IconAssets.check,
              title: 'Datos confirmados',
              message:
                  '¡Confirmación exitosa! Si necesitas realizar cambios en el futuro, siempre puedes hacerlo fácilmente.',
            ),
            AppSpacing.vertical.s6,
            CardWithBoolOptions(
              title: '¿Desearías añadir otras coberturas a tu póliza?',
              initialValue: _groupValue,
              onChanged: (value) => setState(() {
                _groupValue = value;
              }),
            ),
            if (_groupValue) ...[
              AppSpacing.vertical.s5,
              CustomDropdownListTile(
                title: 'Deterioro de Bienes Refrigerado',
                initialState: CustomDropdownListTileInitialState.collapsed,
                nextToCollapse: true,
                trailingIconCollapsed: IconSvg.small(
                  IconAssets.plus,
                  color: context.color.tertiaryLight500,
                ),
                trailingIconExpanded: IconSvg.small(
                  IconAssets.minus,
                  color: context.color.tertiaryLight500,
                ),
                trailingIconsAnimation:
                    CustomDropdownListTileTrailingIconAnimation.disabled,
                dropdownItems: [
                  const TextInputIntoContainer(
                    title: 'Cantidad asegurada',
                    initialValue: '2000',
                    suffixText: '€',
                  ),
                  AppSpacing.vertical.s3,
                  const TextInputIntoContainer(
                    title: 'Nº de asegurados',
                    initialValue: '6',
                  ),
                ],
              ),
              AppSpacing.vertical.s5,
              CustomDropdownListTile(
                title: 'Accidentes Corporales',
                nextToCollapse: true,
                trailingIconExpanded: Radio(
                  value: true,
                  groupValue: true,
                  onChanged: null,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  fillColor: MaterialStateProperty.all(
                    context.color.tertiaryLight500,
                  ),
                ),
                collapsable: false,
                dropdownItems: const [
                  TextInputIntoContainer(
                    title: 'Cantidad asegurada',
                    initialValue: '5000',
                    suffixText: '€',
                  ),
                ],
              ),
              AppSpacing.vertical.s5,
              CustomDropdownListTile(
                title: 'Vehículos en garaje',
                initialState: CustomDropdownListTileInitialState.collapsed,
                nextToCollapse: true,
                trailingIconCollapsed: IconSvg.small(
                  IconAssets.plus,
                  color: context.color.tertiaryLight500,
                ),
                trailingIconExpanded: IconSvg.small(
                  IconAssets.minus,
                  color: context.color.tertiaryLight500,
                ),
                trailingIconsAnimation:
                    CustomDropdownListTileTrailingIconAnimation.disabled,
                dropdownItems: const [
                  TextInputIntoContainer(
                    title: 'Cantidad asegurada',
                    initialValue: '5000',
                    suffixText: '€',
                  ),
                ],
              ),
            ],
            AppSpacing.vertical.s6,
            const HelpWithTheQuotation(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s5,
          ),
          child: Button(
            title: 'Calcular precio',
            size: ButtonSize.small,
            onPressed: () => context.pushNamed(
              AppRoute.protectionInsuranceCommerceContractPayment.name,
            ),
          ),
        ),
      ),
    );
  }
}
