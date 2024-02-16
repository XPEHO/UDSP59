import 'dart:math';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:udsp59/state/providers/firebase_providers.dart';
import 'package:udsp59/state/providers/local_providers.dart';

part 'tips_providers.g.dart';

@riverpod
Future<List<String>> tips(TipsRef ref) async {
  try {
    // Get the last time the tips were read
    final lastTipsReadPromise = ref.watch(lastTipsReadProvider);
    final lastTipsRead =
        lastTipsReadPromise.asData?.value ?? DateTime(0).toUtc().toString();

    // If we don't have a last read date
    if (lastTipsRead == '') {
      // Get the tips from firebase storage
      final firebaseTips = await ref.read(firebaseTipsProvider.future);
      return firebaseTips;
    } else if (lastTipsRead == DateTime(0).toUtc().toString()) {
      // If we don't have got the last read date
      return [];
    } else {
      // If we have a last read date
      DateTime lastRead = DateTime.parse(lastTipsRead);
      // If the last read was less than 7 days ago
      if (DateTime.now().difference(lastRead).inDays < 7) {
        // Get the tips from local storage
        final localTips = await ref.read(localTipsProvider.future);
        return localTips;
      } else {
        // Get the tips from firebase storage
        final firebaseTips = await ref.read(firebaseTipsProvider.future);
        return firebaseTips;
      }
    }
  } catch (e) {
    debugPrint('Error: $e');
    return [];
  }
}

@riverpod
String randomTip(RandomTipRef ref) {
  return ref.watch(tipsProvider).when(
        data: (List<String> tips) {
          if (tips.isEmpty) {
            return 'Aucune astuce pour le moment.';
          }
          return tips[Random().nextInt(tips.length)];
        },
        loading: () => 'Chargement...',
        error: (error, stack) {
          debugPrint('Error: $error');
          return 'Problème lors du chargement des astuces.';
        },
      );
}
