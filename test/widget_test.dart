// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:udsp59/features/modules_carousel.dart';
import 'package:udsp59/features/title_header.dart';
import 'package:udsp59/views/home_page.dart';

void main() {
  // -----------------------------HOMEPAGE----------------------------------- //
  testWidgets('HomePage has a TitleHeader, some Texts and a ModuleCarousel',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    ));

    // Waiting a second to have translations loaded
    tester.pumpAndSettle(
      const Duration(
        seconds: 1,
      ),
    );

    // Test the presence of the TitleHeader
    var titleHeader = find.byElementType(TitleHeader);
    expect(titleHeader, findsOneWidget);

    // Test the presence of the Texts
    var homeEmergency = find.text(tr("homeEmergency"));
    expect(homeEmergency, findsOneWidget);
    var homeClickEmergency = find.text(tr("homeClickEmergency"));
    expect(homeClickEmergency, findsOneWidget);
    var homeWaiting = find.text(tr("homeWaiting"));
    expect(homeWaiting, findsOneWidget);
    var homeWaitingAct = find.text(tr("homeWaitingAct"));
    expect(homeWaitingAct, findsOneWidget);
    var homeWaitingExclamation = find.text(tr("homeWaitingExclamation"));
    expect(homeWaitingExclamation, findsOneWidget);

    // Test the presence of the ModuleCarousel
    var moduleCarousel = find.byType(ModulesCarousel);
    expect(moduleCarousel, findsOneWidget);
  });

  testWidgets('TitleHeader has a Text with the app name, an Image and a Button',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: TitleHeader(),
      ),
    ));

    // Waiting a second to have translations loaded
    tester.pumpAndSettle(
      const Duration(
        seconds: 1,
      ),
    );

    // Test the presence of the logo
    var appLogo = find.byType(Image);
    expect(appLogo, findsOneWidget);

    // Test the presence of the app name
    var appTitle = find.text(tr("appName"));
    expect(appTitle, findsOneWidget);

    // Test the presence of the about button
    var aboutButton = find.byIcon(Icons.info_rounded);
    expect(aboutButton, findsOneWidget);

    // Test the onPressed callback of the button
  });

  // ----------------------------ABOUT PAGE---------------------------------- //

  // ----------------------------MODULE PAGE--------------------------------- //
}
