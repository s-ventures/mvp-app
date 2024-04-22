import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/insurance_contracted_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ContractedProductsPage extends StatelessWidget {
  const ContractedProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar(
                centerTitle: true,
                title: 'Productos contratados',
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
            padding: const EdgeInsets.all(AppSpacing.s5),
            children: [
              Text(
                'Seguros contratados soon',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s3,
              InsuranceContractedListTile(
                onPressed: () async => context.pushNamed(
                  AppRoute.protectionContractedProductsPolicyDetails.name,
                ),
                title: 'Seguro de Ciber',
                subtitle: 'Nº de póliza: 123456',
                icon: IconWithContainer(
                  text: '🖥️',
                  backgroundColor: context.color.neutralLight100,
                ),
              ),
              AppSpacing.vertical.s3,
              InsuranceContractedListTile(
                onPressed: () async => context.pushNamed(
                  AppRoute.protectionContractedProductsPolicyDetails.name,
                ),
                title: 'Seguro de Comercio',
                subtitle: 'Nº de póliza: 123456',
                icon: const IconWithContainer(
                  text: '🛍️',
                  backgroundColor: Color(0xFFFEDEF4),
                ),
              ),
              AppSpacing.vertical.s3,
              InsuranceContractedListTile(
                onPressed: () async => context.pushNamed(
                  AppRoute.protectionContractedProductsPolicyDetails.name,
                ),
                title: 'Seguro de Protección de pagos',
                subtitle: 'Nº de póliza: 123456',
                icon: const IconWithContainer(
                  text: '🏠',
                  backgroundColor: Color(0xFFF8EEDD),
                ),
              ),
              AppSpacing.vertical.s5,
              Text(
                'Otros seguros contratados',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s3,
              InsuranceContractedListTile(
                title: 'Seguro de RC',
                subtitle: 'Nº de póliza: 123456',
                icon: IconWithContainer(
                  icon: IconAssets.mapfre,
                  size: IconWithContainerSize.large,
                  foreground: const Color(0xFFbe002f),
                  backgroundColor: const Color(0xFFBE002F).withOpacity(.1),
                ),
              ),
              AppSpacing.vertical.s4,
              GestureDetector(
                onTap: () => context.pushNamed(
                  AppRoute.protectionContractedProductsAddNew.name,
                ),
                child: Text(
                  'Añadir seguros de otras compañías',
                  style: context.textStyle.bodyMediumSemiBold.copyWith(
                    color: context.color.statusInfo,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
