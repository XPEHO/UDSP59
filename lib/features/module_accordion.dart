import 'package:flutter/material.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/features/module_accordion_element.dart';

class ModuleAccordion extends StatelessWidget {
  final Module module;

  const ModuleAccordion({
    super.key,
    required this.module,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: module.content.length,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return ModuleAccordionElement(
            modulePart: module.content[index],
            index: index,
          );
        },
        /*children: module.content
            .map((modulePart) => ModuleAccordionElement(modulePart: modulePart))
            .toList(),*/
      ),
    );
  }
}
