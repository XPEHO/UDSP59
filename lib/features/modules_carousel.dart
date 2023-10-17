import 'package:flutter/material.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/features/modules_carousel_element.dart';

class ModulesCarousel extends StatelessWidget {
  final List<Module> modules;

  const ModulesCarousel({
    super.key,
    required this.modules,
  });

  // This widget return a list of ModuleListElementWidget scrollable horizontally
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 135,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        scrollDirection: Axis.horizontal,
        children: modules
            .map((module) => ModulesCarouselElement(module: module))
            .toList(),
      ),
    );
  }
}
