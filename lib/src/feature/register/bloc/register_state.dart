part of 'register_bloc.dart';

class RegisterState {
  RegisterState(
      {this.username, this.password, this.confirmPassword, this.status});

  final RegisterStatus? status;
  final String? username;
  final String? password;
  final String? confirmPassword;

  RegisterState copyWith(
          {RegisterStatus? status,
          String? username,
          String? password,
          String? confirmPassword}) =>
      RegisterState(
          username: username ?? this.username,
          password: password ?? this.password,
          status: status ?? this.status,
          confirmPassword: confirmPassword ?? this.confirmPassword);
}
