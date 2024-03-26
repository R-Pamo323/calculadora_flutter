import 'package:app_calculadora/Constants/app_colors.dart';
import 'package:app_calculadora/Routes/app_pages.dart';
import 'package:app_calculadora/utils/views_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora',
      getPages: AppPages.pages,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: MyColors.colorBackground),
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}
