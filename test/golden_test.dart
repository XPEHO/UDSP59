import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/entities/module_part.dart';
import 'package:udsp59/features/module_accordion_element.dart';
import 'package:udsp59/features/modules_carousel_element.dart';
import 'package:udsp59/features/page_header.dart';
import 'package:udsp59/features/tips_card.dart';
import 'package:udsp59/features/title_header.dart';
import 'package:udsp59/features/url_linked_icon.dart';

void main() {
  testGoldens('ModuleAccordionElement should look correct', (tester) async {
    final builder = GoldenBuilder.grid(
      columns: 2,
      widthToHeightRatio: 0.5,
      bgColor: const Color(0xFFECF0F8),
    )
      ..addScenario(
        'Closed',
        const ModuleAccordionElement(
          modulePart: ModulePart(
              subtitle: "Title",
              order: 1,
              image: "",
              description: "Subtitle 1\nSubtitle 2"),
          index: 0,
        ),
      )
      ..addScenario(
        'Open',
        const ModuleAccordionElement(
          modulePart: ModulePart(
              subtitle: "Title",
              order: 1,
              image: "",
              description: "Subtitle 1\nSubtitle 2"),
          index: 0,
          isOpen: true,
        ),
      );
    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(400, 150),
    );
    await screenMatchesGolden(
      tester,
      'module_accordion_element_grid',
    );
  });

  testGoldens('ModulesCarouselElement should look correct', (tester) async {
    final builder = GoldenBuilder.grid(
      columns: 1,
      widthToHeightRatio: 1,
      bgColor: const Color(0xFFECF0F8),
    )..addScenario(
        'Card',
        const ModulesCarouselElement(
          module: Module(
            title: "Protection/Alerte",
            icon: "protect",
            content: [],
          ),
        ),
      );
    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(180, 170),
    );
    await screenMatchesGolden(
      tester,
      'modules_carousel_element',
    );
  });

  testGoldens('PageHeader should look correct', (tester) async {
    final builder = GoldenBuilder.grid(
      columns: 1,
      widthToHeightRatio: 0.5,
      bgColor: const Color(0xFFECF0F8),
    )..addScenario(
        'PageHeader',
        const PageHeader(
          pageTitle: "Page Title",
        ),
      );
    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(300, 160),
    );
    await screenMatchesGolden(
      tester,
      'page_header',
    );
  });

  testGoldens('TitleHeader should look correct', (tester) async {
    final builder = GoldenBuilder.grid(
      columns: 1,
      widthToHeightRatio: 0.5,
      bgColor: const Color(0xFFECF0F8),
    )..addScenario(
        'TitleHeader',
        const TitleHeader(),
      );
    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(300, 140),
    );
    await screenMatchesGolden(
      tester,
      'title_header',
    );
  });

  testGoldens('UrlLinkedIcon should look correct', (tester) async {
    final builder = GoldenBuilder.grid(
      columns: 1,
      widthToHeightRatio: 0.5,
      bgColor: const Color(0xFFECF0F8),
    )..addScenario(
        'UrlLinkedIcon',
        const UrlLinkedIcon(
          url: '',
          size: 30,
        ));
    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(130, 90),
    );
    await screenMatchesGolden(
      tester,
      'url_linked_icon',
    );
  });

  testGoldens('TipsCardSwitcher should look correct', (tester) async {
    final builder = GoldenBuilder.grid(
      columns: 1,
      widthToHeightRatio: 0.5,
      bgColor: const Color(0xFFECF0F8),
    )..addScenario(
        'TipsCardSwitcher',
        const TipsCard(
          tips: 'Test',
        ),
      );
    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(160, 125),
    );
    await screenMatchesGolden(
      tester,
      'tips_card_switcher',
    );
  });
}
