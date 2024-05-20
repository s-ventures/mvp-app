import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class QuotesContactFilter extends StatelessWidget {
  const QuotesContactFilter({
    required this.contacts,
    required this.onChanged,
    super.key,
  });

  final String contacts;
  final void Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchInput(
          hintText: 'Buscar contacto',
          onChanged: onChanged,
        ),
        AppSpacing.vertical.s3,
        CustomCheckboxListTile(
          dense: true,
          tileColor: context.color.backgroundLight0,
          borderRadius: BorderRadius.circular(context.radius.soft),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.s4,
          ),
          title: 'Alba Bosch',
          subtitle: 'Proveedor',
          leading: IconWithContainer(
            text: 'AB',
            backgroundColor: context.color.neutralLight100,
            borderRadius: BorderRadius.circular(
              context.radius.soft,
            ),
          ),
          value: true,
          onPressed: print,
        ),
      ],
    );
  }
}
