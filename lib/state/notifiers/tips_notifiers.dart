import 'dart:convert';
import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TipsNotifier extends StateNotifier<String> {
  TipsNotifier() : super(tr('defaultTips'));
  List<String> tips = [];
  int stateIndex = 0;

  Future<void> init() async {
    // Get tips from JSON file
    String jsonTips = await rootBundle.loadString("tips.json");
    List<dynamic> jsonTipsList = await jsonDecode(jsonTips);
    List<String> tipsList = [];
    for (var jsonElt in jsonTipsList) {
      tipsList.add(jsonElt);
    }
    tips = tipsList;

    // Set the state
    if (tips.isNotEmpty) {
      stateIndex = Random().nextInt(tips.length);
      state = tips[stateIndex];
    } else {
      state = tr('defaultTips');
    }
    debugPrint('state: $state');
  }

  String getCurrent() {
    return state;
  }

  String getNext() {
    if (tips.length > 2) {
      return tips[stateIndex == tips.length - 1 ? 0 : stateIndex + 1];
    } else if (tips.isNotEmpty) {
      return tips[stateIndex];
    } else {
      return tr('defaultTips');
    }
  }

  void goNext() {
    if (tips.isNotEmpty) {
      stateIndex = stateIndex == tips.length - 1 ? 0 : stateIndex + 1;
      state = tips[stateIndex];
    } else {
      state = tr('defaultTips');
    }
    debugPrint('state: $state');
  }
}
