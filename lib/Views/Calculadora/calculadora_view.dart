import 'package:app_calculadora/Controllers/Calculadora/calculadora_controller.dart';
import 'package:app_calculadora/Views/Calculadora/Widgets/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalculadoraController>(
        init: CalculadoraController(),
        builder: (_) => Scaffold(
              backgroundColor: Colors.deepPurple,
              body: Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: const Alignment(1.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Text(_.history,
                            style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                    fontSize: 24, color: Colors.white))),
                      ),
                    ),
                    Container(
                      alignment: const Alignment(1.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: (Text(
                          _.expression,
                          style: GoogleFonts.rubik(
                              textStyle: const TextStyle(
                                  fontSize: 24, color: Colors.white)),
                        )),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton(
                          bgColor: 0xFF00BF45,
                          callback: _.allClear,
                          text: "AC",
                          textSize: 20,
                        ),
                        CalcButton(
                          bgColor: 0xFFE3303A,
                          callback: _.clear,
                          text: "C",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.numTap,
                          text: "%",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.numTap,
                          text: "/",
                          textSize: 20,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton(
                          callback: _.numTap,
                          text: "7",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.numTap,
                          text: "8",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.numTap,
                          text: "9",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.numTap,
                          text: "*",
                          textSize: 20,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton(
                          callback: _.numTap,
                          text: "4",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.numTap,
                          text: "5",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.numTap,
                          text: "6",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.numTap,
                          text: "-",
                          textSize: 20,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton(
                          callback: _.numTap,
                          text: "1",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.numTap,
                          text: "2",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.numTap,
                          text: "3",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.numTap,
                          text: "+",
                          textSize: 20,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton(
                          callback: _.numTap,
                          text: ".",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.numTap,
                          text: "0",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.numTap,
                          text: "#",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: _.evaluate,
                          text: "=",
                          textSize: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}
