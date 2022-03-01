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
  static const String discover ="discover";
  static const String whatNew ="whatNew";
  static const String browseAll ="browseAll";
  static const String seeMore ="seeMore";
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
      KeyLang.confirmNotMatch : 'Xác nhận mật khẩu không khớp',
      KeyLang.discover : 'Khám phá',
      KeyLang.whatNew : 'Có gì mới hôm nay',
      KeyLang.browseAll : 'Đuyệt tất cả',
      KeyLang.seeMore : 'Xem thêm',
    },
    'en_US': {
      KeyLang.login : 'Log in',
      KeyLang.register : 'Register',
      KeyLang.username : 'Username',
      KeyLang.password : 'Password',
      KeyLang.confirmPassword : 'Confirm password',
      KeyLang.warning : 'Warning',
      KeyLang.confirmNotMatch : 'Confirm password not match',
      KeyLang.discover : 'Discover',
      KeyLang.whatNew : 'What’s new today',
      KeyLang.browseAll : 'Browse all',
      KeyLang.seeMore : 'SEE MORE',

    },

  };
}
