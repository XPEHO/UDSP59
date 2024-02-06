import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udsp59/entities/module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:udsp59/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Loading extends ConsumerStatefulWidget {
  const Loading({super.key});

  @override
  ConsumerState<Loading> createState() => _LoadingState();
}

class _LoadingState extends ConsumerState<Loading> {
  List<Module> modules = [];
  List<String> tips = [];

  // Firebase Initialization
  Future<void> initializeFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await FirebaseAuth.instance.signInAnonymously();
  }

  // Fetch modules from the json file
  Future<void> readFromJson() async {
    String jsonModules = await rootBundle.loadString("assets/modules.json");
    List<dynamic> jsonModulesList = await jsonDecode(jsonModules);
    List<Module> modulesList = [];
    for (var jsonElt in jsonModulesList) {
      modulesList.add(Module.fromJson(jsonElt));
    }

    setState(() {
      modules = modulesList;
    });

    // If loaded, go to home page
    if (!context.mounted) return;
    debugPrint("JSON data loaded");
    Navigator.pushReplacementNamed(context, '/home', arguments: modules);
  }

  // Load data for the app
  Future<void> loadData() async {
    await initializeFirebase();
    await readFromJson();
  }

  @override
  void initState() {
    super.initState();
    loadData();
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
