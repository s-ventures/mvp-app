import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/periodic_orders/detailed/detailed_periodic_order_controller.dart';
import 'package:ui_kit/ui_kit.dart';

class PeriodicOrderEditPage extends ConsumerStatefulWidget {
  const PeriodicOrderEditPage({
    required this.periodicOrderId,
    super.key,
  });

  final int periodicOrderId;

  @override
  ConsumerState<PeriodicOrderEditPage> createState() =>
      _PeriodicOrderEditPageState();
}

class _PeriodicOrderEditPageState extends ConsumerState<PeriodicOrderEditPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(detailedPeriodicOrderControllerProvider.notifier).init(
              periodicOrderId: widget.periodicOrderId,
            ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final periodicOrder =
        ref.watch(detailedPeriodicOrderControllerProvider).periodicOrder;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Transferncias programadas',
              leading: Button(
                icon: IconAssets.arrowLeft,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async => context.pop(),
              ),
            ),
          ];
        },
        body: periodicOrder.when(
          data: (periodicOrder) => ListView(
            padding: const EdgeInsets.all(AppSpacing.s5),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CurrencyInput(
                        controller: TextEditingController(
                          text: periodicOrder.amount.toCurrency(
                            plusSign: false,
                            showSymbol: false,
                          ),
                        ),
                      ),
                      AppSpacing.vertical.s3,
                      Text(
                        'Sin comisión de transferencia',
                        style: context.textStyle.bodyMediumRegular.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                      AppSpacing.vertical.s3,
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.s4,
                          vertical: AppSpacing.s1,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            context.radius.hard,
                          ),
                        ),
                        child: Row(
                          children: [
                            IconSvg.medium(
                              IconAssets.soon,
                              color: context.color.secondaryLight600,
                            ),
                            AppSpacing.horizontal.s5,
                            Text(
                              'Cuenta soon',
                              style: context.textStyle.bodyMediumRegular,
                            ),
                            AppSpacing.horizontal.s5,
                            IconSvg.small(
                              IconAssets.chevronRight,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              AppSpacing.vertical.s5,
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.s5,
                  vertical: AppSpacing.s3,
                ),
                decoration: BoxDecoration(
                  color: context.color.backgroundLight0,
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
                child: TextInput(
                  hintText: 'Concepto',
                  fillColor: context.color.backgroundLight0,
                  alignLabelWithHint: true,
                  controller: TextEditingController(
                    text: periodicOrder.concept ?? 'Sin concepto',
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Concepto',
                  border: InputBorder.none,
                  enabledBorder: false,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ],
          ),
          error: (error, _) => Center(
            child: Text(
              error.toString(),
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.error,
              ),
            ),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      bottomNavigationBar: periodicOrder.when(
        data: (periodicOrder) => SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.s5,
                    vertical: AppSpacing.s3,
                  ),
                  decoration: BoxDecoration(
                    color: context.color.neutralLight100,
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Programado ${periodicOrder.frecuency.name.toLowerCase()}',
                        style: context.textStyle.bodyMediumRegular,
                      ),
                      AppSpacing.horizontal.s2,
                      Text(
                        '· Desde ${periodicOrder.startDate.formatToTransactionDate()}',
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
                    Button(
                      icon: IconAssets.calendar,
                      size: ButtonSize.small,
                      type: ButtonType.outlined,
                      onPressed: () async {
                        await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2025),
                        );
                      },
                    ),
                    AppSpacing.horizontal.s3,
                    Expanded(
                      child: Button(
                        title: 'Guardar cambios',
                        size: ButtonSize.small,
                        onPressed: () async => context.pop(),
                        expand: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        error: (error, _) => const SizedBox.shrink(),
        loading: () => const SizedBox.shrink(),
      ),
    );
  }
}
