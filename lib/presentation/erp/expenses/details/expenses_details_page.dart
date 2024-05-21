import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

class ExpensesDetailsPage extends StatelessWidget {
  const ExpensesDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Gasto',
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
            const ErpDetailsHeader(
              title: 'Presupuesto F1/2023',
              subtitle: 'Notas para el receptor',
              status: ErpDetailsStatus.rejected,
            ),
            AppSpacing.vertical.s6,
            const ErpDetailsDates(
              date: '23 Oct',
              dateLabel: 'Fecha',
              expiration: '28 Oct',
              expirationLabel: 'Vencimiento',
              delivery: '1 Nov',
              deliveryLabel: 'Entrega',
            ),
            AppSpacing.vertical.s6,
            const ErpDetailsClient(
              initials: 'AB',
              client: 'Alba Bosch',
              address: '28001, España',
              nif: '12345678Z',
            ),
            AppSpacing.vertical.s6,
            const ErpDetailsCategory(
              categorySelected: 'Ventas',
            ),
            AppSpacing.vertical.s6,
            const ErpDetailsProducts(
              products: [
                {
                  'title': 'Producto 1',
                  'quantity': 2,
                  'price': 100,
                  'total': '0,00€ (0%)',
                },
                {
                  'title': 'Producto 2',
                  'quantity': 1,
                  'price': 50,
                  'total': '0,00€ (0%)',
                },
              ],
            ),
            AppSpacing.vertical.s6,
            const ErpDetailsMovement(
              emoji: '💳',
              movement: 'Gastos',
              total: 150,
              account: 'soon',
              hour: '12:29',
            ),
            AppSpacing.vertical.s6,
            ErpDetailsAttachments(
              title: 'Archivo1.pdf',
              date: '29/11/2023',
              size: '1,2 MB',
              onPressed: () async {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            AppSpacing.s5,
          ),
          child: Button(
            title: 'Convertir en factura',
            size: ButtonSize.small,
            type: ButtonType.outlined,
            onPressed: () async {},
          ),
        ),
      ),
    );
  }
}