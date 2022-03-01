import 'package:inter_view_mecar/base/base.dart';

class RegisterRepository {
  Future<RegisterStatus> register(
      {required String username,
      required String password,
      required String confirmPassword}) async {

    await Future.delayed(const Duration(milliseconds: 300));

    return RegisterStatus.success;
  }
}
