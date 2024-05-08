import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/periodic_orders/filter/filter_simplified_periodic_orders_controller.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/periodic_orders/simplified/simplified_periodic_orders_controller.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/simplified_periodic_order.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/periodic_orders/widgets/filter_list_periodic_orders.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/periodic_orders/widgets/filter_periodic_orders_bottom_sheet/filter_periodic_orders_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/periodic_orders/widgets/periodic_order_card.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class PeriodicOrdersPage extends ConsumerStatefulWidget {
  const PeriodicOrdersPage({super.key});

  @override
  ConsumerState<PeriodicOrdersPage> createState() => _PeriodicOrdersPageState();
}

class _PeriodicOrdersPageState extends ConsumerState<PeriodicOrdersPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(simplifiedPeriodicOrdersControllerProvider.notifier).init(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final periodicOrders = ref.watch(
      simplifiedPeriodicOrdersControllerProvider
          .select((value) => value.periodicOrders),
    );

    final controller =
        ref.read(filterSimplifiedPeriodicOrdersControllerProvider.notifier);
    final startDate = ref.watch(
      filterSimplifiedPeriodicOrdersControllerProvider
          .select((value) => value.startDate),
    );
    final endDate = ref.watch(
      filterSimplifiedPeriodicOrdersControllerProvider
          .select((value) => value.endDate),
    );
    final amountFrom = ref.watch(
      filterSimplifiedPeriodicOrdersControllerProvider
          .select((value) => value.amountFrom),
    );
    final amountTo = ref.watch(
      filterSimplifiedPeriodicOrdersControllerProvider
          .select((value) => value.amountTo),
    );
    final frecuency = ref.watch(
      filterSimplifiedPeriodicOrdersControllerProvider
          .select((value) => value.frecuency),
    );

    final isFilterApplied = startDate != null ||
        endDate != null ||
        (amountFrom != null && amountTo != null) ||
        frecuency != null;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Transferencias programadas',
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
            ),
          ];
        },
        body: ListView(
          padding: const EdgeInsets.all(AppSpacing.s5),
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Recientes',
                    style: context.textStyle.bodyMediumSemiBold.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Button(
                      icon: IconAssets.filter,
                      type: ButtonType.outlined,
                      size: ButtonSize.extraSmall,
                      onPressed: () => FilterPeriodicOrdersBottomSheet.show(
                        context: context,
                        onApply: controller.applyFilters,
                        onReset: controller.resetFilters,
                        setStartDate: controller.setStartDate,
                        setEndDate: controller.setEndDate,
                        setAmountFrom: controller.setAmountFrom,
                        setAmountTo: controller.setAmountTo,
                        setFrecuencyTo: controller.setFrecuencyTo,
                        startDate: startDate,
                        endDate: endDate,
                        amountFrom: amountFrom,
                        amountTo: amountTo,
                        frecuency: frecuency,
                      ),
                    ),
                    if (isFilterApplied)
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
            ),
            AppSpacing.vertical.s3,
            const FakeSearchBar(),
            if (isFilterApplied)
              Padding(
                padding: const EdgeInsets.only(top: AppSpacing.s2),
                child: FilterListPeriodicOrders(
                  stateDate: startDate,
                  endDate: endDate,
                  amountFrom: amountFrom,
                  amountTo: amountTo,
                  frecuency: frecuency,
                  onClearDateRange: () {
                    controller
                      ..setStartDate(null)
                      ..setEndDate(null)
                      ..applyFilters();
                  },
                  onClearAmountRange: () {
                    controller
                      ..setAmountFrom(null)
                      ..setAmountTo(null)
                      ..applyFilters();
                  },
                  onClearFrecuency: () {
                    controller
                      ..setFrecuencyTo(frecuency)
                      ..applyFilters();
                  },
                ),
              ),
            AppSpacing.vertical.s5,
            periodicOrders.mapOrNull(
                  data: (data) =>
                      _PeriodicOrdersList(periodicOrders: data.value),
                ) ??
                const Center(child: CircularProgressIndicator.adaptive()),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 144,
        child: Button(
          title: 'Nueva',
          icon: IconAssets.plus,
          size: ButtonSize.small,
          onPressed: () async =>
              context.pushNamed(AppRoute.dailyBankingNationalTransfers.name),
        ),
      ),
    );
  }
}

class _PeriodicOrdersList extends StatelessWidget {
  const _PeriodicOrdersList({required this.periodicOrders});

  final List<SimplifiedPeriodicOrder> periodicOrders;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: periodicOrders.length,
      itemBuilder: (context, index) {
        final periodicOrder = periodicOrders[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.s5),
          child: PeriodicOrderCard(
            periodicOrder: periodicOrder,
          ),
        );
      },
    );
  }
}
