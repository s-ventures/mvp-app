import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurances/widgets/claims.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurances/widgets/policies.dart';

class InsurancesHomePage extends StatelessWidget {
  const InsurancesHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return CustomScrollView(
          slivers: [
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Policies(),
                  const Claims(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
