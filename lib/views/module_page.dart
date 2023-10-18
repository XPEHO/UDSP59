//import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/features/page_header.dart';

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
      appBar: PageHeader(pageTitle: module.title),
      body: Container(),
    );
  }
}
