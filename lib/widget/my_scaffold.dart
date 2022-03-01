import 'package:inter_view_mecar/base/base.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold(
      {required this.body,
      Key? key,
      this.statusBar = true,
      this.bottomBar = false})
      : super(key: key);
  final Widget body;
  final bool statusBar;
  final bool bottomBar;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            if (!statusBar)
              SizedBox(
                height: Screen.statusBar,
              ),
            Expanded(child: body),
            SizedBox(
              height: Screen.bottomBar,
            ),
          ],
        ),
        bottomNavigationBar: bottomBar
            ? SizedBox(
                height: 64,
                child: Column(
                  children: const [
                    Divider(
                      height: 2,
                      color: Color(0xffB3B3B3),
                    ),
                    Expanded(
                      child: _NavBottomBar(),
                    ),
                  ],
                ),
              )
            : null,
      );
}

class _NavBottomBar extends StatefulWidget {
  const _NavBottomBar({Key? key}) : super(key: key);

  @override
  _NavBottomBarState createState() => _NavBottomBarState();
}

class _NavBottomBarState extends State<_NavBottomBar> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) => Row(
        children: [iconHome, iconSearch, iconPlus, iconChat, iconPerson]
            .asMap()
            .map((index, e) => MapEntry(
                index,
                _BottomBarItem(
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  isSelect: _currentIndex == index,
                  pathIcon: e,
                )))
            .values
            .toList(),
      );
}

class _BottomBarItem extends StatelessWidget {
  const _BottomBarItem({
    Key? key,
    required this.isSelect,
    required this.onTap,
    required this.pathIcon,
  }) : super(key: key);

  final bool isSelect;
  final Function() onTap;
  final String pathIcon;

  @override
  Widget build(BuildContext context) => Expanded(
          child: Button(
        onPressed: onTap,
        noAnim: true,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              gradient: isSelect
                  ? const LinearGradient(
                      begin: Alignment(-0.3, 1),
                      end: Alignment(0.3, -1),
                      colors: [
                          Color(0xffFF4D00),
                          Color(0xffFF00D6),
                        ])
                  : null),
          alignment: Alignment.center,
          child: Image.asset(
            pathIcon,
            color: !isSelect
                ? context.theme.cardColor
                : context.theme.primaryColor,
          ),
        ),
      ));
}
