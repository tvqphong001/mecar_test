
 import 'package:inter_view_mecar/base/base_enum.dart';

class LoginState{
  const LoginState({this.username, this.password,this.status});

  final ApiStatus? status;
  final String? username;
  final String? password;


  LoginState copyWith({
    ApiStatus? status,
    String? username,
    String? password,

  }) => LoginState(
    username: username ?? this.username,
    password: password ?? this.password,
    status : status?? this.status
  );
}
