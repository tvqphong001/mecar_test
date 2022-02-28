import 'package:get/get.dart';

class KeyLang{
  const KeyLang._();

  static const String login ="login";
  static const String register ="register";
}

class Language extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'vi_VN': {
      KeyLang.login : 'ĐĂNG NHẬP',
      KeyLang.register : 'ĐĂNG KÝ'
    },
    'en_US': {
      KeyLang.login : 'LOGIN',
      KeyLang.register : 'REGISTER'
    },

  };
}