import 'package:app_calculadora/Controllers/Calculadora/calculadora_controller.dart';
import 'package:get/get.dart';

class CalculadoraBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalculadoraController());
  }
}
