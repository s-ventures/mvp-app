import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:manifiesto_mvp_app/application/erp/stakeholders/favorite/favorite_stakeholders_controller.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/search/widgets/filter_contacts_bottom_sheet/filter_contacts_bottom_sheet.dart';
import 'package:manifiesto_mvp_app/presentation/extensions/stakeholders_relation_type_color.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class FavoriteContactsList extends ConsumerStatefulWidget {
  const FavoriteContactsList({
    super.key,
  });

  @override
  ConsumerState<FavoriteContactsList> createState() => _FavoriteContactsListState();
}

class _FavoriteContactsListState extends ConsumerState<FavoriteContactsList> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref.read(favoriteStakeholdersControllerProvider.notifier).init(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final favoriteStakeholders = ref.watch(
      favoriteStakeholdersControllerProvider.select((value) => value.favoriteStakeholders),
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
            favoriteStakeholders.when(
              data: (favoriteStakeholders) {
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: favoriteStakeholders.length,
                  itemBuilder: (context, index) {
                    final stakeholder = favoriteStakeholders[index];
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
