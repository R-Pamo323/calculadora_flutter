import 'package:app_calculadora/Controllers/Calculadora/calculadora_controller.dart';
import 'package:app_calculadora/Views/Calculadora/Widgets/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    void allClear(String text) {}
    ;

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
                        child: Text("Historial",
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
                          "X",
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
                          callback: allClear,
                          text: "AC",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: allClear,
                          text: "C",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: allClear,
                          text: "%",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: allClear,
                          text: "/",
                          textSize: 20,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton(
                          callback: allClear,
                          text: "AC",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: allClear,
                          text: "C",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: allClear,
                          text: "%",
                          textSize: 20,
                        ),
                        CalcButton(
                          callback: allClear,
                          text: "/",
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
