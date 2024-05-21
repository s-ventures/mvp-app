import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/widgets/approved.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/widgets/overview.dart';
import 'package:manifiesto_mvp_app/presentation/erp/quotes/list/widgets/pending.dart';
import 'package:ui_kit/ui_kit.dart';

class QuotesTab extends StatefulWidget {
  const QuotesTab({super.key});

  @override
  State<QuotesTab> createState() => _QuotesTabState();
}

class _QuotesTabState extends State<QuotesTab> {
  SwitchViewType type = SwitchViewType.list;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.s5),
      children: [
        const QuotesOverview(),
        AppSpacing.vertical.s5,
        QuotesPending(
          type: type,
          setType: (value) {
            setState(() {
              type = value;
            });
          },
        ),
        AppSpacing.vertical.s5,
        QuotesApproved(viewType: type),
      ],
    );
  }
}
