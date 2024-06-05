import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum ArrowDirection {
  up,
  down,
}

class ErpOverview extends StatelessWidget {
  const ErpOverview({
    required this.amount,
    required this.total,
    required this.percent,
    required this.greenValue,
    required this.greenLabel,
    required this.yellowValue,
    required this.yellowLabel,
    required this.redValue,
    required this.redLabel,
    required this.onPeriodChange,
    this.arrowDirection = ArrowDirection.up,
    this.initialValue = 'Mes',
    this.textOfSelect = 'Periodo seleccionado',
    super.key,
  });

  final double amount;
  final double total;
  final double percent;
  final ArrowDirection arrowDirection;
  final String initialValue;
  final String textOfSelect;
  final double greenValue;
  final String greenLabel;
  final double yellowValue;
  final String yellowLabel;
  final double redValue;
  final String redLabel;
  final void Function(String?) onPeriodChange;

  List<DropdownMenuItem<String>> get _dropdownItems {
    final menuItems = <DropdownMenuItem<String>>[
      const DropdownMenuItem(
        value: 'Mes',
        child: Text('Mes'),
      ),
      const DropdownMenuItem(
        value: 'Trimestre',
        child: Text('Trimestre'),
      ),
      const DropdownMenuItem(
        value: 'Año',
        child: Text('Año'),
      ),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard.outlined(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                amount.toCurrency(plusSign: false),
                style: context.textStyle.h5.copyWith(
                  color: context.color.textLight900,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.15,
                ),
              ),
              AppSpacing.horizontal.s3,
              Padding(
                padding: const EdgeInsets.only(
                  top: AppSpacing.s3,
                ),
                child: Text(
                  '/',
                  style: context.textStyle.bodyMediumRegular.copyWith(
                    color: context.color.textLight300,
                  ),
                ),
              ),
              AppSpacing.horizontal.s3,
              Container(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Text(
                  total.toCurrency(plusSign: false),
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight300,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: context.color.statusSuccess.withOpacity(
                    0.12,
                  ),
                  borderRadius: BorderRadius.circular(
                    context.radius.hard,
                  ),
                ),
                child: Row(
                  children: [
                    if (arrowDirection == ArrowDirection.up)
                      IconSvg(
                        IconAssets.arrowUp,
                        size: 12,
                        color: context.color.statusSuccess,
                      )
                    else
                      arrowDirection == ArrowDirection.down
                          ? IconSvg(
                              IconAssets.arrowDown,
                              size: 12,
                              color: context.color.statusSuccess,
                            )
                          : const SizedBox.shrink(),
                    Text(
                      '$percent%',
                      style: context.textStyle.buttonTabBar.copyWith(
                        color: context.color.statusSuccess,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 3,
                ),
                child: Text(
                  textOfSelect,
                  style: context.textStyle.bodySmallSemiBold.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
              ),
              AppSpacing.horizontal.s3,
              IntrinsicWidth(
                child: DropdownButton(
                  style: context.textStyle.bodySmallSemiBold.copyWith(
                    color: context.color.textLight900,
                  ),
                  borderRadius: BorderRadius.circular(
                    context.radius.soft,
                  ),
                  underline: Container(),
                  elevation: 1,
                  dropdownColor: context.color.backgroundLight0,
                  icon: Padding(
                    padding: const EdgeInsets.only(
                      left: AppSpacing.s3,
                      top: AppSpacing.s1,
                    ),
                    child: IconSvg.extraSmall(
                      IconAssets.sortline,
                      color: context.color.textLight600,
                    ),
                  ),
                  isExpanded: true,
                  isDense: true,
                  value: initialValue,
                  items: _dropdownItems,
                  onChanged: onPeriodChange,
                ),
              ),
            ],
          ),
          AppSpacing.vertical.s5,
          LineBarChart(
            greenValue: greenValue,
            greenLabel: greenLabel,
            yellowValue: yellowValue,
            yellowLabel: yellowLabel,
            redValue: redValue,
            redLabel: redLabel,
            bordered: true,
            verticalDirection: VerticalDirection.up,
          ),
        ],
      ),
    );
  }
}
