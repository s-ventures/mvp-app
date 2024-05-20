import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/quotes_page.dart';
import 'package:ui_kit/ui_kit.dart';

class ErpPage extends StatelessWidget {
  const ErpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                centerTitle: true,
                floating: true,
                pinned: true,
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
                bottom: const CustomTabBar(
                  tabs: [
                    Tab(text: 'Presupuestos'),
                    Tab(text: 'Facturas'),
                    Tab(text: 'Gastos'),
                    Tab(text: 'Contabilidad'),
                    Tab(text: 'Impuestos'),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Stack(
                children: [
                  const QuotesTab(),
                  Positioned(
                    right: 16,
                    bottom: 16,
                    child: Button(
                      onPressed: () async {},
                      icon: IconAssets.plus,
                      size: ButtonSize.small,
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  'Facturas',
                  style: TextStyle(color: context.color.primary),
                ),
              ),
              Center(
                child: Text(
                  'Gastos',
                  style: TextStyle(color: context.color.primary),
                ),
              ),
              Center(
                child: Text(
                  'Contabilidad',
                  style: TextStyle(color: context.color.primary),
                ),
              ),
              Center(
                child: Text(
                  'Impuestos',
                  style: TextStyle(color: context.color.primary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
