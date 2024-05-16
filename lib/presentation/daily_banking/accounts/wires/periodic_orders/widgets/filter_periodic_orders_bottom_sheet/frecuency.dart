import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:ui_kit/ui_kit.dart';

class FilterPeriodicOrdersFrecuency extends StatefulWidget {
  const FilterPeriodicOrdersFrecuency({
    required this.frecuency,
    required this.setFrecuencyTo,
    super.key,
  });

  final PeriodicOrderFrecuencyType? frecuency;
  final ValueChanged<PeriodicOrderFrecuencyType> setFrecuencyTo;

  @override
  State<FilterPeriodicOrdersFrecuency> createState() =>
      _FilterPeriodicOrdersFrecuencyState();
}

class _FilterPeriodicOrdersFrecuencyState
    extends State<FilterPeriodicOrdersFrecuency> {
  int? selectedIndex;

  @override
  void initState() {
    super.initState();

    if (widget.frecuency != null) {
      selectedIndex =
          PeriodicOrderFrecuencyType.values.indexOf(widget.frecuency!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 36,
          width: double.infinity,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: PeriodicOrderFrecuencyType.values.length,
            itemBuilder: (context, index) {
              final periodicOrderfrecuency =
                  PeriodicOrderFrecuencyType.values[index];

              return Padding(
                padding: const EdgeInsets.only(right: AppSpacing.s3),
                child: CustomChip(
                  title: Text(
                    periodicOrderfrecuency == PeriodicOrderFrecuencyType.daily
                        ? context.loc.commonFrequencyDaily
                        : periodicOrderfrecuency ==
                                PeriodicOrderFrecuencyType.weekly
                            ? context.loc.commonFrequencyWeekly
                            : periodicOrderfrecuency ==
                                    PeriodicOrderFrecuencyType.monthly
                                ? context.loc.commonFrequencyMonthly
                                : '',
                    style: context.textStyle.buttonExtraSmall.copyWith(
                      color: selectedIndex == index
                          ? context.color.textLight0
                          : context.color.primaryLight300,
                    ),
                  ),
                  onSelected: (value) {
                    setState(() {
                      selectedIndex = index;
                      widget.setFrecuencyTo(periodicOrderfrecuency);
                    });
                  },
                  selected: selectedIndex == index,
                  size: CustomChipSize.extraSmall,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
