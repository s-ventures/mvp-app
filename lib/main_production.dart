import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/app.dart';
import 'package:manifiesto_mvp_app/bootstrap.dart';
import 'package:manifiesto_mvp_app/flavors.dart';

void main() async {
  runApp(
    UncontrolledProviderScope(
      container: await bootstrap(flavor: Flavor.production),
      child: const App(),
    ),
  );
}
