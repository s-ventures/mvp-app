import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/filter_quotes_bottom_sheet/filter_quotes_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/widgets/quotes_list_tile.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/search/widgets/search_bar.dart';
import 'package:ui_kit/ui_kit.dart';

class SearchQuotesPage extends StatelessWidget {
  const SearchQuotesPage({super.key});

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
                      onPressed: () async => FilterQuotesBottomSheet.show<void>(
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
                    QuotesSearchBar(
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
          itemCount: 3,
          separatorBuilder: (context, index) => AppSpacing.vertical.s3,
          itemBuilder: (context, index) {
            return const QuotesListTile(
              quote: 'F1/2023',
              date: '12/23',
              contact: 'Contacto',
              amount: 1000,
              status: 'Vence en 3 días',
            );
          },
        ),
      ),
    );
  }
}
