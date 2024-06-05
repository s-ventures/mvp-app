import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class Pending extends StatefulWidget {
  const Pending({super.key});

  @override
  State<Pending> createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  SwitchViewType _type = SwitchViewType.list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'Pendientes',
                style: context.textStyle.bodyMediumSemiBold.copyWith(
                  color: context.color.textLight600,
                ),
              ),
            ),
            SwitchView(
              onChanged: (typeSelected) {
                debugPrint('TypeSelected: $typeSelected');
                setState(() {
                  _type = typeSelected;
                });
              },
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        if (_type == SwitchViewType.list)
          ListView.separated(
            shrinkWrap: true,
            itemCount: 6,
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(AppSpacing.s5),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(context.radius.soft),
                  ),
                ),
                child: Text(
                  'Item $index',
                  style: context.textStyle.bodyMediumRegular,
                ),
              );
            },
          )
        else
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: AppSpacing.s5,
              mainAxisSpacing: AppSpacing.s5,
            ),
            itemCount: 6,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return CustomCard(
                outlined: true,
                child: Center(
                  child: Text(
                    'Item $index',
                    style: context.textStyle.bodyMediumRegular,
                  ),
                ),
              );
            },
          ),
      ],
    );
  }
}
