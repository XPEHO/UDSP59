import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/entities/module_part.dart';
import 'package:udsp59/entities/module_part_element.dart';
import 'package:udsp59/features/module_accordion_part.dart';
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
        const ModuleAccordionPart(
          modulePart: ModulePart(
            subtitle: "Title",
            image: "",
            elements: [
              ModulePartElement(
                text: "Subtitle 1",
                image: "",
              ),
              ModulePartElement(
                text: "Subtitle 2",
                image: "",
              ),
            ],
          ),
          index: 0,
        ),
      )
      ..addScenario(
        'Open',
        const ModuleAccordionPart(
          modulePart: ModulePart(subtitle: "Title", image: "", elements: [
            ModulePartElement(
              text: "Subtitle 1",
              image: "",
            ),
            ModulePartElement(
              text: "Subtitle 2",
              image: "",
            ),
          ]),
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
            icon: "health_and_safety",
            image: "",
            order: 1,
            parts: [],
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
