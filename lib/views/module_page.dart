//import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/features/module_accordion.dart';
import 'package:udsp59/features/page_header.dart';
import 'package:udsp59/styles/text_style.dart';

class ModulePage extends StatefulWidget {
  const ModulePage({super.key});

  @override
  State<ModulePage> createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {
  late Module module;

  @override
  Widget build(BuildContext context) {
    module = ModalRoute.of(context)!.settings.arguments as Module;
    debugPrint(module.title);

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageHeader(pageTitle: module.title),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                tr('moduleSubtitle'),
                style: textStylePageSubtitle(context),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ModuleAccordion(module: module),
            ),
          ],
        ),
      ),
    );
  }
}
