// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:udsp59/features/modules_carousel.dart';
import 'package:udsp59/features/page_header.dart';
import 'package:udsp59/features/title_header.dart';
import 'package:udsp59/features/url_linked_icon.dart';
import 'package:udsp59/views/about_page.dart';
import 'package:udsp59/views/home_page.dart';

void main() async {
  // Check Easy Localization is initialized
  SharedPreferences.setMockInitialValues({});
  await EasyLocalization.ensureInitialized();

  // -----------------------------HOMEPAGE----------------------------------- //
  group('Homepage tests', () {
    testWidgets('HomePage has a TitleHeader, some Texts and a ModuleCarousel',
        (WidgetTester tester) async {
      // Find the widget
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: HomePage(),
          ),
        ),
      );

      // Waiting a second to have translations loaded
      await tester.pump(const Duration(seconds: 1));

      // Test the presence of the TitleHeader
      var titleHeader = find.byType(TitleHeader);
      expect(titleHeader, findsOneWidget);

      // Test the presence of the Texts
      var homeEmergency = find.text(tr("homeEmergency"));
      expect(homeEmergency, findsOneWidget);
      var homeWaiting = find.textContaining(
        "${tr("homeWaiting")} ${tr("homeWaitingAct")} ${tr("homeWaitingExclamation")}",
        findRichText: true,
      );
      expect(homeWaiting, findsOneWidget);

      // Test the presence of the ModuleCarousel
      var moduleCarousel = find.byType(ModulesCarousel);
      expect(moduleCarousel, findsOneWidget);
    });

    testWidgets(
        'TitleHeader has a Text with the app name, an Image and a Button which navigates to the AboutPage',
        (WidgetTester tester) async {
      // Find the widget
      await tester.pumpWidget(
        MaterialApp(
          home: const Scaffold(
            body: TitleHeader(),
          ),
          routes: {
            '/about': (context) => const AboutPage(),
          },
        ),
      );

      // Waiting a second to have translations loaded
      await tester.pump(const Duration(seconds: 1));

      // Test the presence of the logo
      var appLogo = find.image(const AssetImage('assets/logo.png'));
      expect(appLogo, findsOneWidget);

      // Test the presence of the app name
      var appTitle = find.text(tr("appName"));
      expect(appTitle, findsOneWidget);

      // Test the presence of the about button
      var aboutButton = find.widgetWithIcon(TextButton, Icons.info_rounded);
      expect(aboutButton, findsOneWidget);

      // Test the onPressed navigation of the button
      await tester.tap(aboutButton);
      await tester.pumpAndSettle();

      expect(find.byType(AboutPage), findsOneWidget);
    });
  });

  // ----------------------------ABOUT PAGE---------------------------------- //
  group('About Page tests', () {
    testWidgets('About Page has a PageHeader, some Texts and some Linked Icons',
        (WidgetTester tester) async {
      // Find the widget
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AboutPage(),
          ),
        ),
      );

      // Waiting a second to have translations loaded
      await tester.pump(const Duration(seconds: 1));

      // Test the presence of the PageHeader
      var pageHeader = find.byType(PageHeader);
      expect(pageHeader, findsOneWidget);

      // Test the presence of the Texts
      var aboutSubtitle1 = find.text(tr("aboutSubtitle1"));
      expect(aboutSubtitle1, findsOneWidget);
      var aboutSubtitle2 = find.text(tr("aboutSubtitle2"));
      expect(aboutSubtitle2, findsOneWidget);
      var aboutPart1 = find.textContaining(
        "${tr("aboutPart1Span1")}${tr("aboutPart1Span2_b")}${tr("aboutPart1Span3")} ${tr("aboutPart1Span4_sb")} ${tr("aboutPart1Span5_s")} ${tr("aboutPart1Span6_sb")}${tr("aboutPart1Span7")}",
        findRichText: true,
      );
      expect(aboutPart1, findsOneWidget);
      var aboutPart2 = find.textContaining(
        "${tr("aboutPart2Span1")} ${tr("aboutPart2Span2_sb")} ${tr("aboutPart2Span3_s")} ${tr("aboutPart2Span4_sb")}${tr("aboutPart2Span5")} ${tr("aboutPart2Span6_sb")}${tr("aboutPart2Span7")}",
        findRichText: true,
      );
      expect(aboutPart2, findsOneWidget);
      var aboutPart3 = find.textContaining(
        "${tr("aboutPart3Span1")}${tr("aboutPart3Span2_b")} ${tr("aboutPart3Span3_s")} ${tr("aboutPart3Span4_sb")} ${tr("aboutPart3Span5_s")}",
        findRichText: true,
      );
      expect(aboutPart3, findsOneWidget);

      // Test the presence of the Linked Icons
      var linkedIcons = find.byType(UrlLinkedIcon);
      expect(linkedIcons, findsNWidgets(5));
    });

    testWidgets(
        'PageHeader has a Button which navigates to the previous page and a Text',
        (WidgetTester tester) async {
      // Find the widget
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: PageHeader(
              pageTitle: 'aboutTitle',
            ),
          ),
        ),
      );

      // Waiting a second to have translations loaded
      await tester.pump(const Duration(seconds: 1));

      // Test the presence of the Text
      var aboutTitle = find.text(tr("aboutTitle"));
      expect(aboutTitle, findsOneWidget);

      // Test the presence of the return button
      var returnButton = find.widgetWithIcon(IconButton, Icons.navigate_before);
      expect(returnButton, findsOneWidget);

      // Test the onPressed navigation of the button
      await tester.tap(returnButton);
      await tester.pumpAndSettle();
    });
  });

  // ----------------------------MODULE PAGE--------------------------------- //
}
