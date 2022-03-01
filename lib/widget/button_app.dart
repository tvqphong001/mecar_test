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
            : Theme.of(context).cardColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Theme.of(context).cardColor, width: 2),
          borderRadius: BorderRadius.circular(6),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: context.textTheme.button!.copyWith(
              color: fillButton
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).cardColor),
        ),
      );
}

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      this.onPressed,
      this.onLongPress,
      this.noAnim = false,
      required this.child,
      this.minWidth = 10,
      this.height,
      this.textToolTip})
      : super(key: key);

  const Button.noAnim(
      {Key? key,
      this.onPressed,
      this.onLongPress,
      this.noAnim = true,
      required this.child,
      this.minWidth = 10,
      this.height,
      this.textToolTip})
      : super(key: key);

  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final bool noAnim;
  final Widget child;
  final double minWidth;
  final double? height;
  final String? textToolTip;

  @override
  Widget build(BuildContext context) => MaterialButton(
      minWidth: minWidth,
      height: height,
      onPressed: () {
        onPressed?.call();
      },
      onLongPress: () {
        onLongPress?.call();
      },
      padding: EdgeInsets.zero,
      splashColor: noAnim ? Colors.transparent : null,
      highlightColor: noAnim ? Colors.transparent : null,
      child: textToolTip != null
          ? Tooltip(
              message: textToolTip,
              child: child,
            )
          : child,
    );
}
