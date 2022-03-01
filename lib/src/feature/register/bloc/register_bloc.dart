import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inter_view_mecar/base/base_enum.dart';
import 'package:inter_view_mecar/src/feature/register/repositories/register_repository.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({required RegisterRepository registerRepository})
      : _registerRepository = registerRepository,
        super(RegisterState(username: '',confirmPassword: '',password: '')) {
    on<UsernameChange>(_usernameChange);
    on<PasswordChange>(_passwordChange);
    on<ConfirmPasswordChange>(_confirmPasswordChange);
    on<SubmitEvent>(_submitEvent);
  }

  final RegisterRepository _registerRepository;

  void _usernameChange(UsernameChange event, Emitter<RegisterState> emitter) {
    emitter(state.copyWith(username: event.userName));
  }

  void _passwordChange(PasswordChange event, Emitter<RegisterState> emitter) {
    emitter(state.copyWith(password: event.password));
  }

  void _confirmPasswordChange(
      ConfirmPasswordChange event, Emitter<RegisterState> emitter) {
    emitter(state.copyWith(confirmPassword: event.confirmPassword));
  }

  bool _checkPasswordMatch(Emitter<RegisterState> emitter){
    if(state.password!.isEmpty || state.confirmPassword!.isEmpty) {
      return false;
    }
    if(state.password != state.confirmPassword) {
      emitter(state.copyWith(status: RegisterStatus.notMatch));

      emitter(state.copyWith(status: RegisterStatus.none));
      return false;
    }
    return true;
  }

  Future<void> _submitEvent(
      SubmitEvent event, Emitter<RegisterState> emitter) async {
    if(_checkPasswordMatch(emitter)){
      emitter(state.copyWith(status: RegisterStatus.processing));

      final resp = await _registerRepository.register(
          username: state.username!,
          password: state.password!,
          confirmPassword: state.confirmPassword!);

      emitter(state.copyWith(status: resp));
    }
  }
}
