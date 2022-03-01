import 'package:get/get.dart';
import 'package:inter_view_mecar/src/feature/home/screen/home.dart';
import 'package:inter_view_mecar/src/feature/login/screen/login.dart';
import 'package:inter_view_mecar/src/feature/register/screen/register.dart';
import 'package:inter_view_mecar/src/feature/splash/splash.dart';

class Routes {
  const Routes._();

  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
}

class AppPages {
  const AppPages._();
  static final pages = [
    GetPage(name: Routes.splash, page: () => const Splash()),
    GetPage(name: Routes.login, page: () => const Login()),
    GetPage(name: Routes.register, page: () => const Register()),
    GetPage(name: Routes.home, page: () => const Home()),
  ];
}
