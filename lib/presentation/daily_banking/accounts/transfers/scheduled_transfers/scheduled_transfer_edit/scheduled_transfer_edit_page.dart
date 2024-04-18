import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

class ScheduledTransferEditPage extends StatelessWidget {
  const ScheduledTransferEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            CustomAppBar.sliver(
              centerTitle: true,
              title: 'Alba García',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const CurrencyInput(),
                    const SizedBox(height: AppSpacing.s3),
                    Text(
                      'Sin comisión de transferencia',
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                    AppSpacing.vertical.s3,
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.s4,
                        vertical: AppSpacing.s1,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(context.radius.hard),
                      ),
                      child: Row(
                        children: [
                          IconSvg.medium(
                            IconAssets.soon,
                            color: context.color.secondaryLight600,
                          ),
                          AppSpacing.horizontal.s5,
                          Text(
                            'Cuenta soon',
                            style: context.textStyle.bodyMediumRegular,
                          ),
                          AppSpacing.horizontal.s5,
                          IconSvg.small(IconAssets.chevronRight),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            AppSpacing.vertical.s5,
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.s5,
                vertical: AppSpacing.s3,
              ),
              decoration: BoxDecoration(
                color: context.color.backgroundLight0,
                borderRadius: BorderRadius.circular(context.radius.soft),
              ),
              child: TextInput(
                hintText: 'Concepto',
                fillColor: context.color.backgroundLight0,
                alignLabelWithHint: true,
                controller: TextEditingController(text: 'Pago periódico'),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'Concepto',
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 101,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.s5,
                  vertical: AppSpacing.s3,
                ),
                decoration: BoxDecoration(
                  color: context.color.neutralLight100,
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Programado diariamente',
                      style: context.textStyle.bodyMediumRegular,
                    ),
                    AppSpacing.horizontal.s2,
                    Text(
                      '· Desde hoy',
                      style: context.textStyle.bodyMediumRegular.copyWith(
                        color: context.color.textLight600,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.vertical.s5,
              Row(
                children: [
                  Button(
                    icon: IconAssets.calendar,
                    size: ButtonSize.small,
                    type: ButtonType.outlined,
                    onPressed: () async {
                      await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2025),
                      );
                    },
                  ),
                  AppSpacing.horizontal.s3,
                  Expanded(
                    child: Button(
                      title: 'Guardar cambios',
                      size: ButtonSize.small,
                      onPressed: () async => context.pop(),
                      expand: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
