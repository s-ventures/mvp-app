import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:manifiesto_mvp_app/flavors.dart';
import 'package:manifiesto_mvp_app/infrastructure/local_storage/repositories/shared_preferences_local_storage.dart';
import 'package:manifiesto_mvp_app/providers.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Initializes services and controllers before the start of the application
Future<ProviderContainer> bootstrap({required Flavor flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();

  F.appFlavor = flavor;

  final sharedPreferences = await SharedPreferences.getInstance();
  final container = ProviderContainer(
    overrides: [
      sharedPreferencesLocalStorageProvider.overrideWithValue(
        SharedPreferencesLocalStorage(sharedPreferences),
      ),
    ],
    observers: [if (flavor == Flavor.staging) _Logger()],
  );

  await initializeProviders(container);
  return container;
}

class _Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    debugPrint(
      '''
      {
      "provider": "${provider.name ?? provider.runtimeType}",
      "newValue": "$newValue"
      }''',
    );
  }
}
