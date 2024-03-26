import 'package:app_calculadora/Constants/app_colors.dart';
import 'package:app_calculadora/Constants/app_styles.dart';
import 'package:app_calculadora/utils/controllers_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CalcButton extends StatelessWidget {
  final Function callback;
  Color? bgColor;
  final String text;
  CalcButton(
      {super.key, required this.callback, required this.text, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalculadoraController>(
        init: CalculadoraController(),
        builder: (_) => Container(
              margin: const EdgeInsets.all(10),
              child: SizedBox(
                width: 65,
                height: 65,
                child: TextButton(
                  onPressed: () {
                    callback(text);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: bgColor,
                    foregroundColor: MyColors.colorTexts,
                    padding: const EdgeInsets.all(16),
                  ),
                  child: Text(
                    text,
                    style: MyStyles.numBottons,
                  ),
                ),
              ),
            ));
  }
}
