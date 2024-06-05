import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/claims/list/claims.dart';
import 'package:manifiesto_mvp_app/presentation/daily_banking/insurance/policies/list/policies.dart';

class InsuranceHomePage extends StatefulWidget {
  const InsuranceHomePage({super.key});

  @override
  State<InsuranceHomePage> createState() => _InsuranceHomePageState();
}

class _InsuranceHomePageState extends State<InsuranceHomePage> {
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
