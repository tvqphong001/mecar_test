import 'package:flutter/material.dart';
import 'package:inter_view_mecar/utils/helpers/sreen_helper.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({required this.body,Key? key, this.statusBar = true}) : super(key: key);
  final Widget body;
  final bool statusBar;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            if(!statusBar) SizedBox(height: Screen.statusBar,),
            Expanded(child: body),
            SizedBox(height: Screen.bottomBar,),
          ],
        ),
      );
}
