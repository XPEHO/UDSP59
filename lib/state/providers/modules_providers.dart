import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:udsp59/entities/module.dart';
import 'package:udsp59/state/providers/firebase_providers.dart';
import 'package:udsp59/state/providers/local_providers.dart';

part 'modules_providers.g.dart';

@riverpod
Future<List<Module>> modules(ModulesRef ref) async {
  try {
    // Get the last time the modules were read
    final lastModulesReadPromise = ref.watch(lastModulesReadProvider);
    final lastModulesRead =
        lastModulesReadPromise.asData?.value ?? DateTime(0).toUtc().toString();

    // If we don't have a last read date
    if (lastModulesRead == '') {
      // Get the modules from firebase storage
      final firebaseModules = await ref.read(firebaseModulesProvider.future);
      return firebaseModules;
    } else if (lastModulesRead == DateTime(0).toUtc().toString()) {
      // If we don't have got the last read date
      return [];
    } else {
      // If we have a last read date
      DateTime lastRead = DateTime.parse(lastModulesRead);
      // If the last read was less than 7 days ago
      if (DateTime.now().difference(lastRead).inDays < 7) {
        // Get the modules from local storage
        final localModules = await ref.read(localModulesProvider.future);
        return localModules;
      } else {
        // Get the modules from firebase storage
        final firebaseModules = await ref.read(firebaseModulesProvider.future);
        return firebaseModules;
      }
    }
  } catch (e) {
    debugPrint('Error: $e');
    return [];
  }
}
