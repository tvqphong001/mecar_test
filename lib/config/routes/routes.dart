import 'package:get/get.dart';
import 'package:inter_view_mecar/src/feature/splash/splash.dart';

class Routes {
  const Routes._();

  static const String splash = '/splash';
}

class AppPages {
  const AppPages._();
  static final pages = [
    GetPage(name: Routes.splash, page: () => const Splash()),
  ];
}
