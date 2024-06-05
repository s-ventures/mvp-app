import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class InsurancePoliciesListPage extends StatelessWidget {
  const InsurancePoliciesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar(
                centerTitle: true,
                title: 'Listado de pólizas',
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
              InsurancePolicyListTile(
                leadingEmoji: '🖥️',
                leadingBackgroundColor: const Color(0xFFE0E0E0),
                number: '123456',
                category: DateFormat('dd/MM/yyyy').format(DateTime.now()),
                title: 'Seguro de comercio',
                onTap: () => context.goNamed(AppRoute.dailyBankingInsuranceDetails.name),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
