import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/erp/invoices/list/filter_invoices_bottom_sheet/filter_invoices_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/erp/invoices/search/widgets/search_bar.dart';
import 'package:ui_kit/ui_kit.dart';

class SearchInvoicesPage extends StatelessWidget {
  const SearchInvoicesPage({
    super.key,
  });

  static List<Map<String, String>> items = [
    {
      'title': 'Presupuesto 1',
      'date': '12/12/2021',
      'contact': 'Contacto 1',
      'amount': '123',
      'status': 'Pendiente',
    },
    {
      'title': 'Presupuesto 2',
      'date': '12/12/2021',
      'contact': 'Contacto 2',
      'amount': '123',
      'status': 'Pendiente',
    },
    {
      'title': 'Presupuesto 3',
      'date': '12/12/2021',
      'contact': 'Contacto 3',
      'amount': '123',
      'status': 'Pendiente',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Buscar',
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
              actions: [
                Stack(
                  children: [
                    Button(
                      icon: IconAssets.filter,
                      type: ButtonType.outlined,
                      size: ButtonSize.extraSmall,
                      onPressed: () async => FilterInvoicesBottomSheet.show<void>(
                        context: context,
                        onApply: () async {},
                        onReset: () async {},
                      ),
                    ),
                    if (true)
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.s2,
                            vertical: AppSpacing.s1,
                          ),
                          width: AppSpacing.s3,
                          height: AppSpacing.s3,
                          decoration: BoxDecoration(
                            color: context.color.statusError,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(
                  kToolbarHeight + (false ? kTextTabBarHeight : 0),
                ),
                child: Column(
                  children: [
                    InvoicesSearchBar(
                      controller: TextEditingController(),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.all(
            AppSpacing.s5,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          separatorBuilder: (context, index) => AppSpacing.vertical.s3,
          itemBuilder: (context, index) {
            final item = items[index];

            return ErpListTile(
              title: item['title']!,
              date: item['date']!,
              contact: item['contact']!,
              amount: double.parse(item['amount']!),
              status: item['status']!,
            );
          },
        ),
      ),
    );
  }
}
