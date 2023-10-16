import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udsp59/views/home_page.dart';

bool appInDebugMode = true;

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UDSP59 Formation',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF251438),
            primary: const Color(0xFF251438),
            secondary: const Color(0xFFCF6C28),
            tertiary: const Color(0xFFCB2738),
          ),
          useMaterial3: true,
          textTheme: GoogleFonts.robotoTextTheme(),
          scaffoldBackgroundColor: const Color(0xFFECF0F8)),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}