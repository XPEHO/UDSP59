import 'package:flutter/material.dart';
import 'package:udsp59/features/module_list_element_widget.dart';
import 'package:udsp59/views/home_page.dart';

class ModuleListWidget extends StatelessWidget {
  const ModuleListWidget({super.key});

  // This widget return a list of ModuleListElementWidget scrollable horizontally
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: modules
            .map((module) => ModuleListElementWidget(module: module))
            .toList(),
      ),
    );
  }
}
