import 'package:flutter/material.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/features/modules_carousel_element.dart';
import 'package:udsp59/styles/form_factor.dart';

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
      width: MediaQuery.of(context).size.width < FormFactor.biggerThanTablet
          ? double.infinity
          : FormFactor.biggerThanTablet,
      height: 140,
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: modules.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ModulesCarouselElement(module: modules[index]);
        },
      ),
    );
  }
}
