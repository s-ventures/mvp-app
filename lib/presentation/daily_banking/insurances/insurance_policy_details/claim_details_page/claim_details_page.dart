import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

class ClaimDetailsPage extends StatelessWidget {
  const ClaimDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar(
                centerTitle: true,
                title: 'Detalles del siniestro',
                leading: Button(
                  icon: IconAssets.arrowLeft,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async => context.pop(),
                ),
                actions: [
                  Button(
                    icon: IconAssets.info,
                    type: ButtonType.outlined,
                    size: ButtonSize.extraSmall,
                    onPressed: () async {},
                  ),
                ],
              ),
            ];
          },
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const InsurancePolicyListTile(
                leadingEmoji: '🖥️',
                leadingBackgroundColor: Color(0xFFE0E0E0),
                title: 'Protección de la actividad de tu negocio',
                number: '123456789',
                category: 'Hogar',
              ),
              AppSpacing.vertical.s5,
              ListTile(
                contentPadding: const EdgeInsets.only(left: AppSpacing.s5, right: AppSpacing.s5),
                title: Text(
                  'Número de expediente',
                  style: context.textStyle.bodyMediumRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                trailing: Text(
                  '123456789',
                  style: context.textStyle.bodyMediumSemiBold.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
              ),
              AppSpacing.vertical.s3,
              ListTile(
                contentPadding: const EdgeInsets.only(left: AppSpacing.s5, right: AppSpacing.s4),
                title: Text(
                  'Fecha apertura',
                  style: context.textStyle.bodyMediumRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                trailing: Button(
                  size: ButtonSize.extraSmall,
                  onPressed: () async {},
                  title: '12/12/2021',
                  background: context.color.neutralLight100,
                  foreground: context.color.iconLight900,
                ),
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
              ),
              AppSpacing.vertical.s3,
              ListTile(
                contentPadding: const EdgeInsets.only(left: AppSpacing.s5, right: AppSpacing.s4),
                title: Text(
                  'Fecha inicio tramitación',
                  style: context.textStyle.bodyMediumRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                trailing: Button(
                  size: ButtonSize.extraSmall,
                  onPressed: () async {},
                  title: '12/12/2021',
                  background: context.color.neutralLight100,
                  foreground: context.color.iconLight900,
                ),
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
              ),
              AppSpacing.vertical.s3,
              ListTile(
                contentPadding: const EdgeInsets.only(left: AppSpacing.s5, right: AppSpacing.s4),
                title: Text(
                  'Fecha fin de tramitación',
                  style: context.textStyle.bodyMediumRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                trailing: Button(
                  size: ButtonSize.extraSmall,
                  onPressed: () async {},
                  title: '12/12/2021',
                  background: context.color.neutralLight100,
                  foreground: context.color.iconLight900,
                ),
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
              ),
              AppSpacing.vertical.s3,
              ListTile(
                contentPadding: const EdgeInsets.only(
                  left: AppSpacing.s5,
                  right: AppSpacing.s4,
                ),
                title: Text(
                  'Estado de siniestro',
                  style: context.textStyle.bodyMediumRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                trailing: Chip(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  backgroundColor: context.color.statusSuccess.withOpacity(0.15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.hard),
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  label: Text(
                    'Activo',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.statusSuccess,
                    ),
                  ),
                ),
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
              ),
              AppSpacing.vertical.s5,
              OutlinedList(
                children: [
                  ListTile(
                    leading: IconWithContainer(
                      icon: IconAssets.warning,
                      backgroundColor: context.color.backgroundLight200,
                    ),
                    title: Text(
                      'Situación de riesgo',
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    subtitle: Text(
                      '-------',
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: IconWithContainer(
                      icon: IconAssets.invoice,
                      backgroundColor: context.color.backgroundLight200,
                    ),
                    title: Text(
                      'Causa',
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    subtitle: Text(
                      '-------',
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                  ),
                ],
              ),
              AppSpacing.vertical.s5,
              Text(
                'Encargado de reparación',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s3,
              ListTile(
                contentPadding: const EdgeInsets.only(left: AppSpacing.s5, right: AppSpacing.s4),
                leading: IconWithContainer(
                  text: 'FM',
                  backgroundColor: context.color.backgroundLight200,
                ),
                title: Text(
                  'Fontanería Martínez',
                  style: context.textStyle.bodyMediumRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                trailing: IconSvg.small(
                  IconAssets.phone,
                  color: context.color.iconLight900,
                ),
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
