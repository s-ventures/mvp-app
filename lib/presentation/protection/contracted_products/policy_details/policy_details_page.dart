import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/contracted_products/policy_details/claims_tab/claims_tab.dart';
import 'package:manifiesto_mvp_app/presentation/protection/contracted_products/policy_details/policy_tab/policy_tab.dart';
import 'package:ui_kit/ui_kit.dart';

class ContractedProductsPolicyDetails extends StatelessWidget {
  const ContractedProductsPolicyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context,
                ),
                sliver: CustomAppBar.sliver(
                  centerTitle: true,
                  pinned: true,
                  title: 'Detalles de la póliza',
                  leading: Button(
                    icon: IconAssets.arrowLeft,
                    type: ButtonType.outlined,
                    size: ButtonSize.extraSmall,
                    onPressed: () async => context.pop(),
                  ),
                  actions: [
                    Button(
                      icon: IconAssets.support,
                      type: ButtonType.outlined,
                      size: ButtonSize.extraSmall,
                      onPressed: () async {},
                    ),
                  ],
                  bottom: const CustomTabBar(
                    tabs: [
                      Tab(text: 'Póliza'),
                      Tab(text: 'Siniestros'),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              ContractedProductsPolicyDetailsTab(),
              ContractedProductsClaimsDetailsTab(),
            ],
          ),
        ),
      ),
    );
  }
}
