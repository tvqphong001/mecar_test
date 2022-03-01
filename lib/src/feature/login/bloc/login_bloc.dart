import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inter_view_mecar/base/base_enum.dart';
import 'package:inter_view_mecar/src/feature/login/bloc/login_state.dart';
import 'package:inter_view_mecar/src/feature/login/repositories/login_repository.dart';

part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required LoginRepository loginRepository})
      : _loginRepository = loginRepository,
        super( const LoginState()) {
    on<SubmitEvent>(_onLoginEvent);
    on<UsernameChange>(_onUserNameChange);
    on<PasswordChange>(_onPasswordChange);
  }

  final LoginRepository _loginRepository;

  Future<void> _onLoginEvent(
      SubmitEvent event, Emitter<LoginState> emitter) async {
    emitter(state.copyWith(status: ApiStatus.processing));

    final resp = await _loginRepository.logIn(
        username: state.username!,
        password: state.password!);

    emitter(state.copyWith(status: resp));
  }

  void _onUserNameChange(UsernameChange event, Emitter<LoginState> emitter){
    emitter(state.copyWith(username: event.userName));
  }

  void _onPasswordChange(PasswordChange event, Emitter<LoginState> emitter){
    emitter(state.copyWith(password: event.password));
  }
}
