import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urino/src/theme_manager.dart';
import 'package:urino/view/screens/splash.dart';
import 'config/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.lightTheme,
      home: SplashScreen(),
    );
  }
}

