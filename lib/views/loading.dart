import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udsp59/entities/module.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  List<Module> modules = [];

  // Fetch modules from the json file
  Future<void> getModulesFromJson() async {
    String json = await rootBundle.loadString("assets/modules.json");
    List<dynamic> jsonList = await jsonDecode(json);
    List<Module> modulesList = [];
    for (var jsonElt in jsonList) {
      modulesList.add(Module.fromJson(jsonElt));
    }

    setState(() {
      modules = modulesList;
    });

    // If loaded, go to home page
    if (!context.mounted) return;
    debugPrint("Modules loaded");
    Navigator.pushReplacementNamed(context, '/home', arguments: modules);
  }

  @override
  void initState() {
    super.initState();
    getModulesFromJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SpinKitSpinningLines(
          color: Theme.of(context).colorScheme.secondary,
          size: 200.0,
        ),
      ),
    );
  }
}
