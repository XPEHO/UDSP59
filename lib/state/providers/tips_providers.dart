import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udsp59/state/notifiers/tips_notifiers.dart';

// Notifiers

final tipsNotifierProvider = StateNotifierProvider<TipsNotifier, String>(
  (ref) => TipsNotifier(),
);
