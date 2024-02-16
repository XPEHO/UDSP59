import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:udsp59/entities/module.dart';

part 'local_providers.g.dart';

@riverpod
Future<List<Module>> localModules(LocalModulesRef ref) async {
  try {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String>? localModules = prefs.getStringList('modules');
    List<Module> modules = [];
    for (var module in localModules ?? []) {
      modules.add(Module.fromJson(jsonDecode(module) as Map<String, dynamic>));
    }
    // Sort the modules list by the order property
    modules.sort((a, b) => a.order.compareTo(b.order));

    return modules;
  } catch (e) {
    debugPrint('Error: $e');
    return [];
  }
}

@riverpod
Future<List<String>> localTips(LocalTipsRef ref) async {
  try {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String>? localTips = prefs.getStringList('tips');
    return localTips ?? [];
  } catch (e) {
    debugPrint('Error: $e');
    return [];
  }
}

@riverpod
Future<String> lastModulesRead(LastModulesReadRef ref) async {
  try {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? lastModulesRead = prefs.getString('lastModulesRead');
    return lastModulesRead ?? '';
  } catch (e) {
    debugPrint('Error: $e');
    return '';
  }
}

@riverpod
Future<String> lastTipsRead(LastTipsReadRef ref) async {
  try {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? lastTipsRead = prefs.getString('lastTipsRead');
    return lastTipsRead ?? '';
  } catch (e) {
    debugPrint('Error: $e');
    return '';
  }
}
