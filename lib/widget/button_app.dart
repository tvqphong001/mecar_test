import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) => MaterialButton(
      onPressed: onTap,
      child: Text(text,style: Theme.of(context).textTheme.button,),
    );
}
