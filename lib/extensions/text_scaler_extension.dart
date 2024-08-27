import 'package:flutter/material.dart';

extension TextScalerExtension on TextScaler {
  /// Will be migrated once the property is removed from the Flutter SDK.
  // ignore: deprecated_member_use
  double get proxyFactor => textScaleFactor;
}
