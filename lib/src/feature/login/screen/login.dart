import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inter_view_mecar/base/base.dart';
import 'package:inter_view_mecar/src/feature/login/bloc/login_bloc.dart';
import 'package:inter_view_mecar/src/feature/login/bloc/login_state.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  void _navigateWhenLoginSuccess() {
    Get.offNamedUntil(Routes.splash, (route) => false);
  }

  @override
  Widget build(BuildContext context) => MyScaffold(
        statusBar: false,
        body: BlocProvider(
          create: (BuildContext context) =>
              LoginBloc(loginRepository: Get.find()),
          child: SingleChildScrollView(
            child: SizedBox(
              width: Screen.widthScreen,
              child: Column(
                children: [
                  const Align(
                      alignment: Alignment.centerLeft, child: MyBackButton()),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 700),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          KeyLang.login.tr,
                          style: textTheme(context).subtitle1,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        MyTextField(
                          hint: 'Username',
                          onChange: (userName) => context
                              .read<LoginBloc>()
                              .add(UsernameChange(userName)),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        MyTextField(
                          isPassword: true,
                          hint: 'Password',
                          onChange: (password) => context
                              .read<LoginBloc>()
                              .add(PasswordChange(password)),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        BlocConsumer<LoginBloc, LoginState>(
                          listener: (context, state) {
                            if (state.status == ApiStatus.processing) {
                              _navigateWhenLoginSuccess();
                            }
                          },
                          builder: (context, state) =>
                              (state.status == ApiStatus.processing)
                                  ? const CircularProgressIndicator()
                                  : ButtonApp(
                                      onTap: () {
                                        context
                                            .read<LoginBloc>()
                                            .add(SubmitEvent());
                                      },
                                      text: KeyLang.login.tr.toUpperCase(),
                                    ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
