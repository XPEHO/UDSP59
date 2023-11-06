import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udsp59/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('fr'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('fr'),
      child: const ProviderScope(
        child: App(),
      ),
    ),
  );
}
