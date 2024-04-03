import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/widgets/overview.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/widgets/pending.dart';
import 'package:ui_kit/ui_kit.dart';

class Quotes extends StatelessWidget {
  const Quotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Overview(),
        AppSpacing.vertical.s5,
        const Pending(),
      ],
    );
  }
}
