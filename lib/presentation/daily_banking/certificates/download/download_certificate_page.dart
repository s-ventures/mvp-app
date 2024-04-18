import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class CertificatesAndDocumentsDownload extends StatelessWidget {
  const CertificatesAndDocumentsDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Certificado de titularidad',
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
            CustomCard(
              outlined: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Descargar certificado',
                    style: context.textStyle.bodySmallSemiBold.copyWith(
                      color: context.color.textLight900,
                    ),
                  ),
                  AppSpacing.vertical.s2,
                  Row(
                    children: [
                      IconSvg.small(
                        IconAssets.document,
                        color: context.color.statusInfo,
                      ),
                      AppSpacing.horizontal.s2,
                      Text(
                        'Parte 1',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                    ],
                  ),
                  AppSpacing.vertical.s1,
                  Row(
                    children: [
                      IconSvg.small(
                        IconAssets.document,
                        color: context.color.statusInfo,
                      ),
                      AppSpacing.horizontal.s2,
                      Text(
                        'Parte 2',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AppSpacing.vertical.s5,
            Container(
              padding: const EdgeInsets.all(AppSpacing.s5),
              decoration: BoxDecoration(
                color: context.color.backgroundLight0,
                borderRadius: BorderRadius.circular(context.radius.soft),
              ),
              height: 400,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Certificado de titularidad',
                        style: context.textStyle.bodySmallSemiBold.copyWith(
                          color: context.color.textLight900,
                        ),
                      ),
                      AppSpacing.vertical.s3,
                      Text(
                        'Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris. Et ex sunt eiusmod do tempor. Tempor in et ipsum minim nulla ut proident aliquip irure quis id aute sunt. Minim enim cupidatat nisi ut excepteur velit laborum ut qui elit id laboris.',
                        style: context.textStyle.bodySmallRegular.copyWith(
                          color: context.color.textLight600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
          child: Button(
            title: 'Descargar certificado',
            size: ButtonSize.small,
            icon: IconAssets.download,
            onPressed: () async => context.goNamed(AppRoute.dailyBanking.name),
          ),
        ),
      ),
    );
  }
}
