import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:udsp59/entities/module.dart';

part 'firebase_providers.g.dart';

@riverpod
Future<List<Module>> firebaseModules(FirebaseModulesRef ref) async {
  try {
    // Get the modules from Firestore
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('modules').get();
    List<Module> modules = [];
    for (var doc in querySnapshot.docs) {
      modules.add(Module.fromJson(doc.data() as Map<String, dynamic>));
    }
    // Sort the modules list by the order property
    modules.sort((a, b) => a.order.compareTo(b.order));

    // Save the modules list to local storage
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> localModules = [];
    for (var module in modules) {
      localModules.add(jsonEncode(module));
    }
    prefs.setStringList('modules', localModules);

    // Save the last time the modules were read
    prefs.setString('lastModulesRead', DateTime.now().toUtc().toString());

    return modules;
  } catch (e) {
    debugPrint('Error: $e');
    return [];
  }
}

@riverpod
Future<List<String>> firebaseTips(FirebaseTipsRef ref) async {
  try {
    // Get the tips from Firestore
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('tips').get();
    List<String> tips = [];
    for (var doc in querySnapshot.docs) {
      for (var tip in doc['content']) {
        tips.add(tip);
      }
    }

    // Save the tips list to local storage
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('tips', tips);

    // Save the last time the tips were read
    prefs.setString('lastTipsRead', DateTime.now().toUtc().toString());

    return tips;
  } catch (e) {
    debugPrint('Error: $e');
    return [];
  }
}
