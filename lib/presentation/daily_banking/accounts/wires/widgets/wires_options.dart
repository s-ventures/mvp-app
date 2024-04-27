import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';
import 'package:ui_kit/ui_kit.dart';

class WiresOptions extends StatelessWidget {
  const WiresOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedList(
      children: [
        Splash(
          child: ListTile(
            leading: IconWithContainer(
              icon: IconAssets.marker,
              backgroundColor: context.color.neutralLight100,
            ),
            title: const Text('Envío nacional'),
            subtitle: Text(
              'Enviar dinero dentro de tu país',
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.textLight600,
              ),
            ),
            trailing: IconSvg.small(IconAssets.chevronRight),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(context.radius.soft),
                topRight: Radius.circular(context.radius.soft),
              ),
            ),
            onTap: () => context.pushNamed(
              AppRoute.dailyBankingNationalTransfers.name,
            ),
          ),
        ),
        Splash(
          child: ListTile(
            leading: IconWithContainer(
              icon: IconAssets.global,
              backgroundColor: context.color.neutralLight100,
            ),
            title: const Text('Envío internacional'),
            subtitle: Text(
              'Enviar dinero al extranjero',
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.textLight600,
              ),
            ),
            trailing: IconSvg.small(IconAssets.chevronRight),
            onTap: () => context.pushNamed(
              AppRoute.dailyBankingInternationalTransfers.name,
            ),
          ),
        ),
        Splash(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(context.radius.soft),
            bottomRight: Radius.circular(context.radius.soft),
          ),
          child: ListTile(
            leading: IconWithContainer(
              icon: IconAssets.soon,
              size: IconWithContainerSize.large,
              backgroundColor: context.color.neutralLight100,
            ),
            title: const Text('Enviar a contacto soon'),
            subtitle: Text(
              'Transferencias directas',
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.textLight600,
              ),
            ),
            trailing: IconSvg.small(IconAssets.chevronRight),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(context.radius.soft),
                bottomRight: Radius.circular(context.radius.soft),
              ),
            ),
            onTap: () => context.pushNamed(
              AppRoute.dailyBankingSoonPay.name,
            ),
          ),
        ),
      ],
    );
  }
}
