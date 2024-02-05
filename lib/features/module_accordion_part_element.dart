import 'package:flutter/material.dart';
import 'package:udsp59/entities/module_part_element.dart';
import 'package:udsp59/styles/text_style.dart';

class ModuleAccordionPartElement extends StatelessWidget {
  final ModulePartElement element;

  const ModuleAccordionPartElement({
    super.key,
    required this.element,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '· ${element.text}',
          style: textStyleModuleSubContent(context),
          textAlign: TextAlign.start,
        )
      ],
    );
  }
}
