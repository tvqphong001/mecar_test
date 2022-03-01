import 'package:inter_view_mecar/base/base.dart';
import 'package:inter_view_mecar/src/feature/login/repositories/login_repository.dart';

class InitBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(LoginRepository());
  }
}