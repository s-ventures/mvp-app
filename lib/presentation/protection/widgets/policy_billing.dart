import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ProtectionPolicyBilling extends StatelessWidget {
  const ProtectionPolicyBilling({
    required this.billingData,
    super.key,
  });

  final List<Map<String, dynamic>> billingData;

  @override
  Widget build(BuildContext context) {
    return OutlinedList(
      children: [
        ...billingData.map((data) {
          return ListTile(
            title: Text(
              data['title'] as String,
              style: context.textStyle.bodySmallRegular.copyWith(
                color: context.color.textLight600,
              ),
            ),
            subtitle: Text(
              data['subtitle'] is String
                  ? data['subtitle'] as String
                  : (data['subtitle'] as double).toCurrency(plusSign: false),
              style: context.textStyle.bodySmallSemiBold.copyWith(
                color: context.color.textLight900,
              ),
            ),
            leading: IconWithContainer(
              icon: data['icon'] as String,
              backgroundColor: context.color.neutralLight100,
            ),
          );
        }),
      ],
    );
  }
}
