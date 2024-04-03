import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ScheduledTransferDetailsPage extends StatelessWidget {
  const ScheduledTransferDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar(
              centerTitle: true,
              title: 'Alba García',
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Button(
                  icon: IconAssets.edit,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () => context.pushNamed(AppRoute.dailyBankingScheduledTransferEdit.name),
                ),
              ],
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            CustomCard(
              child: Column(
                children: [
                  Text(
                    '25,00 €',
                    style: context.textStyle.h4.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: AppSpacing.s3, horizontal: AppSpacing.s5),
                    decoration: ShapeDecoration(
                      color: context.color.neutralLight100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(context.radius.soft),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Diariamente',
                          style: context.textStyle.bodyMediumSemiBold.copyWith(
                            color: context.color.textLight900,
                          ),
                        ),
                        AppSpacing.horizontal.s3,
                        Text(
                          '·  Desde 12/01/2024',
                          style: context.textStyle.bodyMediumRegular.copyWith(
                            color: context.color.textLight600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Row(
                    children: [
                      Expanded(
                        child: Button(
                          icon: IconAssets.check,
                          title: 'Activar',
                          size: ButtonSize.extraSmall,
                          type: ButtonType.outlined,
                          foreground: context.color.textLight600,
                          onPressed: () async => AlertBottomSheet.show(
                            context: context,
                            icon: IconAssets.check,
                            title: '¿Quieres activar el pago periódico?',
                            message: 'Se activará tu pago periódico de 25 €',
                            buttonOkText: 'Activar',
                            buttonCancelText: 'Cancelar',
                          ),
                        ),
                      ),
                      AppSpacing.horizontal.s3,
                      Expanded(
                        child: Button(
                          icon: IconAssets.trash,
                          title: 'Eliminar',
                          size: ButtonSize.extraSmall,
                          background: context.color.statusError.withOpacity(.15),
                          foreground: context.color.statusError,
                          onPressed: () async => AlertBottomSheet.show(
                            context: context,
                            icon: IconAssets.trash,
                            title: '¿Quieres eliminar el pago periódico?',
                            buttonOkText: 'Eliminar',
                            buttonOkBackground: context.color.statusError.withOpacity(.15),
                            buttonOkForeground: context.color.statusError,
                            buttonCancelText: 'Cancelar',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AppSpacing.vertical.s5,
            CustomCard(
              outlined: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Concepto',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Text(
                    'Pago periódico',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ],
              ),
            ),
            AppSpacing.vertical.s5,
            CustomCard(
              outlined: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Frecuencia',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    'Diariamente',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Comenzó el',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    '18 ene 2024',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s5,
                  Text(
                    'Próximo pago',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  Text(
                    '19 ene 2024',
                    style: context.textStyle.bodyMediumRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                ],
              ),
            ),
            AppSpacing.vertical.s5,
            Text(
              'Historial de pagos',
              style: context.textStyle.bodyMediumSemiBold.copyWith(
                color: context.color.textLight600,
              ),
            ),
            AppSpacing.vertical.s3,
            ListTile(
              dense: true,
              tileColor: context.color.backgroundLight0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(context.radius.soft),
                side: const BorderSide(
                  color: Colors.white,
                ),
              ),
              leading: IconWithContainer(
                text: '🏥',
                subIcon: IconAssets.bank,
                backgroundColor: Colors.cyan[50]!,
              ),
              title: Text(
                'Alba García',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              subtitle: Text(
                'Hoy',
                style: context.textStyle.bodySmallRegular.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              trailing: Text(
                '25,00 €',
                style: context.textStyle.bodyMediumRegular.copyWith(
                  color: context.color.textLight600,
                  fontSize: 20,
                ),
              ),
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
