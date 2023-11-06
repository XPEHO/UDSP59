import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udsp59/entities/module.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  List<Module> modules = [];
  List<String> tips = [];

  // Fetch modules from the json file
  Future<void> readFromJson() async {
    String jsonModules = await rootBundle.loadString("assets/modules.json");
    List<dynamic> jsonModulesList = await jsonDecode(jsonModules);
    List<Module> modulesList = [];
    for (var jsonElt in jsonModulesList) {
      modulesList.add(Module.fromJson(jsonElt));
    }

    String jsonTips = await rootBundle.loadString("tips.json");
    List<dynamic> jsonTipsList = await jsonDecode(jsonTips);
    List<String> tipsList = [];
    for (var jsonElt in jsonTipsList) {
      tipsList.add(jsonElt);
    }

    setState(() {
      modules = modulesList;
      tips = tipsList;
    });

    // If loaded, go to home page
    if (!context.mounted) return;
    debugPrint("JSON data loaded");
    Navigator.pushReplacementNamed(context, '/home',
        arguments: [modules, tips]);
  }

  @override
  void initState() {
    super.initState();
    readFromJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SizedBox(
          height: 70,
          width: 70,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.secondary),
          ),
        ),
      ),
    );
  }
}
