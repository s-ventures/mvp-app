import 'package:flutter/material.dart';

class QuotesContactFilter extends StatelessWidget {
  const QuotesContactFilter({
    required this.contacts,
    required this.setContactTo,
    super.key,
  });

  final String contacts;
  final void Function(String value) setContactTo;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
