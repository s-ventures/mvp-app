import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ConceptFilter extends StatelessWidget {
  const ConceptFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextInput(
      hintText: 'Concepto',
      onChanged: print,
    );
  }
}
