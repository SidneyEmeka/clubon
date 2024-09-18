
import 'package:clubon/onboarding/splashscreen.dart';
import 'package:clubon/utils/styles/stylings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'getxserver/businesslogic.dart';

void main() {
  Get.put(Businness());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            contentPadding: const EdgeInsets.only(left: 20),
          hintStyle: Stylings.body.copyWith(color: Colors.black54)
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Stylings.orange),
        useMaterial3: true,
      ),
      home: const Splashscreen(),
    );
  }
}

