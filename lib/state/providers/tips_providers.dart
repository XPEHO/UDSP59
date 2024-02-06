import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tips_providers.g.dart';

@riverpod
Future<List<String>> tips(TipsRef ref) async {
  try {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('tips').get();
    List<String> tips = [];
    for (var doc in querySnapshot.docs) {
      for (var tip in doc['content']) {
        tips.add(tip);
      }
    }
    return tips;
  } catch (e) {
    debugPrint('Error: $e');
    return [];
  }
}

@riverpod
String randomTip(RandomTipRef ref) {
  return ref.watch(tipsProvider).when(
        data: (List<String> tips) {
          return tips[Random().nextInt(tips.length)];
        },
        loading: () => 'Chargement...',
        error: (error, stack) {
          debugPrint('Error: $error');
          return '';
        },
      );
}
