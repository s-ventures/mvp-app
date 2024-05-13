import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/widgets/contact_list.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/sent_transfers/widgets/last_sent_transfers.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/accounts/wires/widgets/wires_options.dart';
import 'package:ui_kit/ui_kit.dart';

class WiresPage extends StatelessWidget {
  const WiresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                centerTitle: true,
                title: 'Nueva transferencia',
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
              const WiresOptions(),
              AppSpacing.vertical.s5,
              const LastSentTransfers(),
              AppSpacing.vertical.s5,
              const ContactList(
                title: 'Contactos favoritos',
                filteredBy: ContactListFilter.fav,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
