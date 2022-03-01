import 'package:inter_view_mecar/base/base.dart';
import 'package:inter_view_mecar/widget/info_user.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MyScaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                background,
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: Image.asset(
                logo,
                width: Screen.widthScreen / 2,
              ),
            ),
            Positioned(
              bottom: 14,
              width: Screen.widthScreen,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    // ignore: prefer_const_constructors
                    InfoUser(
                      avatar: avatar1,
                      at: '@pawel_czerwinski',
                      name: 'Pawel Czerwinski',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ButtonApp(
                            fillButton: false,
                            onTap: () {
                              Get.toNamed(Routes.login);
                            },
                            text: KeyLang.login.tr.toUpperCase(),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: ButtonApp(
                            onTap: () {},
                            text: KeyLang.register.tr.toUpperCase(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
}
