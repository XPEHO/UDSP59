import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Notifiers

final tipListProvider = FutureProvider<List<String>>(
  (ref) async {
    String jsonTips = await rootBundle.loadString("tips.json");
    List<dynamic> jsonTipsList = await jsonDecode(jsonTips);
    List<String> tipsList = [];
    for (var jsonElt in jsonTipsList) {
      tipsList.add(jsonElt);
    }
    return tipsList;
  },
);

final nextTipProvider = Provider<String>(
  (ref) {
    final tips = ref.watch(tipListProvider);
    return tips.when(
      data: (tipsList) {
        return tipsList[Random().nextInt(tipsList.length)];
      },
      loading: () => 'loading...',
      error: (_, __) => 'Error loading tips',
    );
  },
);
