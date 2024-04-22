import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/protection_coverage.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/risk_exposure_grid.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/risk_exposure_list.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ProtectionPage extends StatefulWidget {
  const ProtectionPage({super.key});

  @override
  State<ProtectionPage> createState() => _ProtectionPageState();
}

class _ProtectionPageState extends State<ProtectionPage> {
  SwitchViewType _type = SwitchViewType.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar(
                centerTitle: true,
                type: CustomAppBarType.logo,
                leading: Button(
                  icon: IconAssets.bell,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async {},
                ),
                actions: [
                  Button(
                    icon: IconAssets.user,
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
              Container(
                padding: const EdgeInsets.all(AppSpacing.s4),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                    side: BorderSide(
                      color: context.color.strokeLigth100,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tu Sector',
                      style: context.textStyle.bodySmallSemiBold.copyWith(
                        color: context.color.textLight900,
                      ),
                    ),
                    Text(
                      'Actividad',
                      style: context.textStyle.buttonTabBar.copyWith(
                        color: context.color.textLight300,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.vertical.s5,
              Text(
                'Seguros contratados',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
              AppSpacing.vertical.s5,
              Splash(
                borderRadius: BorderRadius.circular(context.radius.soft),
                onPressed: () => context.pushNamed(
                  AppRoute.protectionContractedProducts.name,
                ),
                child: ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.s4,
                    vertical: AppSpacing.s3,
                  ),
                  tileColor: context.color.backgroundLight0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                    side: BorderSide(
                      color: context.color.strokeLigth100,
                    ),
                  ),
                  title: Text(
                    'Productos contratados',
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  leading: IconWithContainer(
                    icon: IconAssets.document,
                    backgroundColor: context.color.neutralLight100,
                  ),
                  trailing: IconSvg.small(
                    IconAssets.chevronRight,
                    color: context.color.primary,
                  ),
                ),
              ),
              AppSpacing.vertical.s5,
              const CoverageProtection(),
              AppSpacing.vertical.s5,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Pendientes',
                        style: context.textStyle.bodyMediumSemiBold.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      AppSpacing.horizontal.s3,
                      IconSvg.small(
                        IconAssets.info,
                        color: context.color.iconLight600,
                      ),
                    ],
                  ),
                  SwitchView(
                    onChanged: (typeSelected) {
                      debugPrint('TypeSelected: $typeSelected');
                      setState(() {
                        _type = typeSelected;
                      });
                    },
                  ),
                ],
              ),
              AppSpacing.vertical.s5,
              if (_type == SwitchViewType.grid) ...[const RiskExposureGrid()],
              if (_type == SwitchViewType.list) ...[const RiskExposureList()],
            ],
          ),
        ),
      ),
    );
  }
}
