import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class SearchExpensesPage extends StatelessWidget {
  const SearchExpensesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'SearchExpensesPage',
        style: context.textStyle.bodyMediumRegular,
      ),
    );
  }
}
