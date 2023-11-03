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
      width: MediaQuery.of(context).size.width < 1443 ? double.infinity : 1443,
      height: 135,
      child: ListView.builder(
        shrinkWrap: true,
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
