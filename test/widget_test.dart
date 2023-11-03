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
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/features/modules_carousel.dart';
import 'package:udsp59/features/modules_carousel_element.dart';
import 'package:udsp59/features/page_header.dart';
import 'package:udsp59/features/title_header.dart';
import 'package:udsp59/features/url_linked_icon.dart';
import 'package:udsp59/views/about_page.dart';
import 'package:udsp59/views/home_page.dart';
import 'package:udsp59/views/module_page.dart';

void main() async {
  // Check Easy Localization is initialized
  SharedPreferences.setMockInitialValues({});
  await EasyLocalization.ensureInitialized();

  List<Module> modulesList = [
    const Module(
      title: "Protection/Alerte",
      icon: "protect",
      content: [
        [
          "Repérer le danger",
          "Supprimer le danger de manière définitive",
          "Réaliser un dégagement d'urgence",
          "Réaliser un balisage de sécurité"
        ],
        ["Contacter les secours", "18", "112", "15"],
        ["Ne raccrochez jamais avant accord des secours"],
      ],
    ),
    const Module(
      title: "Inconscience",
      icon: "unconscious",
      content: [
        ["Apprécier la conscience"],
        ["Basculer la tête en arrière"],
        ["Apprécier la respiration pendant 10 secondes"],
        ["Mettre en PLS si la victime est inconsciente et respire"],
        ["Contacter les secours", "18", "112", "15"],
        ["Ne raccrochez jamais avant accord des secours"],
        ["Couvrir et surveiller la victime"],
      ],
    ),
  ];

  Map<String, IconData> moduleIcons = {
    "protect": Icons.health_and_safety,
    "malaise": Icons.mood_bad,
    "unconscious": Icons.airline_seat_flat,
    "reanimation": Icons.heart_broken,
    "defibrillator": Icons.monitor_heart,
    "trauma": Icons.personal_injury,
    "burn": Icons.local_fire_department,
    "bleeding": Icons.bloodtype,
  };

  // -----------------------------HOMEPAGE----------------------------------- //
  group('Homepage tests', () {
    testWidgets('HomePage has a TitleHeader, some Texts and a ModuleCarousel',
        (WidgetTester tester) async {
      // Find the widget
      await tester.pumpWidget(
        EasyLocalization(
          supportedLocales: const [
            Locale('fr'),
          ],
          path: 'assets/translations',
          fallbackLocale: const Locale('fr'),
          child: Builder(
            builder: (context) {
              return MaterialApp(
                locale: context.locale,
                supportedLocales: context.supportedLocales,
                localizationsDelegates: context.localizationDelegates,
                home: const Scaffold(
                  body: HomePage(),
                ),
              );
            },
          ),
        ),
      );

      // Waiting a second to have translations loaded
      await tester.pump(const Duration(seconds: 1));

      // Test the presence of the TitleHeader
      var titleHeader = find.byType(TitleHeader);
      expect(titleHeader, findsOneWidget);

      // Test the presence of the Texts
      var homeEmergency = find.text("L'application qui sauve des vies");
      expect(homeEmergency, findsOneWidget);
      var homeWaiting = find.textContaining(
        "Vous pouvez AGIR !",
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
      var appTitle = find.text("UDSP59\nFORMATION");
      expect(appTitle, findsOneWidget);

      // Test the presence of the about button
      var aboutButton = find.widgetWithIcon(TextButton, Icons.info_rounded);
      expect(aboutButton, findsOneWidget);

      // Test the onPressed navigation of the button
      await tester.tap(aboutButton);
      await tester.pumpAndSettle();

      expect(find.byType(AboutPage), findsOneWidget);
    });

    testWidgets(
        'ModulesCarousel has the right number of ModulesCarouselElement',
        (WidgetTester tester) async {
      // Find the widget
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ModulesCarousel(
              modules: modulesList,
            ),
          ),
        ),
      );

      // Waiting a second to have translations loaded
      await tester.pump(const Duration(seconds: 1));

      // Test the presence of the ModulesCarouselElement widgets
      var modulesCarouselElements = find.byType(ModulesCarouselElement);
      expect(modulesCarouselElements, findsNWidgets(modulesList.length));
    });

    testWidgets(
        'ModulesCarouselElement has the right title, icon and an arrow and permit to navigate to the ModulePage',
        (WidgetTester tester) async {
      // Find the widget
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ModulesCarouselElement(
              module: modulesList[0],
            ),
          ),
          routes: {
            '/module': (context) => const ModulePage(),
          },
        ),
      );

      // Waiting a second to have translations loaded
      await tester.pump(const Duration(seconds: 1));

      // Test the presence of the ModulesCarouselElement title
      var modulesCarouselElementTitle = find.text(modulesList[0].title);
      expect(modulesCarouselElementTitle, findsOneWidget);
      // Test the presence of the right icon
      var modulesCarouselElementIcon =
          find.byIcon(moduleIcons[modulesList[0].icon]!);
      expect(modulesCarouselElementIcon, findsOneWidget);
      // Test the presence of the arrow
      var modulesCarouselElementArrow = find.byIcon(Icons.arrow_forward);
      expect(modulesCarouselElementArrow, findsOneWidget);

      // Test the onPressed navigation of the ModulesCarouselElement
      await tester.tap(modulesCarouselElementArrow);
      await tester.pumpAndSettle();

      expect(find.byType(ModulePage), findsOneWidget);
      expect(find.text(modulesList[0].title), findsOneWidget);
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
      var aboutSubtitle1 = find.text("Qui sommes-nous ?");
      expect(aboutSubtitle1, findsOneWidget);
      var aboutSubtitle2 = find.text("Contactez-nous");
      expect(aboutSubtitle2, findsOneWidget);
      var aboutPart1 = find.textContaining(
        "Nous sommes l’UDSP59 FORMATION, une association qui réunit les sapeurs-pompiers diplômés en tant que formateurs de secourisme qui œuvrent chaque jour pour maintenir les compétences opérationnelles de ceux qui vous portent secours quotidiennement dans le département du Nord.",
        findRichText: true,
      );
      expect(aboutPart1, findsOneWidget);
      var aboutPart2 = find.textContaining(
        "Au-delà des valeurs qui nous animent, nous avons décidé de créer cet organisme de formation afin d’aller à la rencontre du public et de lui faire profiter de nos connaissances et de notre expérience. Nous pensons qu’il est primordial que tous les citoyens soient formés aux gestes et comportements qui sauvent car ce sont eux qui constituent le premier maillon de la chaîne de secours.",
        findRichText: true,
      );
      expect(aboutPart2, findsOneWidget);
      var aboutPart3 = find.textContaining(
        "En effet, c’est souvent dans les premiers instants d’une situation d’urgence que des vies peuvent être sauvées, ce qui explique notre engagement à propager nos enseignements de la manière la plus large possible.",
        findRichText: true,
      );
      expect(aboutPart3, findsOneWidget);

      // Test the presence of the Linked Icons
      var linkedIcons = find.byType(UrlLinkedIcon);
      expect(linkedIcons, findsNWidgets(4));
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
      var aboutTitle = find.text("L'association");
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
