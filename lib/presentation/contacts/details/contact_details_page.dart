import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/details/expenses/contact_details_expenses_tab.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/details/profile/contact_details_profile_tab.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/details/revenue/contact_details_revenue_tab.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ContactDetailsPage extends StatelessWidget {
  const ContactDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                CustomAppBar.sliver(
                  centerTitle: true,
                  floating: true,
                  pinned: true,
                  title: context.loc.contactsDetailsPageTitle,
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
                      onPressed: () async => context.pushNamed(AppRoute.contactEdit.name),
                    ),
                  ],
                  bottom: CustomTabBar(
                    tabs: [
                      Tab(text: context.loc.contactsDetailsTabProfile),
                      Tab(text: context.loc.contactsDetailsTabRevenue),
                      Tab(text: context.loc.contactsDetailsTabExpenses),
                    ],
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                ContactDetailsProfileTab(),
                ContactDetailsRevenueTab(),
                ContactDetailsExpensesTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
