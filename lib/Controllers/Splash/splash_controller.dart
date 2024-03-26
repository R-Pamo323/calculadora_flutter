import 'package:app_calculadora/Routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 1), () {
      Get.offNamed(AppRoutes.CALCULADORA);
    });
    super.onReady();
  }
}
