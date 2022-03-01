import 'package:inter_view_mecar/base/base.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
      children: [
        const SizedBox(height: 10,),
        SizedBox(
          height: 50,
          width: 50,
          child: MaterialButton(
            padding: const EdgeInsets.all(16),
            onPressed: Get.back,
            child: Image.asset(
              back,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ),
        const SizedBox(height: 30,),
      ],
    );
}
