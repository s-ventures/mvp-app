import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/erp/stakeholders/simplified/stakeholders_controller.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/search/widgets/filter_contacts_bottom_sheet/filter_contacts_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/extensions/stakeholders_relation_type_color.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class ContactsList extends ConsumerStatefulWidget {
  const ContactsList({
    super.key,
  });

  @override
  ConsumerState<ContactsList> createState() => _ContactsListState();
}

class _ContactsListState extends ConsumerState<ContactsList> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(stakeholdersControllerProvider.notifier).init(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final stakeholders = ref.watch(
      stakeholdersControllerProvider.select((value) => value.stakeholders),
    );
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                context.loc.contacts,
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ),
            Button(
              icon: IconAssets.filter,
              type: ButtonType.outlined,
              size: ButtonSize.extraSmall,
              onPressed: () => FilterContactsBottomSheet.show(
                context: context,
                onApply: () async {},
                onReset: () async {},
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s3,
        FakeSearchBar(
          onPressed: () => context.pushNamed(AppRoute.contactsSearch.name),
        ),
        AppSpacing.vertical.s3,
        OutlinedList(
          children: [
            stakeholders.when(
              data: (stakeholders) {
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: stakeholders.length,
                  itemBuilder: (context, index) {
                    final stakeholder = stakeholders[index];
                    return ContactListTile(
                      name: stakeholder.fullName,
                      leading: IconWithContainer(
                        text: stakeholder.fullName.initials,
                        foreground: context.color.textLight900,
                        backgroundColor: context.color.neutralLight100,
                        subIcon: stakeholder.isFavorite ? IconAssets.star : null,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(context.radius.soft),
                        topRight: Radius.circular(context.radius.soft),
                      ),
                      nif: stakeholder.documentNumber ?? '',
                      type: stakeholder.relation.name,
                      typeForegroundColor: stakeholder.relation.textColor(context),
                      typeBackgroundColor: stakeholder.relation.backgroundColor(context),
                      onPressed: () => context.pushNamed(AppRoute.contactDetails.name),
                    );
                  },
                );
              },
              error: (error, _) => Center(
                child: Text(
                  error.toString(),
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.error,
                  ),
                ),
              ),
              loading: () => const Center(
                child: CustomLoader(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
