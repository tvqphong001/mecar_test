part of 'login_bloc.dart';

abstract class LoginEvent{}

class SubmitEvent extends LoginEvent{

}

class UsernameChange extends LoginEvent{
  UsernameChange(this.userName);

  final String userName;
}

class PasswordChange extends LoginEvent{
  PasswordChange(this.password);

  final String password;
}
