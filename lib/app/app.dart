import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import '../features/auth/presentation/screens/login_screen.dart';

class LifeOSApp extends StatelessWidget {
  const LifeOSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      title: 'LifeOS',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),

      home: const LoginScreen(),
    );
  }
}