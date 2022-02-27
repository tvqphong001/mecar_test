import 'package:flutter/material.dart';
import 'package:inter_view_mecar/constants/assets_path.dart';
import 'package:inter_view_mecar/widget/my_scaffold.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MyScaffold(
    body: Stack(
      children: [
        Image.asset(background,fit: BoxFit.fill,),

        // Positioned(child: Column(
        //   children: const [
        //
        //   ],
        // ),bottom: 14,)
      ],
    ),
  );
}
