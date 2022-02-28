import 'package:inter_view_mecar/base/base.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({
    Key? key,
    required this.onTap,
    required this.text,
    this.fillButton = true,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final bool fillButton;

  @override
  Widget build(BuildContext context) => MaterialButton(
        height: 52,
        minWidth: double.infinity,
        color: !fillButton
            ? Theme.of(context).primaryColor
            : Theme.of(context).highlightColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Theme.of(context).highlightColor, width: 2),
          borderRadius: BorderRadius.circular(6),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: textTheme.button!.copyWith(
              color: fillButton
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).highlightColor),
        ),
      );
}
