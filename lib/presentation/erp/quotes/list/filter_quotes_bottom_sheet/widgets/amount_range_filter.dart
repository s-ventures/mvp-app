import 'package:flutter/material.dart';

class QuotesAmountRangeFilter extends StatelessWidget {
  const QuotesAmountRangeFilter({
    required this.minAmount,
    required this.maxAmount,
    required this.setMinAmount,
    required this.setMaxAmount,
    super.key,
  });

  final int minAmount;
  final int maxAmount;
  final void Function(double value) setMinAmount;
  final void Function(double value) setMaxAmount;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
