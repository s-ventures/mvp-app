import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/help_with_the_quotation.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class AccidentsInsuranceDataValidationPage extends StatelessWidget {
  const AccidentsInsuranceDataValidationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Validación de datos',
              leading: Button(
                icon: IconAssets.chevronLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.edit,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async => context.pushNamed(
                    AppRoute.protectionInsuranceAccidentCalculatePriceDataValidationEdit.name,
                  ),
                ),
              ],
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            Text(
              'Datos del titular',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            CustomCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nombre completo',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'María García Pérez',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    'Provincia de residencia',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'Madrid',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    'Fecha de nacimiento',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    '12/12/1990',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    'Sexo',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'Mujer',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    'DNI',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    '12345678Z',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                ],
              ),
            ),
            AppSpacing.vertical.s7,
            Text(
              'Datos capitales',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            CustomCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Franquicia de indemnización diaria',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    '15 días',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    'Fallecimiento',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    10000.00.toCurrency(
                      plusSign: false,
                      showDecimals: false,
                    ),
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    'Invalidez permanente',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    38000.00.toCurrency(
                      plusSign: false,
                      showDecimals: false,
                    ),
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    'Asistencia sanitaria por accidente',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    50000.00.toCurrency(
                      plusSign: false,
                      showDecimals: false,
                    ),
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    'Incapacidad temporal total',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    100000.00.toCurrency(
                      plusSign: false,
                      showDecimals: false,
                    ),
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ],
              ),
            ),
            AppSpacing.vertical.s7,
            Text(
              'Características de riesgo',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            CustomCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '¿Practicas algún deporte de riesgo?',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'Sí',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    'Deportes',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'Espeleología, Judo, Karate, Lucha libre',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ],
              ),
            ),
            AppSpacing.vertical.s7,
            Text(
              'Características de riesgo',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            CustomCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '¿Presenta invalidez, defecto físico, más de 12 dioptrías?',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'No',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    '¿Presenta secuelas de enfermedad/accidentes o padece/ha padecido enfermedad grave o crónica?',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'No',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    '¿Le han prescrito alguna intervención quirúrgica en el último año?',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'No',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    '¿Le han prescrito algún tratamiento médico en el último año?',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'No',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    '¿Consume dos paquetes o más de cigarrillos o un litro de alcohol al día?',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'No',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    '¿Ha estado de baja 15 días o más por enfermedad en los dos últimos años?',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'No',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    '¿Ha sufrido alguna intervención quirúrgica en los últimos 3 años?',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'No',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    '¿Está usted en estudio médico, recibiendo tratamiento, o pendiente de alguna prueba o resultado por cualquier motivo de salud?',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'No',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                ],
              ),
            ),
            AppSpacing.vertical.s7,
            Text(
              'Actividad laboral',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            CustomCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Salario neto acumulado últimos 12 meses',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    10000.00.toCurrency(
                      plusSign: false,
                      showDecimals: false,
                    ),
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    'Alta en sistema de la Seguridad Social',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'Sí',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s6,
                  Text(
                    'Actualmente se encuentre en desempleo',
                    style: context.textStyle.buttonTabBar.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'No',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ],
              ),
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
            title: 'Validar datos',
            size: ButtonSize.small,
            onPressed: () => context.pushNamed(
              AppRoute.protectionInsuranceAccidentContract.name,
            ),
          ),
        ),
      ),
    );
  }
}
