import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculadoraController extends GetxController {
  String _history = "";
  String get history => _history;
  String _expression = "";
  String get expression => _expression;

  @override
  void onInit() {
    super.onInit();
  }

  void allClear() {
    _history = "";
    _expression = "";
    update();
  }

  void clear() {
    _expression = "";
    update();
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    _history = _expression;
    _expression = exp.evaluate(EvaluationType.REAL, cm).toString();

    update();
  }

  void numTap(String text) {
    _expression += text;

    update();
  }
}
