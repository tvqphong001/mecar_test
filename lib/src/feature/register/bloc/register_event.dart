part of 'register_bloc.dart';

abstract class RegisterEvent{
  const RegisterEvent();
}

class SubmitEvent extends RegisterEvent{

}

class UsernameChange extends RegisterEvent{
  UsernameChange(this.userName);

  final String userName;
}

class PasswordChange extends RegisterEvent{
  PasswordChange(this.password);

  final String password;
}

class ConfirmPasswordChange extends RegisterEvent{
  ConfirmPasswordChange(this.confirmPassword);

  final String confirmPassword;
}

