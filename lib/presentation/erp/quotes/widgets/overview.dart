import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class QuotesOverview extends StatelessWidget {
  const QuotesOverview({super.key});

  List<DropdownMenuItem<String>> get _dropdownItems {
    final menuItems = <DropdownMenuItem<String>>[
      const DropdownMenuItem(value: 'Mes', child: Text('Mes')),
      const DropdownMenuItem(value: 'Trimestre', child: Text('Trimestre')),
      const DropdownMenuItem(value: 'Año', child: Text('Año')),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      outlined: true,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                456.00.toCurrency(plusSign: false),
                style: context.textStyle.h5.copyWith(
                  color: context.color.textLight900,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.15,
                ),
              ),
              AppSpacing.horizontal.s3,
              Padding(
                padding: const EdgeInsets.only(top: AppSpacing.s3),
                child: Text(
                  '/',
                  style: context.textStyle.bodyMediumRegular
                      .copyWith(color: context.color.textLight300),
                ),
              ),
              AppSpacing.horizontal.s3,
              Container(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Text(
                  798.00.toCurrency(plusSign: false),
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight300,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: context.color.statusSuccess.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(context.radius.hard),
                ),
                child: Row(
                  children: [
                    Transform.rotate(
                      angle: 4.7,
                      child: IconSvg(
                        IconAssets.arrowRight,
                        size: 12,
                        color: context.color.statusSuccess,
                      ),
                    ),
                    Text(
                      '1.2%',
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
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  'Presupuestos de este',
                  style: context.textStyle.bodySmallSemiBold.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
              ),
              AppSpacing.horizontal.s3,
              SizedBox(
                width: 72,
                child: DropdownButton(
                  style: context.textStyle.bodySmallSemiBold.copyWith(
                    color: context.color.textLight900,
                  ),
                  borderRadius: BorderRadius.circular(context.radius.soft),
                  underline: Container(),
                  elevation: 1,
                  dropdownColor: context.color.backgroundLight0,
                  icon: IconSvg.small(
                    IconAssets.sortline,
                    color: context.color.textLight600,
                  ),
                  isExpanded: true,
                  isDense: true,
                  value: 'Mes',
                  items: _dropdownItems,
                  onChanged: (String? value) {},
                ),
              ),
            ],
          ),
          AppSpacing.vertical.s5,
          Row(
            children: [
              Text(
                '1 presupuesto por aceptar',
                style: context.textStyle.bodySmallSemiBold.copyWith(
                  color: context.color.textLight900,
                ),
              ),
              const Spacer(),
              Text(
                '60%',
                style: context.textStyle.bodySmallSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ],
          ),
          AppSpacing.vertical.s2,
          LinearProgressIndicator(
            value: 0.6,
            semanticsLabel: '60%',
            minHeight: 6,
            backgroundColor: context.color.backgroundLight200,
            valueColor: AlwaysStoppedAnimation(context.color.statusInfo),
            borderRadius: BorderRadius.circular(context.radius.soft),
            color: context.color.statusSuccess,
          ),
        ],
      ),
    );
  }
}
