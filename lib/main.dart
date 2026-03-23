import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'app/app.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // change to false in production
      builder: (context) => const LifeOSApp(),
    ),
  );
}