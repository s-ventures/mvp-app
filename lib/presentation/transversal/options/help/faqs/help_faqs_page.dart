import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/protection/widgets/custom_dropdown_list_tile.dart';
import 'package:ui_kit/ui_kit.dart';

class HelpFaqsPage extends StatelessWidget {
  const HelpFaqsPage({
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
              title: 'FAQ',
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
            CustomDropdownListTile(
              title: 'Pregunta 1',
              initialState: CustomDropdownListTileInitialState.collapsed,
              dropdownItems: [
                CustomCard.outlined(
                  child: Text(
                    'Sint ullamco cillum nulla elit id eiusmod culpa labore eiusmod aliqua velit eiusmod. Dolore culpa sunt labore consequat id. Elit cupidatat tempor cupidatat commodo ullamco cupidatat elit. Voluptate laborum culpa officia do culpa Lorem proident incididunt excepteur quis velit. Id ad aliquip incididunt pariatur pariatur nisi aute eiusmod.',
                    style: context.textStyle.bodySmallRegular,
                  ),
                ),
              ],
            ),
            AppSpacing.vertical.s3,
            CustomDropdownListTile(
              title: 'Pregunta 2',
              initialState: CustomDropdownListTileInitialState.collapsed,
              dropdownItems: [
                CustomCard.outlined(
                  child: Text(
                    'Sint ullamco cillum nulla elit id eiusmod culpa labore eiusmod aliqua velit eiusmod. Dolore culpa sunt labore consequat id. Elit cupidatat tempor cupidatat commodo ullamco cupidatat elit. Voluptate laborum culpa officia do culpa Lorem proident incididunt excepteur quis velit. Id ad aliquip incididunt pariatur pariatur nisi aute eiusmod.',
                    style: context.textStyle.bodySmallRegular,
                  ),
                ),
              ],
            ),
            AppSpacing.vertical.s3,
            CustomDropdownListTile(
              title: 'Pregunta 3',
              initialState: CustomDropdownListTileInitialState.collapsed,
              dropdownItems: [
                CustomCard.outlined(
                  child: Text(
                    'Sint ullamco cillum nulla elit id eiusmod culpa labore eiusmod aliqua velit eiusmod. Dolore culpa sunt labore consequat id. Elit cupidatat tempor cupidatat commodo ullamco cupidatat elit. Voluptate laborum culpa officia do culpa Lorem proident incididunt excepteur quis velit. Id ad aliquip incididunt pariatur pariatur nisi aute eiusmod.',
                    style: context.textStyle.bodySmallRegular,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
