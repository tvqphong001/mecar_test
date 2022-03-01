import 'package:get/get.dart';

class KeyLang{
  const KeyLang._();

  static const String login ="login";
  static const String register ="register";
  static const String username ="username";
  static const String password ="password";
  static const String confirmPassword ="confirmPassword";
  static const String warning ="warning";
  static const String confirmNotMatch ="confirmNotMatch";
}

class Language extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'vi_VN': {
      KeyLang.login : 'Đăng Nhập',
      KeyLang.register : 'Đăng ký',
      KeyLang.username : 'Tên đăng nhập',
      KeyLang.password : 'Mật khẩu',
      KeyLang.confirmPassword : 'Xác nhận mật khẩu',
      KeyLang.warning : 'Cảnh báo',
      KeyLang.confirmNotMatch : 'Xác nhận mật khẩu không khớp'
    },
    'en_US': {
      KeyLang.login : 'Log in',
      KeyLang.register : 'Register',
      KeyLang.username : 'Username',
      KeyLang.password : 'Password',
      KeyLang.confirmPassword : 'Confirm password',
      KeyLang.warning : 'Warning',
      KeyLang.confirmNotMatch : 'Confirm password not match'
    },

  };
}
