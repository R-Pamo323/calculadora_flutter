import 'package:app_calculadora/Constants/app_colors.dart';
import 'package:app_calculadora/Constants/app_styles.dart';
import 'package:app_calculadora/utils/controllers_utils.dart';
import 'package:app_calculadora/utils/views_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculadoraView extends StatelessWidget {
  const CalculadoraView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalculadoraController>(
        init: CalculadoraController(),
        builder: (_) => Scaffold(
              backgroundColor: MyColors.colorBackground,
              body: Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: const Alignment(1.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Text(_.history, style: MyStyles.textHistory),
                      ),
                    ),
                    Container(
                      alignment: const Alignment(1.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: (Text(_.expression,
                            style: MyStyles.textExpression)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton(
                          bgColor: MyColors.colorAC,
                          callback: _.allClear,
                          text: "AC",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorC,
                          callback: _.clear,
                          text: "C",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "%",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "/",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "7",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "8",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "9",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "*",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "4",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "5",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "6",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "-",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "1",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "2",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "3",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "+",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: ".",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "0",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.numTap,
                          text: "#",
                        ),
                        CalcButton(
                          bgColor: MyColors.colorButtons,
                          callback: _.evaluate,
                          text: "=",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}
