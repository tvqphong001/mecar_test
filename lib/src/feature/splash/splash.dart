import 'package:inter_view_mecar/base/base.dart';

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
                    Row(
                      children: [
                        Image.asset(
                          avatar1,
                          width: 28,
                          height: 28,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pawel Czerwinski',
                              style: textTheme.bodyText1!
                                  .copyWith(fontWeight: FontWeight.w700),
                            ),
                            Text(
                              '@pawel_czerwinski',
                              style: textTheme.caption,
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ButtonApp(
                            fillButton: false,
                            onTap: () {},
                            text: KeyLang.login.tr,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: ButtonApp(
                            onTap: () {},
                            text: KeyLang.register.tr,
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
