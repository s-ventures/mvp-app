import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/card_with_options.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_dropdown_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/icon_title_info.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/text_input_into_container.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccidentsInsuranceContractPage extends StatelessWidget {
  const AccidentsInsuranceContractPage({super.key});

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
            const CardWithBoolOptions(
              title: '¿Desearías añadir otras coberturas a tu póliza?',
              initialValue: false,
            ),
            AppSpacing.vertical.s5,
            CustomDropdownListTile(
              title: 'Renta mensual por fallecimiento accidental',
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
              trailingIconsAnimation:
                  CustomDropdownListTileTrailingIconAnimation.disabled,
              collapsable: false,
              dropdownItems: [
                TextInputIntoContainer(
                  title: 'Cantidad asegurada',
                  initialValue: 5000.00.toCurrency(
                    plusSign: false,
                    showDecimals: false,
                    showSymbol: false,
                  ),
                  suffixText: '€',
                ),
              ],
            ),
            AppSpacing.vertical.s3,
            CustomDropdownListTile(
              title:
                  'Renta mensual por invalidez permanente absoluta accidental',
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
              trailingIconsAnimation:
                  CustomDropdownListTileTrailingIconAnimation.disabled,
              collapsable: false,
              dropdownItems: [
                TextInputIntoContainer(
                  title: 'Cantidad asegurada',
                  initialValue: 5000.00.toCurrency(
                    plusSign: false,
                    showDecimals: false,
                    showSymbol: false,
                  ),
                  suffixText: '€',
                ),
              ],
            ),
            AppSpacing.vertical.s3,
            CustomDropdownListTile(
              title:
                  'Capital adicional por fallecimiento en accidente de circulación',
              trailingIconCollapsed: IconSvg.small(
                IconAssets.plus,
                color: context.color.tertiaryLight500,
              ),
              trailingIconExpanded: IconSvg.small(
                IconAssets.minus,
                color: context.color.tertiaryLight500,
              ),
              initialState: CustomDropdownListTileInitialState.collapsed,
              dropdownItems: const [],
            ),
            AppSpacing.vertical.s3,
            CustomDropdownListTile(
              title:
                  'Capital adicional por invalidez permanente en accidente de circulación',
              trailingIconCollapsed: IconSvg.small(
                IconAssets.plus,
                color: context.color.tertiaryLight500,
              ),
              trailingIconExpanded: IconSvg.small(
                IconAssets.minus,
                color: context.color.tertiaryLight500,
              ),
              initialState: CustomDropdownListTileInitialState.collapsed,
              dropdownItems: const [],
            ),
            AppSpacing.vertical.s3,
            CustomDropdownListTile(
              title:
                  'Capital adicional por fallecimiento en atraco, agresión o secuestro',
              trailingIconCollapsed: IconSvg.small(
                IconAssets.plus,
                color: context.color.tertiaryLight500,
              ),
              trailingIconExpanded: IconSvg.small(
                IconAssets.minus,
                color: context.color.tertiaryLight500,
              ),
              initialState: CustomDropdownListTileInitialState.collapsed,
              dropdownItems: const [],
            ),
            AppSpacing.vertical.s3,
            CustomDropdownListTile(
              title: 'Hospitalización',
              trailingIconCollapsed: IconSvg.small(
                IconAssets.plus,
                color: context.color.tertiaryLight500,
              ),
              trailingIconExpanded: IconSvg.small(
                IconAssets.minus,
                color: context.color.tertiaryLight500,
              ),
              initialState: CustomDropdownListTileInitialState.collapsed,
              dropdownItems: const [],
            ),
            AppSpacing.vertical.s3,
            CustomDropdownListTile(
              title: 'Asistencia en viaje',
              trailingIconCollapsed: IconSvg.small(
                IconAssets.plus,
                color: context.color.tertiaryLight500,
              ),
              trailingIconExpanded: IconSvg.small(
                IconAssets.minus,
                color: context.color.tertiaryLight500,
              ),
              initialState: CustomDropdownListTileInitialState.collapsed,
              dropdownItems: const [],
            ),
            AppSpacing.vertical.s6,
            const HelpWithTheQuotation(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: AppSpacing.s5,
            right: AppSpacing.s5,
            left: AppSpacing.s5,
          ),
          child: Button(
            title: 'Calcular precio',
            size: ButtonSize.small,
            onPressed: () => context.pushNamed(
              AppRoute.protectionInsuranceAccidentContractPayment.name,
            ),
          ),
        ),
      ),
    );
  }
}
