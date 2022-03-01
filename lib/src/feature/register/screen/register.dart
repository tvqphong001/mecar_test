import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inter_view_mecar/base/base.dart';
import 'package:inter_view_mecar/src/feature/register/bloc/register_bloc.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  void _navigateWhenRegisterSuccess() {
    Get.offNamedUntil(Routes.home, (route) => false);
  }

  @override
  Widget build(BuildContext context) => MyScaffold(
        statusBar: false,
        body: BlocProvider(
          create: (BuildContext context) =>
              RegisterBloc(registerRepository: Get.find()),
          child: BlocConsumer<RegisterBloc, RegisterState>(
            listener: (context, state) {
              if (state.status == RegisterStatus.success) {
                _navigateWhenRegisterSuccess();
              } else if (state.status == RegisterStatus.notMatch) {
                Get.showSnackbar(GetSnackBar(
                  title: KeyLang.warning.tr,
                  message:KeyLang.confirmNotMatch.tr,
                ));
              }
            },
            builder: (context, state) => SingleChildScrollView(
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
                            KeyLang.register.tr,
                            style: textTheme(context).subtitle1,
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          MyTextField(
                            hint: KeyLang.username.tr,
                            onChange: (userName) => context
                                .read<RegisterBloc>()
                                .add(UsernameChange(userName)),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          MyTextField(
                            isPassword: true,
                            hint: KeyLang.password.tr,
                            onChange: (password) => context
                                .read<RegisterBloc>()
                                .add(PasswordChange(password)),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          MyTextField(
                            isPassword: true,
                            hint: KeyLang.confirmPassword.tr,
                            onChange: (password) => context
                                .read<RegisterBloc>()
                                .add(ConfirmPasswordChange(password)),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          if (state.status == RegisterStatus.processing)
                            const Center(
                              child: CircularProgressIndicator(),
                            )
                          else
                            ButtonApp(
                              onTap: () {
                                context.read<RegisterBloc>().add(SubmitEvent());
                              },
                              text: KeyLang.register.tr.toUpperCase(),
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
