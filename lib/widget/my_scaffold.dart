import 'package:flutter/material.dart';
import 'package:inter_view_mecar/utils/helpers/sreen_helper.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({required this.body,Key? key}) : super(key: key);
  final Widget body;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            SizedBox(height: Screen.statusBar,),
            Expanded(child: body),
            SizedBox(height: Screen.bottomBar,),
          ],
        ),
      );
}
