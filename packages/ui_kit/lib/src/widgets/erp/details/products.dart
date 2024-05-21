import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ErpDetailsProducts extends StatelessWidget {
  const ErpDetailsProducts({
    required this.products,
    super.key,
  });

  final List<Map<String, dynamic>> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Detalle',
          style: context.textStyle.bodyMediumSemiBold.copyWith(
            color: context.color.textLight600,
          ),
        ),
        AppSpacing.vertical.s3,
        CustomCard.outlined(
          child: DataTable(
            columnSpacing: AppSpacing.s6,
            headingTextStyle: context.textStyle.buttonTabBar.copyWith(
              color: context.color.textLight900,
            ),
            dataTextStyle: context.textStyle.buttonTabBar.copyWith(
              color: context.color.textLight900,
            ),
            columns: const [
              DataColumn(
                label: Text(''),
              ),
              DataColumn(
                label: Text('Base unit.', textAlign: TextAlign.right),
                numeric: true,
              ),
              DataColumn(
                label: Text('Q.', textAlign: TextAlign.right),
                numeric: true,
              ),
              DataColumn(
                label: Text('Dto.', textAlign: TextAlign.right),
                numeric: true,
              ),
            ],
            rows: products.map((product) {
              return DataRow(
                cells: [
                  DataCell(
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        product['title'] as String,
                        style: context.textStyle.buttonTabBar.copyWith(
                          color: context.color.textLight600,
                        ),
                      ),
                    ),
                  ),
                  DataCell(
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text('${product['price']} €'),
                    ),
                  ),
                  DataCell(
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(product['quantity'].toString()),
                    ),
                  ),
                  DataCell(
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(product['total'] as String),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
        AppSpacing.vertical.s3,
        CustomCard(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Base imponible',
                    style: context.textStyle.bodySmallSemiBold,
                  ),
                  AppSpacing.vertical.s3,
                  Text(
                    'IVA (21 %)',
                    style: context.textStyle.bodySmallSemiBold,
                  ),
                  AppSpacing.vertical.s3,
                  Text(
                    'IRPF (15 %)',
                    style: context.textStyle.bodySmallSemiBold,
                  ),
                  AppSpacing.vertical.s3,
                  Text(
                    'Total',
                    style: context.textStyle.bodySmallSemiBold,
                  ),
                ],
              ),
              AppSpacing.horizontal.s6,
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    150.00.toCurrency(plusSign: false),
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  Text(
                    31.50.toCurrency(plusSign: false),
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  Text(
                    22.50.toCurrency(plusSign: false),
                    style: context.textStyle.bodySmallRegular.copyWith(
                      color: context.color.textLight600,
                    ),
                  ),
                  AppSpacing.vertical.s3,
                  Text(
                    204.00.toCurrency(plusSign: false),
                    style: context.textStyle.bodySmallSemiBold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
