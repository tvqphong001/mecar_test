import 'package:get/get.dart';
import 'package:inter_view_mecar/src/feature/login/screen/login.dart';
import 'package:inter_view_mecar/src/feature/splash/splash.dart';

class Routes {
  const Routes._();

  static const String splash = '/splash';
  static const String login = '/login';
}

class AppPages {
  const AppPages._();
  static final pages = [
    GetPage(name: Routes.splash, page: () => const Splash()),
    GetPage(name: Routes.login, page: () => const Login()),
  ];
}
