import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:udsp59/entities/module.dart';

part 'modules_providers.g.dart';

@riverpod
Future<List<Module>> modules(ModulesRef ref) async {
  try {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('modules').get();
    List<Module> modules = [];
    for (var doc in querySnapshot.docs) {
      modules.add(Module.fromJson(doc.data() as Map<String, dynamic>));
    }
    // Sort the modules list by the order property
    modules.sort((a, b) => a.order.compareTo(b.order));

    return modules;
  } catch (e) {
    debugPrint('Error: $e');
    return [];
  }
}
