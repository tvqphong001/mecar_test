import 'package:get/get.dart';

class KeyLang{
  const KeyLang._();

  static const login ="login";
  static const register ="register";

}

class Language extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'vi_VN': {
      KeyLang.login : 'Đăng nhập',
      KeyLang.register : 'Đăng ký'
    },
    'en_US': {
      KeyLang.login : 'Login',
      KeyLang.register : 'Register'
    },

  };
}