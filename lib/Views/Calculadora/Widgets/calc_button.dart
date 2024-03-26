import 'package:app_calculadora/Controllers/Calculadora/calculadora_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final Function callback;
  final int bgColor;
  final String text;
  final double textSize;
  const CalcButton(
      {super.key,
      required this.callback,
      required this.text,
      this.textSize = 28,
      this.bgColor = 0x89000000});

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
                      backgroundColor: Color(bgColor),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(16),
                      textStyle: const TextStyle(fontSize: 28)),
                  child: Text(
                    text,
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(fontSize: textSize)),
                  ),
                ),
              ),
            ));
  }
}
