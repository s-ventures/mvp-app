import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class CardSettingsAliasPage extends StatelessWidget {
  const CardSettingsAliasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar.sliver(
                centerTitle: true,
                title: context.loc.dailyBankingCardsSettingsCardAlias,
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
            padding: const EdgeInsets.all(16),
            children: [
              TextInput(
                size: TextInputSize.extraSmall,
                labelText: context.loc.dailyBankingCardsAlias,
                hintText:
                    context.loc.dailyBankingCardsSettingsCardAliasDescription,
                controller: TextEditingController(
                  text: '-',
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Button(
            title: context.loc.commonSave,
            size: ButtonSize.small,
            expand: true,
            onPressed: () async {},
          ),
        ),
      ),
    );
  }
}
