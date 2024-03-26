import 'package:app_calculadora/Bindings/Calculadora/calculadora_binding.dart';
import 'package:app_calculadora/Bindings/Splash/splash_binding.dart';
import 'package:app_calculadora/Routes/app_routes.dart';
import 'package:app_calculadora/Views/Calculadora/calculadora_view.dart';
import 'package:app_calculadora/Views/Splash/splash_view.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    //Nos movilizamos entre las diferntes rutas
    GetPage(
        name: AppRoutes.CALCULADORA,
        page: () => const CalculadoraView(),
        binding: CalculadoraBindings()),
    GetPage(
        name: AppRoutes.SPLASH,
        page: () => const SplashView(),
        binding: SplashBinding()),
  ];
}
