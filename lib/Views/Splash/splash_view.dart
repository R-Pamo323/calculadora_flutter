import 'package:app_calculadora/Constants/app_colors.dart';
import 'package:app_calculadora/utils/controllers_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (_) => Scaffold(
        body: Stack(
          children: [
            Container(
              width: width,
              height: height,
              color: MyColors.colorBackground,
            ),
            SizedBox.expand(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/calculadora.png",
                    width: width * .45,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
