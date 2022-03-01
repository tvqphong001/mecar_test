import 'dart:async';
import 'package:inter_view_mecar/base/base_enum.dart';

class LoginRepository {

  Future<ApiStatus> logIn({
    required String username,
    required String password,
  }) async {
    await Future.delayed(
      const Duration(milliseconds: 300)
    );

    return ApiStatus.success;
  }
}