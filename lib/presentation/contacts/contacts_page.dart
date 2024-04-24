import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/widgets/contact_list.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/widgets/rankings.dart';
import 'package:ui_kit/ui_kit.dart';

class Contacts extends ConsumerStatefulWidget {
  const Contacts({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContactsPageState();
}

class _ContactsPageState extends ConsumerState<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              type: CustomAppBarType.logo,
              leading: Button(
                icon: IconAssets.bell,
                type: ButtonType.outlined,
                size: ButtonSize.extraSmall,
                onPressed: () async {},
              ),
              actions: [
                Button(
                  icon: IconAssets.user,
                  type: ButtonType.outlined,
                  size: ButtonSize.extraSmall,
                  onPressed: () async {},
                ),
              ],
            ),
          ];
        },
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          children: [
            const Rankings(),
            AppSpacing.vertical.s6,
            const ContactList(),
          ],
        ),
      ),
    );
  }
}
