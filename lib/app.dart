import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:udsp59/styles/theme.dart';
import 'package:udsp59/views/about_page.dart';
import 'package:udsp59/views/home_page.dart';
import 'package:udsp59/views/loading.dart';
import 'package:udsp59/views/module_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      onGenerateTitle: (context) => tr("appTitle"),
      theme: udsp59Theme,
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/module': (context) => const ModulePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
